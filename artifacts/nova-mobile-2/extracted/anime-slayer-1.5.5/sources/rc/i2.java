package rc;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public abstract class i2 extends h0 implements i1, x1 {

    /* renamed from: i, reason: collision with root package name */
    public j2 f13271i;

    public final j2 V() {
        j2 j2Var = this.f13271i;
        if (j2Var != null) {
            return j2Var;
        }
        jc.l.v("job");
        return null;
    }

    public final void W(j2 j2Var) {
        this.f13271i = j2Var;
    }

    @Override // rc.x1
    public boolean b() {
        return true;
    }

    @Override // rc.i1
    public void e() {
        V().A0(this);
    }

    @Override // rc.x1
    public o2 t() {
        return null;
    }

    @Override // wc.o
    public String toString() {
        return v0.a(this) + '@' + v0.b(this) + "[job@" + v0.b(V()) + ']';
    }
}
