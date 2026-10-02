package mb;

import android.view.View;

/* compiled from: ViewState.kt */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final l f11097a;

    /* renamed from: b, reason: collision with root package name */
    public final l f11098b;

    /* JADX WARN: Multi-variable type inference failed */
    public m() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public m(l lVar, l lVar2) {
        jc.l.f(lVar, "paddings");
        jc.l.f(lVar2, "margins");
        this.f11097a = lVar;
        this.f11098b = lVar2;
    }

    public final l a() {
        return this.f11098b;
    }

    public final l b() {
        return this.f11097a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return jc.l.a(this.f11097a, mVar.f11097a) && jc.l.a(this.f11098b, mVar.f11098b);
    }

    public int hashCode() {
        l lVar = this.f11097a;
        int hashCode = (lVar != null ? lVar.hashCode() : 0) * 31;
        l lVar2 = this.f11098b;
        return hashCode + (lVar2 != null ? lVar2.hashCode() : 0);
    }

    public String toString() {
        return "ViewState(paddings=" + this.f11097a + ", margins=" + this.f11098b + ")";
    }

    public /* synthetic */ m(l lVar, l lVar2, int i10, jc.g gVar) {
        this((i10 & 1) != 0 ? l.f11091e : lVar, (i10 & 2) != 0 ? l.f11091e : lVar2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public m(View view) {
        this(r0, r2);
        l d10;
        l c10;
        jc.l.f(view, "view");
        d10 = n.d(view);
        c10 = n.c(view);
    }
}
