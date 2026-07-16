#!/usr/bin/env python3
"""
Nova Anime — Whisper Audio Transcription Service
Detects audio language (Japanese/English/Arabic/…) and transcribes to cues.
Non-Arabic cues are translated to Arabic via the API server's translate endpoint.
Port: $WHISPER_PORT (default 8001)
"""

import os
import time
import tempfile
import subprocess
from flask import Flask, request, jsonify

app = Flask(__name__)

LANG_NAMES = {
    "ja": "ياباني", "en": "إنجليزي", "ar": "عربي",
    "zh": "صيني",   "ko": "كوري",    "fr": "فرنسي",
    "de": "ألماني", "es": "إسباني",  "it": "إيطالي",
    "tr": "تركي",   "pt": "برتغالي", "ru": "روسي",
}

_model = None
_cache: dict = {}
CACHE_TTL = 7 * 86400  # 7 days


def get_model():
    global _model
    if _model is None:
        from faster_whisper import WhisperModel
        size = os.environ.get("WHISPER_MODEL", "small")
        print(f"[whisper] Loading model '{size}' — first load may take a minute…", flush=True)
        _model = WhisperModel(size, device="cpu", compute_type="int8")
        print("[whisper] Model ready ✓", flush=True)
    return _model


def extract_audio(url: str, duration: int = 120) -> str:
    """
    Download & extract audio from a video URL (HLS / MP4 / …) to a 16 kHz mono WAV.
    Returns the temp file path — caller must delete it.
    """
    fd, wav_path = tempfile.mkstemp(suffix=".wav")
    os.close(fd)

    cmd = [
        "ffmpeg", "-y",
        "-user_agent",
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)"
        " Chrome/124.0.0.0 Safari/537.36",
        "-headers", "Referer: https://www.google.com/\r\n",
        "-i", url,
        "-t", str(duration),
        "-vn",          # no video
        "-ar", "16000", # 16 kHz required by Whisper
        "-ac", "1",     # mono
        "-f", "wav",
        wav_path,
    ]

    result = subprocess.run(cmd, capture_output=True, timeout=100)
    size = os.path.getsize(wav_path) if os.path.exists(wav_path) else 0

    if result.returncode != 0 or size < 4096:
        try: os.unlink(wav_path)
        except: pass
        stderr_tail = result.stderr[-400:].decode("utf-8", "ignore")
        raise RuntimeError(f"ffmpeg failed (exit {result.returncode}): {stderr_tail}")

    return wav_path


# ── Routes ────────────────────────────────────────────────────────────────────

@app.route("/health")
def health():
    return jsonify({
        "status": "ok",
        "model": os.environ.get("WHISPER_MODEL", "small"),
        "cached": len(_cache),
    })


@app.route("/detect", methods=["POST"])
def detect_language():
    """
    Fast language detection using the first ~30 seconds.
    Body: { url: string }
    Returns: { language, language_ar, probability }
    """
    data = request.get_json(silent=True) or {}
    url = (data.get("url") or "").strip()
    if not url:
        return jsonify({"error": "url required"}), 400

    wav_path = None
    try:
        model = get_model()
        wav_path = extract_audio(url, 30)
        _, info = model.transcribe(
            wav_path, task="transcribe", beam_size=1, language=None
        )
        lang = info.language or "unknown"
        return jsonify({
            "language": lang,
            "language_ar": LANG_NAMES.get(lang, lang),
            "probability": round(info.language_probability, 3),
        })
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        if wav_path and os.path.exists(wav_path):
            try: os.unlink(wav_path)
            except: pass


@app.route("/transcribe", methods=["POST"])
def transcribe():
    """
    Transcribe audio from a video URL.
    Body: { url: string, duration?: number (default 120s) }
    Returns: { language, language_ar, language_probability, cues: [{start,end,text}] }
    Note: cues are in the ORIGINAL language — translation is done server-side in anime.ts.
    """
    data = request.get_json(silent=True) or {}
    url = (data.get("url") or "").strip()
    duration = max(30, min(int(data.get("duration", 120)), 300))

    if not url:
        return jsonify({"error": "url required"}), 400

    # In-memory cache (survives the process lifetime)
    cache_key = f"t:{hash(url[:200])}:{duration}"
    entry = _cache.get(cache_key)
    if entry and time.time() - entry["ts"] < CACHE_TTL:
        return jsonify(entry["data"])

    wav_path = None
    try:
        model = get_model()
        wav_path = extract_audio(url, duration)

        segments_gen, info = model.transcribe(
            wav_path,
            task="transcribe",
            beam_size=5,
            language=None,          # auto-detect
            vad_filter=True,
            vad_parameters={"min_silence_duration_ms": 400},
        )

        lang = info.language or "unknown"
        cues = []
        for seg in segments_gen:
            text = (seg.text or "").strip()
            if text:
                cues.append({
                    "start": round(seg.start, 3),
                    "end":   round(seg.end,   3),
                    "text":  text,
                })

        result = {
            "language":             lang,
            "language_ar":          LANG_NAMES.get(lang, lang),
            "language_probability": round(info.language_probability, 3),
            "cues":                 cues,
        }

        _cache[cache_key] = {"data": result, "ts": time.time()}
        return jsonify(result)

    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        if wav_path and os.path.exists(wav_path):
            try: os.unlink(wav_path)
            except: pass


if __name__ == "__main__":
    port = int(os.environ.get("WHISPER_PORT", "9000"))
    print(f"[whisper] Starting on port {port}", flush=True)
    app.run(host="0.0.0.0", port=port, debug=False, threaded=True)
