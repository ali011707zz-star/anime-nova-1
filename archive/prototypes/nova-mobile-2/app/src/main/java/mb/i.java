package mb;

/* compiled from: Insetter.kt */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public int f11087a;

    /* renamed from: b, reason: collision with root package name */
    public int f11088b;

    /* renamed from: c, reason: collision with root package name */
    public int f11089c;

    /* renamed from: d, reason: collision with root package name */
    public int f11090d;

    public final int a() {
        return this.f11087a | this.f11088b | this.f11089c | this.f11090d;
    }

    public final int b() {
        return this.f11090d;
    }

    public final int c() {
        return this.f11087a;
    }

    public final int d() {
        return this.f11089c;
    }

    public final int e() {
        return this.f11088b;
    }

    public final boolean f() {
        return a() == 0;
    }

    public final i g(int i10) {
        if (f() || i10 == 0) {
            return this;
        }
        i iVar = new i();
        int i11 = i10 ^ (-1);
        iVar.f11087a = this.f11087a & i11;
        iVar.f11088b = this.f11088b & i11;
        iVar.f11089c = this.f11089c & i11;
        iVar.f11090d = i11 & this.f11090d;
        return iVar;
    }

    public final i h(i iVar) {
        jc.l.f(iVar, "other");
        if (iVar.f()) {
            return this;
        }
        i iVar2 = new i();
        iVar2.f11087a = this.f11087a | iVar.f11087a;
        iVar2.f11088b = this.f11088b | iVar.f11088b;
        iVar2.f11089c = this.f11089c | iVar.f11089c;
        iVar2.f11090d = iVar.f11090d | this.f11090d;
        return iVar2;
    }

    public final void i(int i10, int i11) {
        if ((i11 & 1) != 0) {
            this.f11087a |= i10;
        }
        if ((i11 & 2) != 0) {
            this.f11088b |= i10;
        }
        if ((i11 & 4) != 0) {
            this.f11089c |= i10;
        }
        if ((i11 & 8) != 0) {
            this.f11090d = i10 | this.f11090d;
        }
    }
}
