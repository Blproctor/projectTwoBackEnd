#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/posts"
curl "http://localhost:4741/create-post" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "post": {
      "user_id": "1",
      "title": "Title",
      "content": "Content"
    }
  }'
