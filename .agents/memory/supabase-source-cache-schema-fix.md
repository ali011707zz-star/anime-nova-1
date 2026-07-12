---
name: Supabase source_cache schema fix (bigint → timestamptz)
description: How the real Supabase-hosted DB differs from the VPS's local legacy Postgres, and how to reach it despite sandbox network limits.
---

## Two separate databases — do not confuse them
- VPS `DATABASE_URL` env var points to a **local legacy Postgres** (`postgresql://anime_nova@localhost:5432/anime_nova`) — unrelated leftover DB, already has correct schema.
- The **real production DB** is Supabase-hosted, reached only via `SUPABASE_URL` (REST/PostgREST) + `SUPABASE_SERVICE_KEY` in the app code. Any schema bug reported via `[sb] sbUpsert ... 400` errors in pm2 logs is about *this* DB, not `DATABASE_URL`.

## Root cause found 2026-07-12
`source_cache.expires_at` and `.fetched_at` were `bigint` (ms-epoch) on the real Supabase DB, but `sourceCache.ts` writes `expires_at` as an ISO string (with a legacy-bigint retry fallback) and `fetched_at` as a raw ms number always. Fix: `expires_at` → `TIMESTAMPTZ`, but **leave `fetched_at` as `BIGINT`** — altering both breaks `fetched_at` writes with a "date/time field value out of range" (22008) error, since the app never sends it as an ISO string.

## Reaching the real Supabase Postgres from this sandbox
- `service_role` JWT alone cannot run raw DDL — Supabase's PostgREST has no generic SQL-execution RPC by default. You need the actual **database password** (Supabase dashboard → Project Settings → Database).
- The Replit sandbox has **no IPv6 support at all** (`OSError: Address family not supported by protocol`), and `db.<project-ref>.supabase.co` resolves IPv6-only for at least some projects — unreachable directly from here.
- The `aws-0-<region>.pooler.supabase.com` Supavisor pooler is IPv4 but returned "tenant/user ... not found" for every AWS region tried — did not work for this project.
- **Working path**: SSH into the VPS (which has full IPv4+IPv6 connectivity) and run `psql` from there against `db.<project-ref>.supabase.co:5432` directly — succeeded immediately with the same password that failed from the sandbox.
