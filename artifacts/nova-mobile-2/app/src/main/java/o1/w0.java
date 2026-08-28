package o1;

import ac.g;

/* compiled from: RoomDatabase.kt */
/* loaded from: classes.dex */
public final class w0 implements g.b {

    /* renamed from: g, reason: collision with root package name */
    public static final a f11636g = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public final ac.e f11637f;

    /* compiled from: RoomDatabase.kt */
    /* loaded from: classes.dex */
    public static final class a implements g.c<w0> {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public final ac.e a() {
        return this.f11637f;
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
    public g.c<w0> getKey() {
        return f11636g;
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
