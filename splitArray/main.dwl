%dw 2.0
output application/json
---
payload flatMap ((item, index) -> item.HeaderContNum map "HeaderContNum":$ )

/*
[
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  },
  {
    "HeaderContNum": "00501"
  }
]

*/
