#!/usr/bin/env bash
set -e

MSG="${1:-deploy}"

git add -A
git commit -m "$MSG" || echo "Nada que commitear"
git push origin master

OUTPUT=$(npx vercel --prod --yes 2>&1)
echo "$OUTPUT"

DEPLOY_URL=$(echo "$OUTPUT" | grep -oP 'https://motogestion-landing-[a-zA-Z0-9_-]+-matias2015fs-projects\.vercel\.app' | head -1)

if [ -n "$DEPLOY_URL" ]; then
  npx vercel alias "$DEPLOY_URL" motogestion.ar --scope matias2015fs-projects
  echo ""
  echo "Deploy completo: https://motogestion.ar"
else
  echo "Deploy listo (alias manual puede ser necesario)"
fi
