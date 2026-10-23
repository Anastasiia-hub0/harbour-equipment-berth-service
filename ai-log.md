# AI interaction log

A representative log of how I used AI Claude in CA1. Entry 2 includes the example of AI advice that I rejected and changed.

**1. 5-10 Oct, Sections 1 to 3: translation and lab material.** I wrote my notes on the facts, problems, stakeholders and scope myself. I asked AI to explain the Session 3 lab and to translate my notes into simple English. I checked that the English kept my meaning.

**2. 11 to 17 Oct, Sections 1 and 5: stakeholder questions and unclear parts.** AI suggested stakeholder questions and pointed out unclear parts of the scenario, for example whether vessel operators use the system themselves (Q23). I compared each one with the scenario and kept only the relevant ones. AI also suggested a new assumption A08 and a wide question Q27. I rejected A08 because it made the analysis too complicated, and I made Q27 narrower, because part of it repeated Q24, Q20 and Q05.

**3. 18 Oct, Section 6: choosing the detailed use case.** We discussed which use case to write in detail. I chose UC04 Allocate Berth, because it has the most rules: berth suitability, overlapping bookings and restrictions.

**4. 21 Oct, Section 9: domain model.** AI explained options for classes, attributes, associations and multiplicities. I made the final decisions, for example keeping the provisional hold as a status of BerthRequest and rejecting two speculative associations.

**5. 22 Oct, Sections 8 to 10: consistency and gaps.** I asked AI to check that the sections are consistent. The traceability check showed that NFR03 needs who saved a record, but the model had no place for it, so I added recordedBy. The check also found a different system name on the use-case diagram and missing terms in Section 8, and I fixed them.
