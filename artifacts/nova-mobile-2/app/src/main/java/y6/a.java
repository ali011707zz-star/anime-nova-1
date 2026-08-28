package y6;

/* compiled from: ServerViewModel.kt */
/* loaded from: classes.dex */
public abstract class a {

    /* compiled from: ServerViewModel.kt */
    /* renamed from: y6.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0430a extends a {

        /* renamed from: a, reason: collision with root package name */
        public final Exception f16445a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0430a(Exception exc) {
            super(null);
            jc.l.f(exc, "exception");
            this.f16445a = exc;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0430a) && jc.l.a(this.f16445a, ((C0430a) obj).f16445a);
        }

        public int hashCode() {
            return this.f16445a.hashCode();
        }

        public String toString() {
            return "Error(exception=" + this.f16445a + ')';
        }
    }

    /* compiled from: ServerViewModel.kt */
    /* loaded from: classes.dex */
    public static final class b extends a {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16446a = new b();

        public b() {
            super(null);
        }
    }

    /* compiled from: ServerViewModel.kt */
    /* loaded from: classes.dex */
    public static final class c extends a {

        /* renamed from: a, reason: collision with root package name */
        public final int f16447a;

        public c(int i10) {
            super(null);
            this.f16447a = i10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && this.f16447a == ((c) obj).f16447a;
        }

        public int hashCode() {
            return this.f16447a;
        }

        public String toString() {
            return "Success(rating=" + this.f16447a + ')';
        }
    }

    public a() {
    }

    public /* synthetic */ a(jc.g gVar) {
        this();
    }
}
