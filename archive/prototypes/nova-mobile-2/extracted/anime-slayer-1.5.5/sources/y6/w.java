package y6;

import com.google.android.gms.common.internal.ImagesContract;

/* compiled from: ServerItem.kt */
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public final String f16582a;

    /* renamed from: b, reason: collision with root package name */
    public y f16583b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f16584c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16585d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f16586e;

    public w(String str, y yVar, boolean z10, boolean z11, boolean z12) {
        jc.l.f(str, ImagesContract.URL);
        jc.l.f(yVar, "status");
        this.f16582a = str;
        this.f16583b = yVar;
        this.f16584c = z10;
        this.f16585d = z11;
        this.f16586e = z12;
    }

    public final y a() {
        return this.f16583b;
    }

    public final String b() {
        return this.f16582a;
    }

    public final boolean c() {
        return this.f16586e;
    }

    public final boolean d() {
        return this.f16583b == y.NOT_WORKING;
    }

    public final boolean e() {
        return this.f16585d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return jc.l.a(this.f16582a, wVar.f16582a) && this.f16583b == wVar.f16583b && this.f16584c == wVar.f16584c && this.f16585d == wVar.f16585d && this.f16586e == wVar.f16586e;
    }

    public final boolean f() {
        return this.f16584c;
    }

    public final void g(y yVar) {
        jc.l.f(yVar, "<set-?>");
        this.f16583b = yVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.f16582a.hashCode() * 31) + this.f16583b.hashCode()) * 31;
        boolean z10 = this.f16584c;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode + i10) * 31;
        boolean z11 = this.f16585d;
        int i12 = z11;
        if (z11 != 0) {
            i12 = 1;
        }
        int i13 = (i11 + i12) * 31;
        boolean z12 = this.f16586e;
        return i13 + (z12 ? 1 : z12 ? 1 : 0);
    }

    public String toString() {
        return "ServerItem(url=" + this.f16582a + ", status=" + this.f16583b + ", isOptional=" + this.f16584c + ", isEnabled=" + this.f16585d + ", isBackup=" + this.f16586e + ')';
    }

    public /* synthetic */ w(String str, y yVar, boolean z10, boolean z11, boolean z12, int i10, jc.g gVar) {
        this(str, (i10 & 2) != 0 ? y.NORMAL_DEFAULT : yVar, z10, (i10 & 8) != 0 ? true : z11, (i10 & 16) != 0 ? false : z12);
    }
}
