package k1;

/* compiled from: ViewportHint.kt */
/* loaded from: classes.dex */
public abstract class h1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f9495a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9496b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9497c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9498d;

    /* compiled from: ViewportHint.kt */
    /* loaded from: classes.dex */
    public static final class a extends h1 {

        /* renamed from: e, reason: collision with root package name */
        public final int f9499e;

        /* renamed from: f, reason: collision with root package name */
        public final int f9500f;

        public a(int i10, int i11, int i12, int i13, int i14, int i15) {
            super(i12, i13, i14, i15, null);
            this.f9499e = i10;
            this.f9500f = i11;
        }

        public final int e() {
            return this.f9500f;
        }

        @Override // k1.h1
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f9499e == aVar.f9499e && this.f9500f == aVar.f9500f && d() == aVar.d() && c() == aVar.c() && a() == aVar.a() && b() == aVar.b();
        }

        public final int f() {
            return this.f9499e;
        }

        @Override // k1.h1
        public int hashCode() {
            return super.hashCode() + this.f9499e + this.f9500f;
        }

        public String toString() {
            return qc.m.h("ViewportHint.Access(\n            |    pageOffset=" + this.f9499e + ",\n            |    indexInPage=" + this.f9500f + ",\n            |    presentedItemsBefore=" + d() + ",\n            |    presentedItemsAfter=" + c() + ",\n            |    originalPageOffsetFirst=" + a() + ",\n            |    originalPageOffsetLast=" + b() + ",\n            |)", null, 1, null);
        }
    }

    /* compiled from: ViewportHint.kt */
    /* loaded from: classes.dex */
    public static final class b extends h1 {
        public b(int i10, int i11, int i12, int i13) {
            super(i10, i11, i12, i13, null);
        }

        public String toString() {
            return qc.m.h("ViewportHint.Initial(\n            |    presentedItemsBefore=" + d() + ",\n            |    presentedItemsAfter=" + c() + ",\n            |    originalPageOffsetFirst=" + a() + ",\n            |    originalPageOffsetLast=" + b() + ",\n            |)", null, 1, null);
        }
    }

    public h1(int i10, int i11, int i12, int i13) {
        this.f9495a = i10;
        this.f9496b = i11;
        this.f9497c = i12;
        this.f9498d = i13;
    }

    public final int a() {
        return this.f9497c;
    }

    public final int b() {
        return this.f9498d;
    }

    public final int c() {
        return this.f9496b;
    }

    public final int d() {
        return this.f9495a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h1)) {
            return false;
        }
        h1 h1Var = (h1) obj;
        return this.f9495a == h1Var.f9495a && this.f9496b == h1Var.f9496b && this.f9497c == h1Var.f9497c && this.f9498d == h1Var.f9498d;
    }

    public int hashCode() {
        return this.f9495a + this.f9496b + this.f9497c + this.f9498d;
    }

    public /* synthetic */ h1(int i10, int i11, int i12, int i13, jc.g gVar) {
        this(i10, i11, i12, i13);
    }
}
