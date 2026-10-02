package rc;

/* compiled from: CompletionState.kt */
/* loaded from: classes2.dex */
public final class g0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f13260a;

    /* renamed from: b, reason: collision with root package name */
    public final ic.l<Throwable, vb.p> f13261b;

    /* JADX WARN: Multi-variable type inference failed */
    public g0(Object obj, ic.l<? super Throwable, vb.p> lVar) {
        this.f13260a = obj;
        this.f13261b = lVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return jc.l.a(this.f13260a, g0Var.f13260a) && jc.l.a(this.f13261b, g0Var.f13261b);
    }

    public int hashCode() {
        Object obj = this.f13260a;
        return ((obj == null ? 0 : obj.hashCode()) * 31) + this.f13261b.hashCode();
    }

    public String toString() {
        return "CompletedWithCancellation(result=" + this.f13260a + ", onCancellation=" + this.f13261b + ')';
    }
}
