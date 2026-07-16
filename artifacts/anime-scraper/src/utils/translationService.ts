/**
 * Translation Service — Google Translate (مجاني، بدون مفتاح)
 * أسرع وأكثر موثوقية من LibreTranslate
 *
 * الترتيب:
 *   1. cache في الذاكرة (فوري)
 *   2. Google Translate غير الرسمي (client=gtx) — بلا مفتاح
 *   3. MyMemory fallback إذا فشل Google
 */

export interface TranslationResult {
  text: string;
  translatedText: string;
  language: string;
}

// ── In-memory cache ──────────────────────────────────────────────
const translationCache = new Map<string, string>();

// ── Google Translate (client=gtx) — مجاني بلا API key ──────────
async function googleTranslate(
  text: string,
  to: string,
  from: string = 'auto'
): Promise<string> {
  const url =
    `https://translate.googleapis.com/translate_a/single` +
    `?client=gtx&sl=${from}&tl=${to}&dt=t&q=${encodeURIComponent(text)}`;

  const resp = await fetch(url, {
    headers: {
      'User-Agent':
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124.0.0.0 Safari/537.36',
    },
    signal: AbortSignal.timeout(8000),
  });

  if (!resp.ok) throw new Error(`Google Translate HTTP ${resp.status}`);

  const data = await resp.json();
  // data[0] = [[translated, original, ...], ...]
  if (!Array.isArray(data?.[0])) throw new Error('Unexpected Google Translate response shape');
  const translated = (data[0] as any[][])
    .map((chunk) => (Array.isArray(chunk) ? chunk[0] : '') ?? '')
    .join('');

  if (!translated) throw new Error('Empty response');
  return translated;
}

// ── MyMemory fallback ────────────────────────────────────────────
async function myMemoryTranslate(
  text: string,
  to: string,
  from: string = 'en'
): Promise<string> {
  const langPair = `${from}|${to}`;
  const url = `https://api.mymemory.translated.net/get?q=${encodeURIComponent(
    text
  )}&langpair=${langPair}`;

  const resp = await fetch(url, { signal: AbortSignal.timeout(8000) });
  if (!resp.ok) throw new Error(`MyMemory HTTP ${resp.status}`);

  const data = await resp.json();
  const translated =
    data?.responseData?.translatedText ||
    data?.matches?.[0]?.translation;

  if (!translated) throw new Error('Empty MyMemory response');
  return translated;
}

// ── Main entry ───────────────────────────────────────────────────
export async function translateText(
  text: string,
  targetLang: string = 'ar',
  sourceLang: string = 'auto'
): Promise<string> {
  if (!text || text.trim().length === 0) return text;

  const cacheKey = `${sourceLang}→${targetLang}:${text}`;
  if (translationCache.has(cacheKey)) {
    return translationCache.get(cacheKey)!;
  }

  let result: string;

  try {
    result = await googleTranslate(text, targetLang, sourceLang);
  } catch (err) {
    console.warn('[Translation] Google failed, trying MyMemory:', err);
    try {
      const from = sourceLang === 'auto' ? 'en' : sourceLang;
      result = await myMemoryTranslate(text, targetLang, from);
    } catch (err2) {
      console.error('[Translation] Both providers failed:', err2);
      return text; // أعد النص الأصلي عند الفشل
    }
  }

  translationCache.set(cacheKey, result);
  return result;
}

// ── Batch translation (مع rate-limiting لتجنب 429) ──────────────
export async function translateBatch(
  texts: string[],
  targetLang: string = 'ar',
  sourceLang: string = 'auto'
): Promise<string[]> {
  if (texts.length === 0) return [];

  const CHUNK_SIZE = 8;   // ترجم 8 نصوص في المرة
  const DELAY_MS   = 120; // 120ms بين الدُفعات لتجنب rate limit

  const results: string[] = new Array(texts.length);

  for (let i = 0; i < texts.length; i += CHUNK_SIZE) {
    const chunk = texts.slice(i, i + CHUNK_SIZE);
    const translated = await Promise.all(
      chunk.map((t) => translateText(t, targetLang, sourceLang))
    );
    for (let j = 0; j < translated.length; j++) {
      results[i + j] = translated[j];
    }
    if (i + CHUNK_SIZE < texts.length) {
      await new Promise((r) => setTimeout(r, DELAY_MS));
    }
  }

  return results;
}

// ── Cache helpers ────────────────────────────────────────────────
export function clearTranslationCache() {
  translationCache.clear();
}

export function getTranslationCacheStats() {
  return {
    size: translationCache.size,
    entries: Array.from(translationCache.keys()).slice(0, 20),
  };
}
