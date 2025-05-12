%dw 2.0
input text
output application/json
fun recur(item) = if (item is Array) item map recur($) else item + 2
---
payload6 map ((item, index) -> recur(item))

/* 
    [
  458,
  989,
  [
    446,
    [
      2315,
      4567,
      [
        788,
        [
          779,
          83,
          [
            9125
          ]
        ]
      ]
    ]
  ]
]

*/
