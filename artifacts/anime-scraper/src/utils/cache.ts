/**
 * Cache with TTL support — in-memory L1 + optional localStorage L2
 * L2 persistence يجعل البيانات تبقى بعد تحديث الصفحة
 */

interface CacheEntry<T> {
  data: T;
  timestamp: number;
}

class Cache<T> {
  private store: Map<string, CacheEntry<T>> = new Map();
  private ttl: number; // milliseconds
  private lsKey?: string;

  constructor(ttlSeconds: number = 300, lsKey?: string) {
    this.ttl = ttlSeconds * 1000;
    this.lsKey = lsKey;
    if (lsKey) this._loadFromStorage();
  }

  private _loadFromStorage(): void {
    try {
      const raw = localStorage.getItem(this.lsKey!);
      if (!raw) return;
      const entries: [string, CacheEntry<T>][] = JSON.parse(raw);
      const now = Date.now();
      for (const [k, v] of entries) {
        if (now - v.timestamp < this.ttl) this.store.set(k, v);
      }
    } catch { /* localStorage غير متاح أو بيانات فاسدة */ }
  }

  private _saveToStorage(): void {
    if (!this.lsKey) return;
    try {
      // احفظ فقط المدخلات الصالحة لتوفير مساحة
      const now = Date.now();
      const valid = Array.from(this.store.entries()).filter(([, v]) => now - v.timestamp < this.ttl);
      localStorage.setItem(this.lsKey, JSON.stringify(valid));
    } catch { /* QuotaExceededError — تجاهل */ }
  }

  set(key: string, value: T): void {
    this.store.set(key, { data: value, timestamp: Date.now() });
    if (this.lsKey) this._saveToStorage();
  }

  get(key: string): T | null {
    const entry = this.store.get(key);
    if (!entry) return null;
    if (Date.now() - entry.timestamp > this.ttl) {
      this.store.delete(key);
      return null;
    }
    return entry.data;
  }

  has(key: string): boolean {
    return this.get(key) !== null;
  }

  clear(): void {
    this.store.clear();
    if (this.lsKey) { try { localStorage.removeItem(this.lsKey); } catch {} }
  }

  invalidate(pattern: RegExp | string): void {
    const keys = Array.from(this.store.keys());
    keys.forEach((key) => {
      const match = pattern instanceof RegExp ? pattern.test(key) : key.includes(pattern);
      if (match) this.store.delete(key);
    });
    if (this.lsKey) this._saveToStorage();
  }
}

// episodeCache + animeCache يُحفظان في localStorage — يبقيان بعد تحديث الصفحة
// sourceCache بدون localStorage — روابط CDN تنتهي صلاحيتها بسرعة
export const episodeCache = new Cache<any>(600,  'nova_ep_cache');
export const animeCache   = new Cache<any>(3600, 'nova_anime_cache');
export const sourceCache  = new Cache<any>(1800);

export default Cache;
