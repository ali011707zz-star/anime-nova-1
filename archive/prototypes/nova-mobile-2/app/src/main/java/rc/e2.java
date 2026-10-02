package rc;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public class e2 extends j2 implements d0 {

    /* renamed from: g, reason: collision with root package name */
    public final boolean f13251g;

    public e2(c2 c2Var) {
        super(true);
        f0(c2Var);
        this.f13251g = N0();
    }

    public final boolean N0() {
        u Z = Z();
        v vVar = Z instanceof v ? (v) Z : null;
        if (vVar == null) {
            return false;
        }
        j2 V = vVar.V();
        while (!V.W()) {
            u Z2 = V.Z();
            v vVar2 = Z2 instanceof v ? (v) Z2 : null;
            if (vVar2 == null) {
                return false;
            }
            V = vVar2.V();
        }
        return true;
    }

    @Override // rc.j2
    public boolean W() {
        return this.f13251g;
    }

    @Override // rc.j2
    public boolean X() {
        return true;
    }
}
