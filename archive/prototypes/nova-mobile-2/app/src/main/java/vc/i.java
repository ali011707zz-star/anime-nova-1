package vc;

import ac.g;

/* compiled from: SafeCollector.kt */
/* loaded from: classes2.dex */
public final class i implements g.b {

    /* renamed from: h, reason: collision with root package name */
    public static final a f15072h = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public final Throwable f15073f;

    /* renamed from: g, reason: collision with root package name */
    public final g.c<?> f15074g = f15072h;

    /* compiled from: SafeCollector.kt */
    /* loaded from: classes2.dex */
    public static final class a implements g.c<i> {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public i(Throwable th) {
        this.f15073f = th;
    }

    @Override // ac.g
    public <R> R fold(R r10, ic.p<? super R, ? super g.b, ? extends R> pVar) {
        return (R) g.b.a.a(this, r10, pVar);
    }

    @Override // ac.g.b, ac.g
    public <E extends g.b> E get(g.c<E> cVar) {
        return (E) g.b.a.b(this, cVar);
    }

    @Override // ac.g.b
    public g.c<?> getKey() {
        return this.f15074g;
    }

    @Override // ac.g
    public ac.g minusKey(g.c<?> cVar) {
        return g.b.a.c(this, cVar);
    }

    @Override // ac.g
    public ac.g plus(ac.g gVar) {
        return g.b.a.d(this, gVar);
    }
}
