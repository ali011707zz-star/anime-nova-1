#!/usr/bin/env python3
"""
MX Player Flask micro-service
=================================
يعمل على المنفذ 8002 (أو MXP_SERVICE_PORT).
يوفر واجهة REST لـ Node.js API لاستخراج روابط البث من MX Player.

نهج البحث المُثبَت:
  /search/result → sections[].items → tvshow → seasons → episodes → stream URLs

بدون ترجمة مدمجة — روابط HLS/DASH خام فقط.

Endpoints:
  GET /health
  GET /search?q=<title>&ep=<num>   ← الرئيسي
  GET /stream?id=<ep_id>           ← اختياري للتشخيص
"""

import json
import os
import sys
import time
import urllib.request
import urllib.parse
import urllib.error
import uuid
import re
from typing import Any, Optional, Union
from flask import Flask, request, jsonify

# =============================================================================
# Config
# =============================================================================
PORT          = int(os.environ.get("MXP_SERVICE_PORT", 8002))
BASE_URL      = "https://api.mxplayer.in/v1/web"
CDN_BASE      = "https://isa-1.mxplay.com"      # absolute URL prefix for relative paths
SEASONS_CACHE_TTL  = 3600     # 1 hour  — seasons list for a show
EPISODES_CACHE_TTL = 1800     # 30 min  — episode list for a season
SEARCH_CACHE_TTL   = 600      # 10 min  — search results

DEFAULT_PARAMS = {
    "device-density": "2",
    "platform": "com.mxplay.desktop",
    "content-languages": "hi,en",
    "kids-mode-enabled": "false",
}
UA = (
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
    "AppleWebKit/537.36 (KHTML, like Gecko) "
    "Chrome/125.0.0.0 Safari/537.36"
)

# =============================================================================
# Session state
# =============================================================================
_uid: Optional[str] = None
_search_cache: dict  = {}   # query → (ts, [items])
_seasons_cache: dict = {}   # show_id → (ts, [seasons])
_ep_cache: dict      = {}   # season_id → (ts, [episodes])


def _get_uid() -> str:
    global _uid
    if _uid is None:
        _uid = str(uuid.uuid4())
    return _uid


# =============================================================================
# HTTP helper
# =============================================================================

def _api(path: str, query: dict = None) -> Any:
    """Call MXPlayer API. Returns parsed JSON or raises urllib.error."""
    params = dict(DEFAULT_PARAMS)
    if query:
        params.update(query)
    params["userid"] = _get_uid()
    url = f"{BASE_URL}{path}?{urllib.parse.urlencode(params)}"
    req = urllib.request.Request(
        url,
        headers={
            "User-Agent": UA,
            "Accept": "application/json, text/plain, */*",
            "Referer": "https://www.mxplayer.in/",
            "Origin": "https://www.mxplayer.in",
        },
    )
    with urllib.request.urlopen(req, timeout=14) as resp:
        return json.loads(resp.read())


# =============================================================================
# Stream URL normaliser — بدون معالجة ترجمة
# =============================================================================

def _resolve_url(raw: Any) -> Optional[str]:
    """
    Resolve a stream URL field (may be a path string or dict with quality keys).
    Always prefixes relative paths with CDN_BASE.
    Returns None if nothing is found.
    """
    if not raw:
        return None
    url = ""
    if isinstance(raw, str):
        url = raw
    elif isinstance(raw, dict):
        # Priority: high → main → base (first non-None)
        for k in ("high", "main", "base", "sd"):
            if raw.get(k):
                url = raw[k]
                break
    if not url:
        return None
    if not url.startswith("http"):
        url = f"{CDN_BASE}/{url.lstrip('/')}"
    return url


def _extract_stream(stream: Optional[dict]) -> dict:
    """
    Extract HLS and DASH URLs from a stream dict.
    No subtitle / translation processing — raw URLs only.
    """
    if not stream or stream.get("drmProtect"):
        return {}
    result = {}
    hls_url = _resolve_url(stream.get("hls"))
    if hls_url and ".m3u8" in hls_url:
        result["hls"] = hls_url
    dash_url = _resolve_url(stream.get("dash"))
    if dash_url and ".mpd" in dash_url:
        result["dash"] = dash_url
    return result


# =============================================================================
# API wrappers (with cache)
# =============================================================================

def search_content(query: str) -> list:
    """
    Search MXPlayer for shows/movies matching query.
    Returns flat list of content items across all sections.
    """
    now = time.time()
    ck = query.lower().strip()
    cached = _search_cache.get(ck)
    if cached and now - cached[0] < SEARCH_CACHE_TTL:
        return cached[1]

    try:
        data = _api("/search/result", {"query": query})
    except Exception as e:
        print(f"[MXP] search error: {e}", file=sys.stderr)
        return []

    items = []
    for sec in (data.get("sections") or []):
        for item in (sec.get("items") or []):
            if isinstance(item, dict):
                items.append(item)

    _search_cache[ck] = (now, items)
    return items


def get_seasons(show_id: str) -> list:
    """Fetch seasons list for a TV show."""
    now = time.time()
    cached = _seasons_cache.get(show_id)
    if cached and now - cached[0] < SEASONS_CACHE_TTL:
        return cached[1]

    try:
        data = _api("/detail/tab/tvshowseasons",
                    {"type": "tvshow", "id": show_id, "sortOrder": "0"})
        seasons = data.get("items") or []
    except Exception as e:
        print(f"[MXP] seasons error: {e}", file=sys.stderr)
        seasons = []

    _seasons_cache[show_id] = (now, seasons)
    return seasons


def get_episodes(season_id: str) -> list:
    """Fetch episodes list for a season."""
    now = time.time()
    cached = _ep_cache.get(season_id)
    if cached and now - cached[0] < EPISODES_CACHE_TTL:
        return cached[1]

    try:
        data = _api("/detail/tab/tvshowepisodes",
                    {"type": "season", "id": season_id, "sortOrder": "0"})
        episodes = data.get("items") or []
    except Exception as e:
        print(f"[MXP] episodes error: {e}", file=sys.stderr)
        episodes = []

    _ep_cache[season_id] = (now, episodes)
    return episodes


# =============================================================================
# Title similarity helper
# =============================================================================

_STOP = {"the", "a", "an", "of", "in", "on", "at", "to", "for", "and", "or"}

def _norm(s: str) -> str:
    s = s.lower()
    s = re.sub(r"[^\w\s]", " ", s)
    return re.sub(r"\s+", " ", s).strip()

def _sim(a: str, b: str) -> float:
    wa = set(_norm(a).split()) - _STOP
    wb = set(_norm(b).split()) - _STOP
    if not wa or not wb:
        return 0.0
    return len(wa & wb) / max(len(wa), len(wb))


# =============================================================================
# High-level: resolve stream for a content item + episode number
# =============================================================================

def _resolve_item_stream(item: dict, ep_num: int) -> dict:
    """
    Given a search result item, resolve to {hls, dash} for ep_num.
    For movies: use stream directly.
    For tvshow: seasons → season 1 episodes → find ep_num → stream.
    No translation processing.
    """
    content_type = item.get("type", "")
    show_id      = item.get("id", "")

    # ── Movie / single episode ──────────────────────────────────────────────
    if content_type == "movie":
        return _extract_stream(item.get("stream"))

    # ── TV Show ─────────────────────────────────────────────────────────────
    if content_type == "tvshow" and show_id:
        seasons = get_seasons(show_id)
        if not seasons:
            return {}

        # Pick season based on ep_num (rough: season 1 first, walk if needed)
        # Most anime: 25 eps per season; for ep 26+ try season 2
        target_season = seasons[0]  # default: season 1
        eps_per_season = 25
        if len(seasons) > 1:
            season_idx = min(max(ep_num - 1, 0) // eps_per_season, len(seasons) - 1)
            target_season = seasons[season_idx]
            ep_in_season  = ((ep_num - 1) % eps_per_season) + 1
        else:
            ep_in_season = ep_num

        season_id = target_season.get("id", "")
        if not season_id:
            return {}

        episodes = get_episodes(season_id)
        if not episodes:
            return {}

        # Try to find by episodeNo field, fall back to list index
        target_ep = None
        for ep in episodes:
            en = ep.get("episodeNo") or ep.get("episode_no")
            if en is not None and int(en) == ep_in_season:
                target_ep = ep
                break

        if target_ep is None:
            # Fallback: use list index (0-based → ep_in_season - 1)
            idx = max(0, ep_in_season - 1)
            target_ep = episodes[idx] if idx < len(episodes) else episodes[0]

        return _extract_stream(target_ep.get("stream"))

    return {}


# =============================================================================
# Flask app
# =============================================================================

app = Flask(__name__)


@app.route("/health")
def health():
    return jsonify({"ok": True, "service": "mxplayer"})


@app.route("/search")
def search():
    q   = request.args.get("q", "").strip()
    try:
        ep = max(1, min(int(request.args.get("ep", 1) or 1), 5000))
    except (ValueError, TypeError):
        ep = 1

    if not q:
        return jsonify({"sources": [], "error": "q required"}), 400

    items = search_content(q)
    if not items:
        return jsonify({"sources": []}), 200

    # Rank by title similarity
    ranked = [(item, _sim(q, item.get("title") or "")) for item in items]
    ranked = [(item, sc) for item, sc in ranked if sc > 0.15]
    ranked.sort(key=lambda x: x[1], reverse=True)
    if not ranked and items:
        ranked = [(items[0], 0.0)]  # fallback to first result

    sources = []
    for item, score in ranked[:4]:
        stream = _resolve_item_stream(item, ep)
        if not stream:
            continue

        item_title = item.get("title") or q
        langs      = [d.get("name", "") for d in (item.get("languagesDetails") or [])]
        lang_str   = ", ".join(filter(None, langs[:3])) or "Unknown"

        if stream.get("hls"):
            sources.append({
                "url":    stream["hls"],
                "quality": "HD",
                "type":   "hls",
                "label":  f"MXPlayer · {lang_str}",
                "title":  item_title,
                "score":  round(score, 2),
            })
        if stream.get("dash"):
            sources.append({
                "url":    stream["dash"],
                "quality": "HD",
                "type":   "dash",
                "label":  f"MXPlayer · DASH · {lang_str}",
                "title":  item_title,
                "score":  round(score, 2),
            })

        if sources:
            break  # stop at first working match

    return jsonify({"sources": sources, "query": q, "ep": ep})


@app.route("/stream")
def stream_ep():
    """Direct stream lookup by episode id (for debugging)."""
    ep_id = request.args.get("id", "").strip()
    if not ep_id:
        return jsonify({"error": "id required"}), 400
    try:
        data   = _api("/detail/tab/tvshowepisodes",
                      {"type": "season", "id": ep_id, "sortOrder": "0"})
        items  = data.get("items") or []
        result = []
        for ep in items[:3]:
            st = _extract_stream(ep.get("stream"))
            if st:
                result.append({"title": ep.get("title", ""), "stream": st})
        return jsonify({"results": result})
    except Exception as e:
        return jsonify({"error": str(e)}), 502


if __name__ == "__main__":
    print(f"[MXPlayer Service] Starting on port {PORT}", file=sys.stderr)
    app.run(host="0.0.0.0", port=PORT, debug=False)
