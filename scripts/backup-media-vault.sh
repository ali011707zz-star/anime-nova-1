#!/usr/bin/env bash
# =============================================================================
#  Anime NOVA — نظام الحماية والنسخ الاحتياطي لقاعدة بيانات الأفلام والمسلسلات
#  المسار الأساسي (معزول عن الكود): /var/lib/anime-nova-vault/media-catalog.sqlite
#  مسار النسخ الاحتياطية:           /var/backups/anime-nova-vault/
# =============================================================================
set -euo pipefail

VAULT_DIR="${MEDIA_VAULT_DIR:-/var/lib/anime-nova-vault}"
BACKUP_DIR="${MEDIA_VAULT_BACKUP_DIR:-/var/backups/anime-nova-vault}"
DB_FILE="$VAULT_DIR/media-catalog.sqlite"

mkdir -p "$VAULT_DIR" "$BACKUP_DIR"
chmod 0750 "$VAULT_DIR" "$BACKUP_DIR"

if [ ! -f "$DB_FILE" ]; then
  echo "ℹ️ قاعدة البيانات لم تُنشأ بعد في $DB_FILE (سيتم إنشاؤها تلقائياً عند تشغيل الخادم)."
  exit 0
fi

TS="$(date -u +%Y%m%d-%H%M%S)"
SNAP_FILE="$BACKUP_DIR/media-catalog-${TS}.sqlite"

node -e "
const { DatabaseSync } = require('node:sqlite');
const crypto = require('node:crypto');
const fs = require('node:fs');
const db = new DatabaseSync('$DB_FILE');
const check = db.prepare('PRAGMA quick_check').get();
if (check?.quick_check !== 'ok') {
  console.error('❌ فشل فحص سلامة قاعدة البيانات:', check);
  process.exit(1);
}
db.exec(\"VACUUM INTO '$SNAP_FILE'\");
const buf = fs.readFileSync('$SNAP_FILE');
const sha = crypto.createHash('sha256').update(buf).digest('hex');
fs.writeFileSync('$SNAP_FILE.sha256', sha + '  ' + '$SNAP_FILE\n', { mode: 0o440 });
fs.chmodSync('$SNAP_FILE', 0o440);
console.log('✅ تم حفظ نسخة احتياطية محمية (Read-Only): $SNAP_FILE (' + (buf.byteLength / 1024).toFixed(1) + ' KB)');
"

# الاحتفاظ بآخر 30 نسخة احتياطية فقط لتوفير مساحة القرص
ls -1t "$BACKUP_DIR"/media-catalog-*.sqlite 2>/dev/null | tail -n +31 | while read -r old_file; do
  chmod u+w "$old_file" "$old_file.sha256" 2>/dev/null || true
  rm -f "$old_file" "$old_file.sha256"
done
