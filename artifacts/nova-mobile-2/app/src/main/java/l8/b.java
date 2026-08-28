package l8;

/* compiled from: CachedHashCodeArrayMap.java */
/* loaded from: classes.dex */
public final class b<K, V> extends s.a<K, V> {

    /* renamed from: n, reason: collision with root package name */
    public int f10514n;

    @Override // s.g, java.util.Map
    public void clear() {
        this.f10514n = 0;
        super.clear();
    }

    @Override // s.g, java.util.Map
    public int hashCode() {
        if (this.f10514n == 0) {
            this.f10514n = super.hashCode();
        }
        return this.f10514n;
    }

    @Override // s.g
    public void j(s.g<? extends K, ? extends V> gVar) {
        this.f10514n = 0;
        super.j(gVar);
    }

    @Override // s.g
    public V k(int i10) {
        this.f10514n = 0;
        return (V) super.k(i10);
    }

    @Override // s.g
    public V l(int i10, V v10) {
        this.f10514n = 0;
        return (V) super.l(i10, v10);
    }

    @Override // s.g, java.util.Map
    public V put(K k10, V v10) {
        this.f10514n = 0;
        return (V) super.put(k10, v10);
    }
}
