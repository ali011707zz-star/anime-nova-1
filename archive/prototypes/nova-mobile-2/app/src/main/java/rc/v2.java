package rc;

/* compiled from: Executors.kt */
/* loaded from: classes2.dex */
public final class v2 implements Runnable {

    /* renamed from: f, reason: collision with root package name */
    public final l0 f13344f;

    /* renamed from: g, reason: collision with root package name */
    public final o<vb.p> f13345g;

    /* JADX WARN: Multi-variable type inference failed */
    public v2(l0 l0Var, o<? super vb.p> oVar) {
        this.f13344f = l0Var;
        this.f13345g = oVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f13345g.l(this.f13344f, vb.p.f15031a);
    }
}
