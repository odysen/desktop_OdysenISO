#!/usr/bin/env bash

source .env

echo "Building $ISO_NAME..."
echo 'Sending manual CI trigger to Discord...'
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": null,\"embeds\": [{\"title\": \"Manual ISO build triggered.\",\"description\": \"Building $ISO_NAME...\",\"color\": 1961378,\"thumbnail\": {\"url\": \"https://media.kerichuu.space/u/hL2fks.png\"}}],\"username\": \"OdysenCI\",\"avatar_url\": \"https://media.kerichuu.space/u/4axqPM.png\",\"attachments\": []}" $DISCORD_WEBHOOK_URL
