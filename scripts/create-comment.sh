#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/comments"
curl "http://localhost:4741/create-comment" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "user_id": "1",
      "post_id" : "1",
      "title": "Title",
      "content": "Content"
    }
  }'
