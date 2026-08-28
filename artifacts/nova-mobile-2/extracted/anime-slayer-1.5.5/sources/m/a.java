package m;

import java.util.HashMap;
import java.util.Map;
import m.b;

/* compiled from: FastSafeIterableMap.java */
/* loaded from: classes.dex */
public class a<K, V> extends b<K, V> {

    /* renamed from: j, reason: collision with root package name */
    public HashMap<K, b.c<K, V>> f10631j = new HashMap<>();

    @Override // m.b
    public b.c<K, V> c(K k10) {
        return this.f10631j.get(k10);
    }

    public boolean contains(K k10) {
        return this.f10631j.containsKey(k10);
    }

    @Override // m.b
    public V g(K k10, V v10) {
        b.c<K, V> c10 = c(k10);
        if (c10 != null) {
            return c10.f10637g;
        }
        this.f10631j.put(k10, f(k10, v10));
        return null;
    }

    @Override // m.b
    public V h(K k10) {
        V v10 = (V) super.h(k10);
        this.f10631j.remove(k10);
        return v10;
    }

    public Map.Entry<K, V> i(K k10) {
        if (contains(k10)) {
            return this.f10631j.get(k10).f10639i;
        }
        return null;
    }
}
