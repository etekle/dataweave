%dw 2.0
output application/json
---
[
    {
    firstName: payload2..firstName[0] ,
    "type": payload2.."type", 
phone: payload2...number joinBy ","
}
]
/* 
    EOP:
[
  {
    "firstName": "XYZ",
    "type": [
      "work"
    ],
    "phone": "111000111"
  }
]
*/
