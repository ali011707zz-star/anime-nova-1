package androidx.lifecycle;

import m.b;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MediatorLiveData.java */
/* loaded from: classes.dex */
public class w<T> extends y<T> {

    /* renamed from: l, reason: collision with root package name */
    public b<LiveData<?>, a<?>> f2538l = new b<>();

    /* compiled from: MediatorLiveData.java */
    /* loaded from: classes.dex */
    public static class a<V> implements z<V> {

        /* renamed from: f, reason: collision with root package name */
        public final LiveData<V> f2539f;

        /* renamed from: g, reason: collision with root package name */
        public final z<? super V> f2540g;

        /* renamed from: h, reason: collision with root package name */
        public int f2541h = -1;

        public a(LiveData<V> liveData, z<? super V> zVar) {
            this.f2539f = liveData;
            this.f2540g = zVar;
        }

        @Override // androidx.lifecycle.z
        public void B(V v10) {
            if (this.f2541h != this.f2539f.g()) {
                this.f2541h = this.f2539f.g();
                this.f2540g.B(v10);
            }
        }

        public void a() {
            this.f2539f.j(this);
        }

        public void b() {
            this.f2539f.n(this);
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void k() {
        Iterator<Map.Entry<LiveData<?>, a<?>>> it2 = this.f2538l.iterator();
        while (it2.hasNext()) {
            it2.next().getValue().a();
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void l() {
        Iterator<Map.Entry<LiveData<?>, a<?>>> it2 = this.f2538l.iterator();
        while (it2.hasNext()) {
            it2.next().getValue().b();
        }
    }

    public <S> void p(LiveData<S> liveData, z<? super S> zVar) {
        a<?> aVar = new a<>(liveData, zVar);
        a<?> g10 = this.f2538l.g(liveData, aVar);
        if (g10 != null && g10.f2540g != zVar) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (g10 == null && h()) {
            aVar.a();
        }
    }
}
