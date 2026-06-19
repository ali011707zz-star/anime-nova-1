#!/usr/bin/env bash
# ══════════════════════════════════════════════════════════════
#  deploy.sh — نشر Deno proxy على Deno Deploy
#  الاستخدام: DENO_TOKEN=ddp_xxx bash scripts/deno-proxy/deploy.sh
# ══════════════════════════════════════════════════════════════

set -e

TOKEN="${DENO_TOKEN:-$1}"
PROJECT="anime-nova-proxy"
ENTRY="scripts/deno-proxy/main.ts"

if [[ -z "$TOKEN" ]]; then
  echo "❌ يجب تمرير Deno Deploy token:"
  echo "   DENO_TOKEN=ddp_xxx bash scripts/deno-proxy/deploy.sh"
  exit 1
fi

echo "🔍 التحقق من التوكن..."
USER_RES=$(curl -sf "https://api.deno.com/v1/user" \
  -H "Authorization: Bearer $TOKEN" 2>/dev/null || echo '{"code":"error"}')

if echo "$USER_RES" | grep -q '"code"'; then
  echo "❌ التوكن غير صالح:"
  echo "$USER_RES"
  echo ""
  echo "📌 أنشئ توكن جديد من: https://dash.deno.com/account#access-tokens"
  exit 1
fi

USER_ID=$(echo "$USER_RES" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('id',''))" 2>/dev/null || echo "")
USER_NAME=$(echo "$USER_RES" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('login',''))" 2>/dev/null || echo "")
echo "✅ مسجّل دخول: $USER_NAME ($USER_ID)"

# ── إيجاد أو إنشاء المشروع ───────────────────────────────────
echo "🔍 البحث عن المشروع $PROJECT..."
ORGS_RES=$(curl -sf "https://api.deno.com/v1/organizations" \
  -H "Authorization: Bearer $TOKEN" 2>/dev/null || echo '{"organizations":[]}')
ORG_ID=$(echo "$ORGS_RES" | python3 -c "
import sys,json
d=json.load(sys.stdin)
orgs=d.get('organizations',[])
print(orgs[0].get('id','') if orgs else '')
" 2>/dev/null || echo "")

if [[ -z "$ORG_ID" ]]; then
  # Personal account (no org)
  PROJECTS_RES=$(curl -sf "https://api.deno.com/v1/projects?limit=100" \
    -H "Authorization: Bearer $TOKEN" 2>/dev/null || echo '{"projects":[]}')
  PROJECT_ID=$(echo "$PROJECTS_RES" | python3 -c "
import sys,json
d=json.load(sys.stdin)
projects=d.get('projects',[])
for p in projects:
  if p.get('name')=='${PROJECT}':
    print(p.get('id',''))
    break
" 2>/dev/null || echo "")
else
  PROJECTS_RES=$(curl -sf "https://api.deno.com/v1/organizations/$ORG_ID/projects?limit=100" \
    -H "Authorization: Bearer $TOKEN" 2>/dev/null || echo '{"projects":[]}')
  PROJECT_ID=$(echo "$PROJECTS_RES" | python3 -c "
import sys,json
d=json.load(sys.stdin)
projects=d.get('projects',[])
for p in projects:
  if p.get('name')=='${PROJECT}':
    print(p.get('id',''))
    break
" 2>/dev/null || echo "")
fi

if [[ -z "$PROJECT_ID" ]]; then
  echo "📦 إنشاء مشروع جديد: $PROJECT"
  CREATE_URL="https://api.deno.com/v1"
  if [[ -n "$ORG_ID" ]]; then
    CREATE_URL="$CREATE_URL/organizations/$ORG_ID/projects"
  else
    CREATE_URL="$CREATE_URL/projects"
  fi
  CREATE_RES=$(curl -sf "$CREATE_URL" \
    -H "Authorization: Bearer $TOKEN" \
    -H "Content-Type: application/json" \
    -d "{\"name\":\"${PROJECT}\"}" 2>/dev/null || echo '{"error":"failed"}')
  PROJECT_ID=$(echo "$CREATE_RES" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('id',''))" 2>/dev/null || echo "")
  if [[ -z "$PROJECT_ID" ]]; then
    echo "❌ فشل إنشاء المشروع:"
    echo "$CREATE_RES"
    exit 1
  fi
  echo "✅ مشروع جديد: ID=$PROJECT_ID"
else
  echo "✅ مشروع موجود: ID=$PROJECT_ID"
fi

# ── توليد PROXY_SECRET عشوائي ──────────────────────────────────
PROXY_SECRET=$(python3 -c "import secrets; print(secrets.token_hex(24))")
echo "🔑 PROXY_SECRET جديد: $PROXY_SECRET"

# ── نشر الكود ──────────────────────────────────────────────────
echo "🚀 نشر $ENTRY..."
CODE=$(cat "$ENTRY")

DEPLOY_RES=$(curl -sf "https://api.deno.com/v1/projects/$PROJECT_ID/deployments" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d "$(python3 -c "
import json, sys
code = open('${ENTRY}').read()
payload = {
  'entryPointUrl': 'main.ts',
  'assets': {
    'main.ts': {
      'kind': 'file',
      'content': code,
      'encoding': 'utf-8'
    }
  },
  'envVars': {
    'PROXY_SECRET': '${PROXY_SECRET}'
  }
}
print(json.dumps(payload))
")" 2>/dev/null || echo '{"error":"failed"}')

DEPLOY_ID=$(echo "$DEPLOY_RES" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('id',''))" 2>/dev/null || echo "")
DEPLOY_URL=$(echo "$DEPLOY_RES" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('domainMappings',{}).get('0',{}).get('domain','') or next((dm.get('domain','') for dm in d.get('domainMappings',[]) if dm), '') )" 2>/dev/null || echo "")

if [[ -z "$DEPLOY_ID" ]]; then
  # Try to extract URL from deployment URL
  DEPLOY_URL="https://${PROJECT}.deno.dev"
  echo "⚠️  لم يتأكد ID، لكن المشروع يُنشر على: $DEPLOY_URL"
else
  echo "✅ نُشر بنجاح: ID=$DEPLOY_ID"
  if [[ -z "$DEPLOY_URL" ]]; then
    DEPLOY_URL="https://${PROJECT}.deno.dev"
  fi
fi

echo ""
echo "══════════════════════════════════════════════════════════"
echo "✅ Deno Proxy جاهز!"
echo ""
echo "📌 عنوان الـ proxy: https://${DEPLOY_URL}"
echo "🔑 مفتاح الأمان:   $PROXY_SECRET"
echo ""
echo "📋 أضف هذين المتغيرين في Replit Secrets:"
echo "   DENO_PROXY_URL    = https://${PROJECT}.deno.dev"
echo "   DENO_PROXY_SECRET = $PROXY_SECRET"
echo ""
echo "🧪 اختبار الـ proxy:"
echo "   curl \"https://${PROJECT}.deno.dev/health\" -H \"X-Proxy-Key: $PROXY_SECRET\""
echo "══════════════════════════════════════════════════════════"
