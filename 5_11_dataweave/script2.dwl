%dw 2.0
input payload4 text
output application/json
var lines = payload4 splitBy "\r\n"
var rules = { 
                R: {R:3, P:6, S:0} , 
                P: {R:0, P:3, S:6}, 
                S: {R:6, P:0, S:3}
            }
var rounds = lines[0] splitBy " "

var defeats = {R:"S",P:"R",S:"P"}
fun getScore(opponent:String, me:String):Number = if (opponent == me) 3 else if (defeats[me] == opponent) 6 else 0
---
sum(lines map getScore($[0],$[-1]))

/*

lines reduce ((round, score = 0) -> 
do { var arr = round splitBy " "
    var opponent = arr[0]
    var me = arr[1]
    ---
    score + rules[opponent][me]

}
)

/*
30



R R 3
R P 6
R S 0
P R 0
P P 3
P S 6
S R 6
S P 0
S S 3
R R 3
*/
