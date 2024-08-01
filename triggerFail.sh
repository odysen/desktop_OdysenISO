#!/usr/bin/env bash

source .env

echo "Failed building..."
echo 'Sending manual CI trigger to Discord...'
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": null,\"embeds\": [{\"title\": \"Manual ISO build failed.\",\"color\": 16711680,\"thumbnail\": {\"url\": \"https://media.kerichuu.space/u/hL2fks.png\"}}],\"username\": \"OdysenCI\",\"avatar_url\": \"https://media.kerichuu.space/u/4axqPM.png\",\"attachments\": []}" $DISCORD_WEBHOOK_URL
