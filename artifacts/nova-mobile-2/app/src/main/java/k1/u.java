package k1;

/* compiled from: LoadState.kt */
/* loaded from: classes.dex */
public abstract class u {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f9813a;

    /* compiled from: LoadState.kt */
    /* loaded from: classes.dex */
    public static final class a extends u {

        /* renamed from: b, reason: collision with root package name */
        public final Throwable f9814b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Throwable th) {
            super(false, null);
            jc.l.f(th, "error");
            this.f9814b = th;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (a() == aVar.a() && jc.l.a(this.f9814b, aVar.f9814b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return t.a(a()) + this.f9814b.hashCode();
        }

        public String toString() {
            return "Error(endOfPaginationReached=" + a() + ", error=" + this.f9814b + ')';
        }
    }

    /* compiled from: LoadState.kt */
    /* loaded from: classes.dex */
    public static final class b extends u {

        /* renamed from: b, reason: collision with root package name */
        public static final b f9815b = new b();

        public b() {
            super(false, null);
        }

        public boolean equals(Object obj) {
            return (obj instanceof b) && a() == ((b) obj).a();
        }

        public int hashCode() {
            return t.a(a());
        }

        public String toString() {
            return "Loading(endOfPaginationReached=" + a() + ')';
        }
    }

    /* compiled from: LoadState.kt */
    /* loaded from: classes.dex */
    public static final class c extends u {

        /* renamed from: d, reason: collision with root package name */
        public static final a f9818d = new a(null);

        /* renamed from: b, reason: collision with root package name */
        public static final c f9816b = new c(true);

        /* renamed from: c, reason: collision with root package name */
        public static final c f9817c = new c(false);

        /* compiled from: LoadState.kt */
        /* loaded from: classes.dex */
        public static final class a {
            public a() {
            }

            public final c a() {
                return c.f9816b;
            }

            public final c b() {
                return c.f9817c;
            }

            public /* synthetic */ a(jc.g gVar) {
                this();
            }
        }

        public c(boolean z10) {
            super(z10, null);
        }

        public boolean equals(Object obj) {
            return (obj instanceof c) && a() == ((c) obj).a();
        }

        public int hashCode() {
            return t.a(a());
        }

        public String toString() {
            return "NotLoading(endOfPaginationReached=" + a() + ')';
        }
    }

    public u(boolean z10) {
        this.f9813a = z10;
    }

    public final boolean a() {
        return this.f9813a;
    }

    public /* synthetic */ u(boolean z10, jc.g gVar) {
        this(z10);
    }
}
