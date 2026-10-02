package rc;

/* compiled from: AbstractCoroutine.kt */
/* loaded from: classes2.dex */
public abstract class a<T> extends j2 implements ac.d<T>, q0 {

    /* renamed from: g, reason: collision with root package name */
    public final ac.g f13228g;

    public a(ac.g gVar, boolean z10, boolean z11) {
        super(z11);
        if (z10) {
            f0((c2) gVar.get(c2.f13236c));
        }
        this.f13228g = gVar.plus(this);
    }

    @Override // rc.j2
    public String K() {
        return jc.l.m(v0.a(this), " was cancelled");
    }

    public void N0(Object obj) {
        v(obj);
    }

    public void O0(Throwable th, boolean z10) {
    }

    public void P0(T t10) {
    }

    public final <R> void Q0(s0 s0Var, R r10, ic.p<? super R, ? super ac.d<? super T>, ? extends Object> pVar) {
        s0Var.b(pVar, r10, this);
    }

    @Override // rc.j2, rc.c2
    public boolean b() {
        return super.b();
    }

    @Override // rc.j2
    public final void e0(Throwable th) {
        n0.a(this.f13228g, th);
    }

    @Override // ac.d
    public final ac.g getContext() {
        return this.f13228g;
    }

    @Override // rc.q0
    public ac.g getCoroutineContext() {
        return this.f13228g;
    }

    @Override // rc.j2
    public String q0() {
        String b10 = k0.b(this.f13228g);
        if (b10 == null) {
            return super.q0();
        }
        return '\"' + b10 + "\":" + super.q0();
    }

    @Override // ac.d
    public final void resumeWith(Object obj) {
        Object o02 = o0(i0.d(obj, null, 1, null));
        if (o02 == k2.f13286b) {
            return;
        }
        N0(o02);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // rc.j2
    public final void v0(Object obj) {
        if (obj instanceof f0) {
            f0 f0Var = (f0) obj;
            O0(f0Var.f13254a, f0Var.a());
        } else {
            P0(obj);
        }
    }
}
