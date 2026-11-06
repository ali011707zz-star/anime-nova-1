#!/usr/bin/env bash
# hound-service disabled permanently (replaced by Anime Witcher direct Firestore/Algolia JSON)
pm2 delete hound-service 2>/dev/null || true
pkill -f "patchright" 2>/dev/null || true
exit 0
