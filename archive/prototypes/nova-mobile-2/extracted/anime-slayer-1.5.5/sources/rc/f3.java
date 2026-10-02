package rc;

/* compiled from: CoroutineContext.kt */
/* loaded from: classes2.dex */
public final class f3<T> extends wc.y<T> {

    /* renamed from: i, reason: collision with root package name */
    public ac.g f13256i;

    /* renamed from: j, reason: collision with root package name */
    public Object f13257j;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public f3(ac.g gVar, ac.d<? super T> dVar) {
        super(gVar.get(r0) == null ? gVar.plus(r0) : gVar, dVar);
        g3 g3Var = g3.f13266f;
    }

    @Override // wc.y, rc.a
    public void N0(Object obj) {
        ac.g gVar = this.f13256i;
        if (gVar != null) {
            wc.e0.a(gVar, this.f13257j);
            this.f13256i = null;
            this.f13257j = null;
        }
        Object a10 = i0.a(obj, this.f15544h);
        ac.d<T> dVar = this.f15544h;
        ac.g context = dVar.getContext();
        Object c10 = wc.e0.c(context, null);
        f3<?> e10 = c10 != wc.e0.f15479a ? k0.e(dVar, context, c10) : null;
        try {
            this.f15544h.resumeWith(a10);
            vb.p pVar = vb.p.f15031a;
        } finally {
            if (e10 == null || e10.S0()) {
                wc.e0.a(context, c10);
            }
        }
    }

    public final boolean S0() {
        if (this.f13256i == null) {
            return false;
        }
        this.f13256i = null;
        this.f13257j = null;
        return true;
    }

    public final void T0(ac.g gVar, Object obj) {
        this.f13256i = gVar;
        this.f13257j = obj;
    }
}
