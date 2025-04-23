%dw 2.0
output application/json
---
payload filter ((item, index) -> !(item.operation contains "remove"))
/*
[
  {
    "oderId": "9987456",
    "componentId": "44567889",
    "operation": "add"
  }
]
*/
