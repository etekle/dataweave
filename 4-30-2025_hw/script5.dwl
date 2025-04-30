%dw 2.0
output application/json
var size = sizeOf(payload5.candidates)-1
---
{
    TopCandidateList : (payload5.candidates orderBy $.score)[(size-2) to (size)]
}
/*
 {
  "TopCandidateList": [
    {
      "firstName": "Delhi lilly",
      "rank": 84
    },
    {
      "firstName": "Chicago Subbarao",
      "rank": 96
    },
    {
      "firstName": "Boobyy",
      "rank": 99
    }
  ]
}

*/