/**
 * Simple in-memory cache with TTL support
 * Improves performance by storing frequently accessed data
 */

interface CacheEntry<T> {
  data: T;
  timestamp: number;
}

class Cache<T> {
  private store: Map<string, CacheEntry<T>> = new Map();
  private ttl: number; // milliseconds

  constructor(ttlSeconds: number = 300) {
    this.ttl = ttlSeconds * 1000;
  }

  set(key: string, value: T): void {
    this.store.set(key, {
      data: value,
      timestamp: Date.now(),
    });
  }

  get(key: string): T | null {
    const entry = this.store.get(key);
    if (!entry) return null;

    const now = Date.now();
    if (now - entry.timestamp > this.ttl) {
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
  }

  invalidate(pattern: RegExp | string): void {
    const keys = Array.from(this.store.keys());
    keys.forEach((key) => {
      if (pattern instanceof RegExp) {
        if (pattern.test(key)) this.store.delete(key);
      } else {
        if (key.includes(pattern)) this.store.delete(key);
      }
    });
  }
}

// Singleton instances for different data types
export const episodeCache = new Cache(600); // 10 minutes
export const sourceCache = new Cache(1800); // 30 minutes
export const animeCache = new Cache(3600); // 1 hour

export default Cache;
