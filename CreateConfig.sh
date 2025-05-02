#!/bin/sh

# Create config.json (deprecated, use the one in TBM_CPU_V2)
cat << EOF > ./config.json
{
  "connection": {
    "maxAttempts": $RETRY_MAX,
    "retryDelay": $RETRY_DELAY
  },
  "token": "$TOKEN",
  "mongourl": "$BDD_URL",
  "serveurMinecraftDOMAIN": "$PERSONAL_DOMAINE_NAME",
  "twitch": {
    "clientId": "$TWITCH_ID",
    "clientSecret": "$TWITCH_SECRET"
  },
  "apex_api": "$APEX_API",
  "genius_api": "$GENIUS_API"
}
EOF