package rc;

/* compiled from: CancellableContinuationImpl.kt */
/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f13246a;

    /* renamed from: b, reason: collision with root package name */
    public final m f13247b;

    /* renamed from: c, reason: collision with root package name */
    public final ic.l<Throwable, vb.p> f13248c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f13249d;

    /* renamed from: e, reason: collision with root package name */
    public final Throwable f13250e;

    /* JADX WARN: Multi-variable type inference failed */
    public e0(Object obj, m mVar, ic.l<? super Throwable, vb.p> lVar, Object obj2, Throwable th) {
        this.f13246a = obj;
        this.f13247b = mVar;
        this.f13248c = lVar;
        this.f13249d = obj2;
        this.f13250e = th;
    }

    public static /* synthetic */ e0 b(e0 e0Var, Object obj, m mVar, ic.l lVar, Object obj2, Throwable th, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = e0Var.f13246a;
        }
        if ((i10 & 2) != 0) {
            mVar = e0Var.f13247b;
        }
        m mVar2 = mVar;
        if ((i10 & 4) != 0) {
            lVar = e0Var.f13248c;
        }
        ic.l lVar2 = lVar;
        if ((i10 & 8) != 0) {
            obj2 = e0Var.f13249d;
        }
        Object obj4 = obj2;
        if ((i10 & 16) != 0) {
            th = e0Var.f13250e;
        }
        return e0Var.a(obj, mVar2, lVar2, obj4, th);
    }

    public final e0 a(Object obj, m mVar, ic.l<? super Throwable, vb.p> lVar, Object obj2, Throwable th) {
        return new e0(obj, mVar, lVar, obj2, th);
    }

    public final boolean c() {
        return this.f13250e != null;
    }

    public final void d(p<?> pVar, Throwable th) {
        m mVar = this.f13247b;
        if (mVar != null) {
            pVar.k(mVar, th);
        }
        ic.l<Throwable, vb.p> lVar = this.f13248c;
        if (lVar == null) {
            return;
        }
        pVar.m(lVar, th);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        return jc.l.a(this.f13246a, e0Var.f13246a) && jc.l.a(this.f13247b, e0Var.f13247b) && jc.l.a(this.f13248c, e0Var.f13248c) && jc.l.a(this.f13249d, e0Var.f13249d) && jc.l.a(this.f13250e, e0Var.f13250e);
    }

    public int hashCode() {
        Object obj = this.f13246a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        m mVar = this.f13247b;
        int hashCode2 = (hashCode + (mVar == null ? 0 : mVar.hashCode())) * 31;
        ic.l<Throwable, vb.p> lVar = this.f13248c;
        int hashCode3 = (hashCode2 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        Object obj2 = this.f13249d;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f13250e;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public String toString() {
        return "CompletedContinuation(result=" + this.f13246a + ", cancelHandler=" + this.f13247b + ", onCancellation=" + this.f13248c + ", idempotentResume=" + this.f13249d + ", cancelCause=" + this.f13250e + ')';
    }

    public /* synthetic */ e0(Object obj, m mVar, ic.l lVar, Object obj2, Throwable th, int i10, jc.g gVar) {
        this(obj, (i10 & 2) != 0 ? null : mVar, (i10 & 4) != 0 ? null : lVar, (i10 & 8) != 0 ? null : obj2, (i10 & 16) != 0 ? null : th);
    }
}
