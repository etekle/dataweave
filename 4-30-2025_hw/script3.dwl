%dw 2.0
output application/json
fun filt(item, str) = (item.characters filter ((item, index) -> item.name contains str))..value[1]
---
payload3 map ((item, index) -> {"ref":item.id, "amount": filt(item,"reward"), "redeem":filt(item, "redeem")})
/*
EOP:
[
  {
    "ref": "r-1",
    "amount": "170.0",
    "reedem": "redeem 123"
  },
  {
    "ref": "r-2",
    "amount": "200.0",
    "reedem": "redeem 111"
  },
  {
    "ref": "r-3",
    "amount": "300.0",
    "reedem": "redeem 555"
  }
]
*/