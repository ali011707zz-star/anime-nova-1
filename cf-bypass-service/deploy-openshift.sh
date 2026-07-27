#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────────
# Nova CF Bypass — OpenShift Deploy Script
# Usage:  bash deploy-openshift.sh <YOUR_TOKEN>
#
# يحتاج oc مثبّتاً (مثبَّت تلقائياً على VPS)
# Token من: https://console-openshift-console.apps.rm1.0a51.p1.openshiftapps.com
#   → اسمك (أعلى يمين) → "Copy login command" → "Display Token"
# ──────────────────────────────────────────────────────────────────────────────
set -euo pipefail

TOKEN="${1:-}"
if [[ -z "$TOKEN" ]]; then
  echo "Usage: bash deploy-openshift.sh <TOKEN>"
  exit 1
fi

OC_SERVER="https://api.rm1.0a51.p1.openshiftapps.com:6443"
APP_NAME="nova-cf-bypass"
GITHUB_REPO="https://github.com/ali011707zz-star/anime-nova-1"
CONTEXT_DIR="cf-bypass-service"

echo "==> Logging in to OpenShift..."
oc login --token="$TOKEN" --server="$OC_SERVER" --insecure-skip-tls-verify=true

# Use the first available project
PROJECT=$(oc project -q 2>/dev/null || oc projects -q | head -1)
echo "==> Using project: $PROJECT"

# ── Build & Deploy from GitHub ─────────────────────────────────────────────────
echo "==> Creating app from GitHub source (Docker strategy)..."
if oc get dc "$APP_NAME" &>/dev/null 2>&1 || oc get deployment "$APP_NAME" &>/dev/null 2>&1; then
  echo "    App already exists — triggering new build..."
  oc start-build "$APP_NAME" --follow --wait
else
  oc new-app \
    "$GITHUB_REPO" \
    --name="$APP_NAME" \
    --context-dir="$CONTEXT_DIR" \
    --strategy=docker \
    --env PORT=8080

  echo "==> Waiting for build to start..."
  sleep 10
  oc logs -f "bc/$APP_NAME" || true
fi

# ── Expose Route (HTTPS via OpenShift edge termination) ─────────────────────────
if ! oc get route "$APP_NAME" &>/dev/null 2>&1; then
  echo "==> Exposing service as public route..."
  oc expose svc/"$APP_NAME" --port=8080
  oc patch route "$APP_NAME" -p '{"spec":{"tls":{"termination":"edge","insecureEdgeTerminationPolicy":"Redirect"}}}'
fi

echo ""
echo "==> Route URL:"
ROUTE_URL="https://$(oc get route "$APP_NAME" -o jsonpath='{.spec.host}')"
echo "    $ROUTE_URL"
echo ""
echo "==> Test health:"
echo "    curl $ROUTE_URL/health"
echo ""
echo "==> Add to VPS .env / ecosystem.config.cjs:"
echo "    OPENSHIFT_CF_URL=$ROUTE_URL"
