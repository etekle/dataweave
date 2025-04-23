%dw 2.0
output application/json
var group = payload groupBy $.message 
---

 [
     group mapObject ((value, key) -> {  
      id: value.id joinBy ", ",
      message: key,
      table: value[0].table
    
  }) ]

/*
[
  {
    "id": "594585.1, 533943.1, 594602.1, 765114.1",
    "message": "Error converting data type nvarchar to int.",
    "table": "Data"
  },
  {
    "id": "594586.1, 533944.1, 594603.1, 765115.1",
    "message": "type nvarchar to int1.",
    "table": "Data"
  }
]

*/
