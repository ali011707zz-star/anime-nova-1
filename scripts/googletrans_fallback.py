#!/usr/bin/env python3
"""One-shot googletrans fallback used only when the Node provider fails.

Input is passed as JSON on argv so subtitle text never needs shell quoting.
The process is intentionally short-lived: it is a fallback, not a resident
translation service consuming VPS memory.
"""

from __future__ import annotations

import json
import asyncio
import sys

from googletrans import Translator


def main() -> int:
    if len(sys.argv) != 2:
        return 2
    request = json.loads(sys.argv[1])
    text = str(request.get("text", "")).strip()
    source = str(request.get("from", "auto")).strip() or "auto"
    target = str(request.get("to", "ar")).strip() or "ar"
    if not text or source == target:
        print(text)
        return 0
    translated = asyncio.run(
        Translator().translate(text[:5000], src=source, dest=target)
    ).text
    print(str(translated).strip())
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except Exception:
        raise SystemExit(1)