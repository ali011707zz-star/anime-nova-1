package wc;

/* compiled from: Atomic.kt */
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public d<?> f15473a;

    public abstract void a(d<?> dVar, Object obj);

    public final d<?> b() {
        d<?> dVar = this.f15473a;
        if (dVar != null) {
            return dVar;
        }
        jc.l.v("atomicOp");
        return null;
    }

    public abstract Object c(d<?> dVar);

    public final void d(d<?> dVar) {
        this.f15473a = dVar;
    }
}
