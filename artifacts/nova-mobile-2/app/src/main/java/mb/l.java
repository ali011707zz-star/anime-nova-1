package mb;

/* compiled from: ViewDimensions.kt */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final int f11093a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11094b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11095c;

    /* renamed from: d, reason: collision with root package name */
    public final int f11096d;

    /* renamed from: f, reason: collision with root package name */
    public static final a f11092f = new a(null);

    /* renamed from: e, reason: collision with root package name */
    public static final l f11091e = new l(0, 0, 0, 0);

    /* compiled from: ViewDimensions.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public l(int i10, int i11, int i12, int i13) {
        this.f11093a = i10;
        this.f11094b = i11;
        this.f11095c = i12;
        this.f11096d = i13;
    }

    public final int a() {
        return this.f11096d;
    }

    public final int b() {
        return this.f11093a;
    }

    public final int c() {
        return this.f11095c;
    }

    public final int d() {
        return this.f11094b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f11093a == lVar.f11093a && this.f11094b == lVar.f11094b && this.f11095c == lVar.f11095c && this.f11096d == lVar.f11096d;
    }

    public int hashCode() {
        return (((((this.f11093a * 31) + this.f11094b) * 31) + this.f11095c) * 31) + this.f11096d;
    }

    public String toString() {
        return "ViewDimensions(left=" + this.f11093a + ", top=" + this.f11094b + ", right=" + this.f11095c + ", bottom=" + this.f11096d + ")";
    }
}
