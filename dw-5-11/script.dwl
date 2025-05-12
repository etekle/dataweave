%dw 2.0
input payload3 text
output application/json
var x = (payload3 splitBy "\r\n\r\n")
var y = max(x map ((item, index) -> sum(item splitBy "\r\n")) )
var z = sizeOf(y)
---
//if(isOdd(z)) y[(z-1)/2] else ( y[z/2] + y[(z-1)/2])/2
//[floor(16.8), round(16.8), ceil(16.2) ]
y

/*
sum()
flatten()
max()


(x) map (y) sum (payload)

    29
*/
