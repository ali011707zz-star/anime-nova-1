package androidx.appcompat.widget;

/* compiled from: RtlSpacingHelper.java */
/* loaded from: classes.dex */
public class n0 {

    /* renamed from: a, reason: collision with root package name */
    public int f1414a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f1415b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f1416c = Integer.MIN_VALUE;

    /* renamed from: d, reason: collision with root package name */
    public int f1417d = Integer.MIN_VALUE;

    /* renamed from: e, reason: collision with root package name */
    public int f1418e = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f1419f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1420g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1421h = false;

    public int a() {
        return this.f1420g ? this.f1414a : this.f1415b;
    }

    public int b() {
        return this.f1414a;
    }

    public int c() {
        return this.f1415b;
    }

    public int d() {
        return this.f1420g ? this.f1415b : this.f1414a;
    }

    public void e(int i10, int i11) {
        this.f1421h = false;
        if (i10 != Integer.MIN_VALUE) {
            this.f1418e = i10;
            this.f1414a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f1419f = i11;
            this.f1415b = i11;
        }
    }

    public void f(boolean z10) {
        if (z10 == this.f1420g) {
            return;
        }
        this.f1420g = z10;
        if (!this.f1421h) {
            this.f1414a = this.f1418e;
            this.f1415b = this.f1419f;
            return;
        }
        if (z10) {
            int i10 = this.f1417d;
            if (i10 == Integer.MIN_VALUE) {
                i10 = this.f1418e;
            }
            this.f1414a = i10;
            int i11 = this.f1416c;
            if (i11 == Integer.MIN_VALUE) {
                i11 = this.f1419f;
            }
            this.f1415b = i11;
            return;
        }
        int i12 = this.f1416c;
        if (i12 == Integer.MIN_VALUE) {
            i12 = this.f1418e;
        }
        this.f1414a = i12;
        int i13 = this.f1417d;
        if (i13 == Integer.MIN_VALUE) {
            i13 = this.f1419f;
        }
        this.f1415b = i13;
    }

    public void g(int i10, int i11) {
        this.f1416c = i10;
        this.f1417d = i11;
        this.f1421h = true;
        if (this.f1420g) {
            if (i11 != Integer.MIN_VALUE) {
                this.f1414a = i11;
            }
            if (i10 != Integer.MIN_VALUE) {
                this.f1415b = i10;
                return;
            }
            return;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.f1414a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f1415b = i11;
        }
    }
}
