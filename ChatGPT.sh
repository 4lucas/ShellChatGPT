#!/bin/bash

API_KEY="token_API"
MODEL="davinci"
URL="https://api.openai.com/v1/engines/$MODEL/completions"

prompt="Questão desejada, aqui"

curl -s -X POST \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $API_KEY" \
    -d "{\"prompt\": \"$prompt\", \"max_tokens\": 100}" \
    $URL | jq -r '.choices[0].text'
