package s;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: ArrayMap.java */
/* loaded from: classes.dex */
public class a<K, V> extends g<K, V> implements Map<K, V> {

    /* renamed from: m, reason: collision with root package name */
    public f<K, V> f13557m;

    /* compiled from: ArrayMap.java */
    /* renamed from: s.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0335a extends f<K, V> {
        public C0335a() {
        }

        @Override // s.f
        public void a() {
            a.this.clear();
        }

        @Override // s.f
        public Object b(int i10, int i11) {
            return a.this.f13598g[(i10 << 1) + i11];
        }

        @Override // s.f
        public Map<K, V> c() {
            return a.this;
        }

        @Override // s.f
        public int d() {
            return a.this.f13599h;
        }

        @Override // s.f
        public int e(Object obj) {
            return a.this.f(obj);
        }

        @Override // s.f
        public int f(Object obj) {
            return a.this.h(obj);
        }

        @Override // s.f
        public void g(K k10, V v10) {
            a.this.put(k10, v10);
        }

        @Override // s.f
        public void h(int i10) {
            a.this.k(i10);
        }

        @Override // s.f
        public V i(int i10, V v10) {
            return a.this.l(i10, v10);
        }
    }

    public a() {
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return n().l();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return n().m();
    }

    public final f<K, V> n() {
        if (this.f13557m == null) {
            this.f13557m = new C0335a();
        }
        return this.f13557m;
    }

    public boolean o(Collection<?> collection) {
        return f.p(this, collection);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        c(this.f13599h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return n().n();
    }

    public a(int i10) {
        super(i10);
    }

    public a(g gVar) {
        super(gVar);
    }
}
