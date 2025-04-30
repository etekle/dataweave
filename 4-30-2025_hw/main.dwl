%dw 2.0
output application/json
---
{collection: Dataitem: payload.item filter ((item, index) -> !(item.Name contains  " "))}

/*
 EOP:
{
  "collection": {
    "Dataitem": [
      {
        "Id": "1234",
        "Name": "mule"
      },
      {
        "Id": "5678",
        "Name": "soft"
      }
    ]
  }
}
*/