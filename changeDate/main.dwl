%dw 2.0
output application/json
var date = payload as Date {format: "d MMM yyyy"}
var sub = 1
var month = if (date.month - sub == 0 ) 12 else date.month
var year = if (date.month - sub ~= 0) date.year - sub else date.year 
---
(date.day ++ " " ++ date.month as String {format: "00"} ++ " " ++ date.year) as Date {format: "d MM yyyy"} as String {format: "d MMM yyy"}

//(date - |P1M|) as String {format: "d MMM yyy"}
//(date - ("P$(sub)M" as Period)) as String {format: "d MMM yyy"}

/*
1 Apr 2025
*/
