# Decisions

The main analysis decisions. The full reasoning is in the report sections listed.

| No. | Decision | Why | Where |
|---|---|---|---|
| 1 | Vessel operators are offstage stakeholders, not actors. Harbour staff enter requests for them. | The scenario does not say that operators use the system. This is assumption A07 and open question Q23. | Sections 3.2, 5.3 |
| 2 | A provisional hold is a status of BerthRequest, not its own class. | A hold has no data of its own except how long it lasts, and that is not agreed (Q04). | Sections 8.3, 9.4 |
| 3 | Requirements are kept atomic, so there are 18 working FRs instead of about 8 to 12. | The brief asks for atomic requirements. Joined requirements would be harder to test. | Section 4.1 |
| 4 | EquipmentCategory and EquipmentItem are separate classes. | The category keeps the authorisation rules; each item has its own condition, location and checks, like Book and BookCopy in the lecture. | Section 9.6 |
| 5 | Who saved a record (recordedBy) is a simple value, not a Staff class. | NFR03 needs who saved it and when, but no other data about staff must be remembered. | Section 9.1 |
| 6 | Only UC04 Allocate Berth is written as a detailed use case, and the Gherkin examples come from it. | The brief asks for one detailed use case. UC04 has the most rules: suitability, overlapping bookings and restrictions. | Sections 6.3, 7 |
| 7 | There is no number-based boundary Gherkin example. | The scenario does not say if a booking that ends at 18:00 overlaps with one that starts at 18:00. GH04 is the rule example instead. | Section 7.1 |
