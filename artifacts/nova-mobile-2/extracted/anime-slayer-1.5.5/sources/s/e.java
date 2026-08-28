package s;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: LruCache.java */
/* loaded from: classes.dex */
public class e<K, V> {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final LinkedHashMap<K, V> map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    public e(int i10) {
        if (i10 > 0) {
            this.maxSize = i10;
            this.map = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int safeSizeOf(K k10, V v10) {
        int sizeOf = sizeOf(k10, v10);
        if (sizeOf >= 0) {
            return sizeOf;
        }
        throw new IllegalStateException("Negative size: " + k10 + "=" + v10);
    }

    public V create(K k10) {
        return null;
    }

    public final synchronized int createCount() {
        return this.createCount;
    }

    public void entryRemoved(boolean z10, K k10, V v10, V v11) {
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final synchronized int evictionCount() {
        return this.evictionCount;
    }

    public final V get(K k10) {
        V v10;
        if (k10 != null) {
            synchronized (this) {
                V v11 = this.map.get(k10);
                if (v11 != null) {
                    this.hitCount++;
                    return v11;
                }
                this.missCount++;
                V create = create(k10);
                if (create == null) {
                    return null;
                }
                synchronized (this) {
                    this.createCount++;
                    v10 = (V) this.map.put(k10, create);
                    if (v10 != null) {
                        this.map.put(k10, v10);
                    } else {
                        this.size += safeSizeOf(k10, create);
                    }
                }
                if (v10 != null) {
                    entryRemoved(false, k10, create, v10);
                    return v10;
                }
                trimToSize(this.maxSize);
                return create;
            }
        }
        throw new NullPointerException("key == null");
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final synchronized int maxSize() {
        return this.maxSize;
    }

    public final synchronized int missCount() {
        return this.missCount;
    }

    public final V put(K k10, V v10) {
        V put;
        if (k10 != null && v10 != null) {
            synchronized (this) {
                this.putCount++;
                this.size += safeSizeOf(k10, v10);
                put = this.map.put(k10, v10);
                if (put != null) {
                    this.size -= safeSizeOf(k10, put);
                }
            }
            if (put != null) {
                entryRemoved(false, k10, put, v10);
            }
            trimToSize(this.maxSize);
            return put;
        }
        throw new NullPointerException("key == null || value == null");
    }

    public final synchronized int putCount() {
        return this.putCount;
    }

    public final V remove(K k10) {
        V remove;
        if (k10 != null) {
            synchronized (this) {
                remove = this.map.remove(k10);
                if (remove != null) {
                    this.size -= safeSizeOf(k10, remove);
                }
            }
            if (remove != null) {
                entryRemoved(false, k10, remove, null);
            }
            return remove;
        }
        throw new NullPointerException("key == null");
    }

    public void resize(int i10) {
        if (i10 > 0) {
            synchronized (this) {
                this.maxSize = i10;
            }
            trimToSize(i10);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final synchronized int size() {
        return this.size;
    }

    public int sizeOf(K k10, V v10) {
        return 1;
    }

    public final synchronized Map<K, V> snapshot() {
        return new LinkedHashMap(this.map);
    }

    public final synchronized String toString() {
        int i10;
        int i11;
        i10 = this.hitCount;
        i11 = this.missCount + i10;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.maxSize), Integer.valueOf(this.hitCount), Integer.valueOf(this.missCount), Integer.valueOf(i11 != 0 ? (i10 * 100) / i11 : 0));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0070, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void trimToSize(int i10) {
        K key;
        V value;
        while (true) {
            synchronized (this) {
                if (this.size >= 0 && (!this.map.isEmpty() || this.size == 0)) {
                    if (this.size <= i10 || this.map.isEmpty()) {
                        break;
                    }
                    Map.Entry<K, V> next = this.map.entrySet().iterator().next();
                    key = next.getKey();
                    value = next.getValue();
                    this.map.remove(key);
                    this.size -= safeSizeOf(key, value);
                    this.evictionCount++;
                } else {
                    break;
                }
            }
            entryRemoved(true, key, value, null);
        }
    }
}
