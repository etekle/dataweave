%dw 2.0
output application/json
var status = [ 
{ "success": true }, 
{ "success": false }, 
{ "success": false }, 
{ "success": false }, 
{ "success": true } 
]
---
payload map ($ ++ status[$$]) filter $.success is false