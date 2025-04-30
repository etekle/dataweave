%dw 2.0
output application/json
fun groupStr(str) = payload4 groupBy ((item, index) -> item[str] )
fun maxSize(size) = max( groupStr(size) pluck $ map ((item, index) -> sizeOf(item)))
---
{  
    Name: maxSize("name") ,
    Company: sizeOf(groupStr("email")),
    email: maxSize("email"),
  Count:sizeOf(payload4)
}
/*
{
  "Name": 1,
  "Company": 2,
  "email": 3,
  "Count": 4
}

 */
