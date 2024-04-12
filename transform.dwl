%dw 2.0
output application/json
---
(reverse.Reverse splitBy(' '))[-1 to 0] joinBy(' ')