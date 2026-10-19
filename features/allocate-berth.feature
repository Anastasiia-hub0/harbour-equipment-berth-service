Feature: Allocate berth
  The harbour coordinator gives a berth to a recorded berth request.
  A berth must fit the vessel, be free for the whole requested time
  and not be affected by restrictions or works.
  Links: UC04 Allocate Berth, FR04, FR05, FR06, US03

  @GH01
  Scenario: Coordinator allocates a suitable free berth
    Given berth request R-201 is recorded for vessel V-12 from 10:00 to 18:00 on 5 May
    And request R-201 is confirmed
    And vessel V-12 needs shore power
    And berth B-03 fits vessel V-12 and has shore power
    And berth B-03 is free from 10:00 to 18:00 on 5 May
    When the coordinator allocates berth B-03 to request R-201
    Then berth B-03 is recorded on request R-201 for that time
    And berth B-03 is shown as allocated from 10:00 to 18:00 on 5 May

  @GH02
  Scenario: No berth is long enough for the vessel
    Given berth request R-202 is recorded for vessel V-30, which is 40 metres long
    And the longest berth in the harbour is 25 metres long
    When the coordinator looks for a suitable berth for request R-202
    Then no berth is shown as suitable
    And no berth is allocated to request R-202
    And the coordinator is told that no berth fits the length of the vessel

  @GH03
  Scenario: A berth that is taken for part of the time is not shown as free
    Given berth request R-203 is recorded for vessel V-12 from 10:00 to 18:00 on 5 May
    And berth B-03 fits vessel V-12
    And berth B-03 is allocated to another request from 15:00 to 20:00 on 5 May
    When the coordinator looks for a suitable berth for request R-203
    Then berth B-03 is not shown as free
    And the coordinator can see that berth B-03 is taken from 15:00 to 18:00

  @GH04
  Scenario: A berth closed for works is not shown as suitable
    Given berth request R-204 is recorded for vessel V-12 from 10:00 to 18:00 on 5 May
    And berth B-03 fits vessel V-12 and is free at that time
    And a harbour notice says berth B-03 is closed for works on 5 May
    When the coordinator looks for a suitable berth for request R-204
    Then berth B-03 is not shown as suitable
    And the coordinator can see the works notice for berth B-03
