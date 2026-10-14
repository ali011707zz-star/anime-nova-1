import { readFile } from "node:fs/promises";
import { fileURLToPath } from "node:url";
import { dirname, resolve } from "node:path";
import { planStardimaClassificationRepair } from "./stardima-classification-repair.mjs";

const APPLY = process.argv.includes("--apply");
const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), "../../../../");
const BATCH_SIZE = 500;
const MAX_ROWS = 10_000;

try {
  const text = await readFile(resolve(ROOT, ".env"), "utf8");
  for (const line of text.split(/\r?\n/)) {
    const match = line.match(/^\s*([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(.*)\s*$/);
    if (!match || process.env[match[1]]) continue;
    process.env[match[1]] = match[2].replace(/^(['"])(.*)\1$/, "$2");
  }
} catch {}

const supabaseUrl = String(process.env.SUPABASE_URL || "").replace(/\/$/, "");
const serviceKey = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY;
if (!supabaseUrl || !serviceKey) {
  throw new Error("Supabase REST credentials are required; no fallback database is modified.");
}

const headers = {
  apikey: serviceKey,
  Authorization: `Bearer ${serviceKey}`,
  Accept: "application/json",
};

async function fetchPage(offset) {
  const url = new URL(`${supabaseUrl}/rest/v1/source_catalog_titles`);
  url.searchParams.set("provider", "eq.stardima_catalog");
  url.searchParams.set("select", "id,provider,provider_metadata,genres,tags");
  url.searchParams.set("order", "id.asc");
  url.searchParams.set("limit", String(BATCH_SIZE));
  url.searchParams.set("offset", String(offset));
  const response = await fetch(url, { headers, signal: AbortSignal.timeout(20_000) });
  if (!response.ok) {
    throw new Error(`StarDima classification scan failed (HTTP ${response.status})`);
  }
  return response.json();
}

async function patchRow(row, patch) {
  const url = new URL(`${supabaseUrl}/rest/v1/source_catalog_titles`);
  url.searchParams.set("id", `eq.${row.id}`);
  url.searchParams.set("provider", "eq.stardima_catalog");
  const oldClassification = row.provider_metadata?.classification || {};
  if (oldClassification.status) {
    url.searchParams.set(
      "provider_metadata->classification->>status",
      `eq.${oldClassification.status}`,
    );
  }
  const currentEvidence = oldClassification.family_evidence;
  url.searchParams.set(
    "provider_metadata->classification->>family_evidence",
    currentEvidence != null ? `eq.${currentEvidence}` : "is.null",
  );

  const response = await fetch(url, {
    method: "PATCH",
    headers: {
      ...headers,
      "Content-Type": "application/json",
      Prefer: "return=representation",
    },
    body: JSON.stringify({ provider_metadata: patch.provider_metadata }),
    signal: AbortSignal.timeout(20_000),
  });
  if (!response.ok) {
    throw new Error(`StarDima classification update failed (HTTP ${response.status})`);
  }
  const updated = await response.json();
  return Array.isArray(updated) ? updated.length : 0;
}

const candidates = [];
let scanned = 0;
for (let offset = 0; offset < MAX_ROWS; offset += BATCH_SIZE) {
  const rows = await fetchPage(offset);
  scanned += rows.length;
  for (const row of rows) {
    const patch = planStardimaClassificationRepair(row);
    if (patch) candidates.push({ row, patch });
  }
  if (rows.length < BATCH_SIZE) break;
}
if (scanned >= MAX_ROWS) {
  throw new Error(`Refusing to proceed: StarDima catalog exceeds safe scan limit ${MAX_ROWS}.`);
}

const summary = {
  mode: APPLY ? "apply" : "dry-run",
  scanned,
  candidateRepairs: candidates.length,
  sourceCategoryEvidenceRepairs: candidates.filter(
    ({ patch }) => patch.changes.familyEvidence === "source_category",
  ).length,
  detailTaxonomyRepairs: candidates.filter(
    ({ patch }) => patch.changes.familyEvidence === "title_detail_taxonomy",
  ).length,
  updated: 0,
  conflicts: 0,
  changedFields: ["provider_metadata.classification.status", "content_families", "family_evidence"],
  untouched: ["titles", "genres", "tags", "episodes", "servers", "catalog_status"],
};

if (APPLY) {
  for (const { row, patch } of candidates) {
    const updated = await patchRow(row, patch);
    if (updated === 1) summary.updated += 1;
    else summary.conflicts += 1;
  }
}

console.log(`[stardima-classification-repair] ${JSON.stringify(summary)}`);
