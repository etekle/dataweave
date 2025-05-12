%dw 2.0
output application/json
---
payload map $ ++ [{
    key:"quotes not needed",
    "key with Spaces": "key with spaces need quotation",
    normalKeyNouotes:true,
    keySelector: payload.message,
    keySelectorSpaces: payload."this is a message"
}]