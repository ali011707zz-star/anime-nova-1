package rc;

import ac.e;
import ac.g;

/* compiled from: CoroutineDispatcher.kt */
/* loaded from: classes2.dex */
public abstract class l0 extends ac.a implements ac.e {

    /* renamed from: f, reason: collision with root package name */
    public static final a f13293f = new a(null);

    /* compiled from: CoroutineDispatcher.kt */
    /* loaded from: classes2.dex */
    public static final class a extends ac.b<ac.e, l0> {

        /* compiled from: CoroutineDispatcher.kt */
        /* renamed from: rc.l0$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0326a extends jc.m implements ic.l<g.b, l0> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0326a f13294f = new C0326a();

            public C0326a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final l0 invoke(g.b bVar) {
                if (bVar instanceof l0) {
                    return (l0) bVar;
                }
                return null;
            }
        }

        public a() {
            super(ac.e.f540a, C0326a.f13294f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public l0() {
        super(ac.e.f540a);
    }

    @Override // ac.e
    public final void F(ac.d<?> dVar) {
        ((wc.g) dVar).q();
    }

    public abstract void H0(ac.g gVar, Runnable runnable);

    public void I0(ac.g gVar, Runnable runnable) {
        H0(gVar, runnable);
    }

    public boolean J0(ac.g gVar) {
        return true;
    }

    @Override // ac.e
    public final <T> ac.d<T> c0(ac.d<? super T> dVar) {
        return new wc.g(this, dVar);
    }

    @Override // ac.a, ac.g.b, ac.g
    public <E extends g.b> E get(g.c<E> cVar) {
        return (E) e.a.a(this, cVar);
    }

    @Override // ac.a, ac.g
    public ac.g minusKey(g.c<?> cVar) {
        return e.a.b(this, cVar);
    }

    public String toString() {
        return v0.a(this) + '@' + v0.b(this);
    }
}
