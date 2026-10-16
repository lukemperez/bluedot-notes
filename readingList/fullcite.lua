-- fullcite.lua: a paragraph/list item containing only @key(s) becomes the full bibliography entry
local function is_bare_cite(blk)
  local cites, other = 0, false
  for _, el in ipairs(blk.content) do
    if el.t == 'Cite' then cites = cites + 1
    elseif el.t ~= 'Space' and el.t ~= 'SoftBreak' then other = true end
  end
  return cites > 0 and not other
end

function Pandoc(doc)
  local function render(id)
    local m = {}
    for k, v in pairs(doc.meta) do m[k] = v end
    m.nocite = pandoc.MetaInlines{ pandoc.Cite({pandoc.Str('@' .. id)},
                                   {pandoc.Citation(id, 'NormalCitation')}) }
    m['suppress-bibliography'] = false
    m['link-citations'] = false
    local out = pandoc.List()
    pandoc.utils.citeproc(pandoc.Pandoc({}, m)):walk{
      Div = function(d)
        if d.classes:includes('csl-entry') then
          out:extend(pandoc.utils.blocks_to_inlines(d.content))
        end
      end
    }
    if #out == 0 then out:insert(pandoc.Str('[missing: @' .. id .. ']')) end
    return out
  end

  local function swap(blk)
    if not is_bare_cite(blk) then return nil end
    local inl = pandoc.List()
    for _, el in ipairs(blk.content) do
      if el.t == 'Cite' then
        for _, c in ipairs(el.citations) do
          if #inl > 0 then inl:insert(pandoc.LineBreak()) end
          inl:extend(render(c.id))
        end
      end
    end
    blk.content = inl
    return blk
  end

  return doc:walk{ Para = swap, Plain = swap }
end
