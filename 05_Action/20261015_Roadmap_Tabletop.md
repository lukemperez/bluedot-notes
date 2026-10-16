# Roadmap: Building Cyber-AI Crisis Tabletop Exercises

A realistic self-study path takes about four to six months, in five overlapping phases. For someone who already runs wargames, the gaps are mostly elsewhere: the civilian exercise conventions that government participants expect, enough AI fluency to write scenarios that hold up, and the challenge of facilitating elected officials across levels of government.

## Phase 1 (weeks 1–4): Civilian exercise doctrine

Learn HSEEP first. State and local officials, especially their emergency managers, expect FEMA's Homeland Security Exercise and Evaluation Program. Using its terms (objectives tied to core capabilities, the Situation Manual, injects, hotwash, the After-Action Report/Improvement Plan) makes your exercise credible and lets it count toward their own preparedness requirements.

- **FEMA HSEEP doctrine (2020 revision).** The foundational text. Read it first.
- **FEMA EMI IS-120.c, "An Introduction to Exercises."** A free online course that covers HSEEP basics quickly. FEMA's Master Exercise Practitioner Program is the professional credential if you want one later.
- **NIST SP 800-84,** *Guide to Test, Training, and Exercise Programs for IT Plans and Capabilities.* It bridges HSEEP and cyber.
- **CISA Tabletop Exercise Packages (CTEPs).** The best ready-made models: over 100 customizable packages with objectives, scenarios, discussion questions, planning documents, and templates for invitations, slides, feedback forms and after-action reports. Take two cyber packages apart to see how they pace modules and injects for non-technical leaders.
- **[CIS/MS-ISAC white paper on generative AI for TTX development](https://www.cisecurity.org/insights/white-papers/leveraging-generative-artificial-intelligence-for-tabletop-exercise-development).** Written for state, local, tribal and territorial governments with little time, staff or money for exercise design. Note that MS-ISAC moved to fee-based membership in June 2025, so some services it mentions may no longer be free.

## Phase 2 (weeks 3–10): AI risk literacy

The goal is to separate what is documented now from what is speculative. Officials tune out scenarios that feel like science fiction, and a skeptical state CIO will catch overreach.

- **[International AI Safety Report 2026](https://internationalaisafetyreport.org/publication/international-ai-safety-report-2026).** Your anchor document, published February 2026, chaired by Yoshua Bengio, written by over 100 experts and backed by more than 30 countries and international organizations. It sorts risks into malicious use (such as facilitating cyberattacks), malfunction (such as misleading output) and systemic risk (such as labor market effects). Read the policymaker summary first, then the cyber and agents sections in full.
- **NIST AI Risk Management Framework and its Generative AI Profile (NIST AI 600-1).** Many state governments already use these for AI governance, so they give you a shared language with participants.
- **MITRE ATLAS and the OWASP Top 10 for LLM Applications.** The technical attack taxonomies. Use them to make sure every cyber inject maps to a real technique.
- **MIT AI Risk Repository and the AI Incident Database.** For grounding: real incidents make the best inject material.
- **Dan Hendrycks, *Introduction to AI Safety, Ethics, and Society*** (free online), or a **BlueDot Impact** course, for a structured overview of AI risk beyond cyber.

## Phase 3 (weeks 8–12): Study existing AI crisis exercises

Read these as a designer, not just a reader. This is where wargaming experience pays off.

- **[RAND Europe, *Insights from table-top exercises in Europe on AI safety and cyber misuse*](https://www.rand.org/pubs/research_reports/RRA5082-1.html) (July 2026).** The closest model to this project. It used RAND's "Day After" method, with 15–20 senior officials playing Cabinet members through a simulated AI-enabled cyber crisis over two turns, grounded in the 2026 International AI Safety Report. Its findings preview what your participants will likely discover: agencies had no baseline assessment of their exposure to AI-enabled attacks, so they could not triage, and relying on the developer's own account of its model's risks left government unable to judge the risk.
- **[CISA/JCDC AI Cyber Tabletop Exercise](https://cisa.gov/sites/default/files/2024-06/Joint%20Cyber%20Defense%20Collaborative%20Artificial%20Intelligence%20Cyber%20Tabletop%20Exercise.pdf) (June 2024).** CISA published the scenario document, so you can see how it was built. One path involved socially engineering an employee into downloading a malicious generative AI model. Also read the JCDC AI Cybersecurity Collaboration Playbook that came out of it.
- **[Arizona Secretary of State and Brennan Center election TTX](https://www.brennancenter.org/our-work/research-reports/how-election-officials-can-identify-prepare-and-respond-ai-threats).** The best multi-level civic precedent: participants from 14 of 15 Arizona counties, including election officials, county IT, law enforcement, emergency management, and state and federal agencies such as CISA and the National Guard. The designers made deepfake videos from the secretary of state's own X account as injects, a technique worth borrowing.
- **[Center for AI Policy emergency-response TTX](https://centeraipolicy.org/work/caip-convenes-tabletop-exercise-on-ai-threats-to-emergency-response) (January 2025).** Focused on currently available AI tools and the next 6–12 months, a good near-term framing for local officials.
- **Intelligence Rising** (a strategic AI role-play game) and ***Matrix Games for Modern Wargaming*** (Curry, Engle, Perla). Matrix-style adjudication often works better than rigid inject scripts when many civic stakeholders have overlapping authority.

## Phase 4 (weeks 10–16): Design your scenario

Build every decision around authority the people in the room actually hold. These principles matter most for multi-level government:

- **Decision points in participants' authority.** Emergency declarations, public communications, mutual aid requests, activating the National Guard or a state cyber reserve, engaging the fusion center, suspending an AI vendor contract, and deciding when to call the FBI or CISA. Decisions that belong to a federal agency or a tech company go to a white or control cell, not a player.
- **Cascades across levels of government.** The most valuable friction appears where jurisdictions meet: who declares, who pays, who speaks to the public, and who owns an AI system bought on a state contract but run by a county.
- **Every inject tied to a documented capability or incident** from your Phase 2 sources. Keep a private source annex so the facilitator can answer "that couldn't happen" with a real example.
- **A technical incident paired with an information incident.** For example, an AI-assisted intrusion into a county system plus a deepfake of an official. The deepfake is what pulls elected leaders into the decisions.
- **Plan for public records exposure.** Unlike military exercises, a government TTX and its after-action report may be subject to state public records law. Settle classification and handling with participating counsel before writing anything. CISA's Traffic Light Protocol is a common convention, and the published JCDC exercise used it.

## Phase 5 (weeks 14–24): Pilot, then scale

Scale in three steps, each a gate for the next:

1. **Internal playtest** with friendly volunteers, ideally a retired emergency manager and someone with a technical AI or cyber background.
2. **Single-jurisdiction exercise** with one city or county.
3. **Full city–county–state exercise.**

Wargaming experience will help with adjudication and timing. Expect to adjust for participants who care more about political optics and are less used to role-play.

## The postmortem writeup

Combine HSEEP's structure with the blameless postmortem's tone. HSEEP gives you a hotwash immediately after play, then an AAR/IP listing strengths, areas for improvement, and corrective actions that each have an owner and a deadline. The blameless tradition from software engineering (the "Postmortem Culture" chapter in Google's *Site Reliability Engineering* book) keeps the focus on systems, not individuals, which is what gets officials to write honestly.

Give every participant the same short prompts:

- What did you assume about who was in charge that turned out to be wrong?
- What information did you need and couldn't get?
- What would you need in place before a real incident?

Collect writeups within one to two weeks, while memories are fresh, and synthesize them into the official AAR.

## Sources

- [International AI Safety Report 2026](https://internationalaisafetyreport.org/publication/international-ai-safety-report-2026)
- [RAND Europe, Insights from table-top exercises in Europe on AI safety and cyber misuse](https://www.rand.org/pubs/research_reports/RRA5082-1.html)
- [CISA, JCDC AI Cyber Tabletop Exercise scenario document](https://cisa.gov/sites/default/files/2024-06/Joint%20Cyber%20Defense%20Collaborative%20Artificial%20Intelligence%20Cyber%20Tabletop%20Exercise.pdf)
- [WaterISAC summary of the CISA AI tabletop exercise](https://www.waterisac.org/?p=22753)
- [Brennan Center, How Election Officials Can Identify, Prepare for, and Respond to AI Threats](https://www.brennancenter.org/our-work/research-reports/how-election-officials-can-identify-prepare-and-respond-ai-threats)
- [Center for AI Policy, tabletop exercise on AI threats to emergency response](https://centeraipolicy.org/work/caip-convenes-tabletop-exercise-on-ai-threats-to-emergency-response)
- [CIS, Leveraging Generative AI for Tabletop Exercise Development](https://www.cisecurity.org/insights/white-papers/leveraging-generative-artificial-intelligence-for-tabletop-exercise-development)
