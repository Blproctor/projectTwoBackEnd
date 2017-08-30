
#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/users"
curl "http://localhost:4741/users" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
