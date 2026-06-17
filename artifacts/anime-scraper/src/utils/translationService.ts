/**
 * Translation Service (Libre Translate)
 * خدمة ترجمة تعمل بدون مفتاح API (مجانية)
 */

export interface TranslationResult {
  text: string;
  translatedText: string;
  language: string;
}

// Simple in-memory cache for translations
const translationCache = new Map<string, string>();

/**
 * Translate text using Libre Translate (free, no API key needed)
 */
export async function translateText(
  text: string,
  targetLang: string = 'ar'
): Promise<string> {
  if (!text || text.trim().length === 0) return text;

  // Check cache first
  const cacheKey = `${text}:${targetLang}`;
  if (translationCache.has(cacheKey)) {
    return translationCache.get(cacheKey)!;
  }

  try {
    // Detect source language (default: en)
    const detectionResponse = await fetch('https://api.libretranslate.de/detect', {
      method: 'POST',
      body: JSON.stringify({ q: text }),
      headers: { 'Content-Type': 'application/json' },
    });

    if (!detectionResponse.ok) throw new Error('Detection failed');

    const detected = await detectionResponse.json();
    const sourceLang = detected.result?.language || 'en';

    // Only translate if source and target are different
    if (sourceLang === targetLang) {
      translationCache.set(cacheKey, text);
      return text;
    }

    // Translate
    const response = await fetch('https://api.libretranslate.de/translate', {
      method: 'POST',
      body: JSON.stringify({
        q: text,
        source: sourceLang,
        target: targetLang,
      }),
      headers: { 'Content-Type': 'application/json' },
    });

    if (!response.ok) throw new Error('Translation failed');

    const result = await response.json();
    const translated = result.translatedText || text;

    // Cache result
    translationCache.set(cacheKey, translated);
    return translated;
  } catch (error) {
    console.error('[Translation Service] Error:', error);
    // Return original text on error
    return text;
  }
}

/**
 * Translate multiple texts in parallel
 */
export async function translateBatch(
  texts: string[],
  targetLang: string = 'ar'
): Promise<string[]> {
  const promises = texts.map((text) => translateText(text, targetLang));
  return Promise.all(promises);
}

/**
 * Clear translation cache
 */
export function clearTranslationCache() {
  translationCache.clear();
}

/**
 * Get cache stats
 */
export function getTranslationCacheStats() {
  return {
    size: translationCache.size,
    entries: Array.from(translationCache.keys()),
  };
}
