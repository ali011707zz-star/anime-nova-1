package k1;

import kotlin.NoWhenBranchMatchedException;

/* compiled from: PageFetcherSnapshot.kt */
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final int f9752a;

    /* renamed from: b, reason: collision with root package name */
    public final h1 f9753b;

    public r(int i10, h1 h1Var) {
        jc.l.f(h1Var, "hint");
        this.f9752a = i10;
        this.f9753b = h1Var;
    }

    public final int a() {
        return this.f9752a;
    }

    public final h1 b() {
        return this.f9753b;
    }

    public final int c(y yVar) {
        jc.l.f(yVar, "loadType");
        int i10 = q.f9746a[yVar.ordinal()];
        if (i10 == 1) {
            throw new IllegalArgumentException("Cannot get presentedItems for loadType: REFRESH");
        }
        if (i10 == 2) {
            return this.f9753b.d();
        }
        if (i10 == 3) {
            return this.f9753b.c();
        }
        throw new NoWhenBranchMatchedException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f9752a == rVar.f9752a && jc.l.a(this.f9753b, rVar.f9753b);
    }

    public int hashCode() {
        int i10 = this.f9752a * 31;
        h1 h1Var = this.f9753b;
        return i10 + (h1Var != null ? h1Var.hashCode() : 0);
    }

    public String toString() {
        return "GenerationalViewportHint(generationId=" + this.f9752a + ", hint=" + this.f9753b + ")";
    }
}
