---
name: cinepro-core future integration
description: cinepro-org/core OMSS backend — 50+ movie/TV sources, needs self-hosting, TMDB-native
---

## cinepro-org/core

**Repo**: https://github.com/cinepro-org/core  
**Type**: OMSS-compliant Node.js 20+ scraping backend  
**Purpose**: Stream resolver for 50+ movie/TV sources (not anime-specific)

**Sources (confirmed from repo)**:
123anime, apexmovies, embedmaster, flaxmovies, fsharetv, fsonic, icefy, lookmovie, purstream, spencerdevs, streamguide, vapor, vidcore, videasy, vidify, vidrock, vidsrc, vidzee, vixsrc, xpass

**To self-host**:
- Node.js 20+ + TMDB API key + optional Redis
- `npm install && npm start`
- Set TMDB_API_KEY env var
- Has MCP (Claude/AI agent) support built-in

**Audio**: Mixed — 123anime is JP+EN subs, others are English audio (Western movies/TV)

**Why not integrated yet**: Requires self-hosted instance (no public API)  
**Why: **Good for animation section (English/original audio = preferred) and 50+ additional sources.

**Integration plan (when ready)**:
1. Deploy on Render/Railway free tier
2. Add CINEPRO_URL env var
3. In animation.ts sources-stream: call `/search?tmdbId={id}&type={movie|tv}` → get HLS sources
