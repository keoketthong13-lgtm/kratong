#!/usr/bin/env bash
# ใช้: ./deploy.sh ชื่อ-project-id
set -e
PROJECT="${1:?ใส่ project id เช่น ./deploy.sh loykrathong-12345}"
mkdir -p public
cp index.html config.js public/
npx --yes firebase-tools deploy --project "$PROJECT" --only hosting,firestore:rules
echo "เสร็จแล้ว: https://$PROJECT.web.app"
