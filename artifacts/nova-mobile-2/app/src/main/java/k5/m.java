package k5;

/* compiled from: AuthSelectionViewModel.kt */
/* loaded from: classes.dex */
public abstract class m {

    /* compiled from: AuthSelectionViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends m {

        /* renamed from: a, reason: collision with root package name */
        public final String f9984a;

        public a(String str) {
            super(null);
            this.f9984a = str;
        }

        public final String a() {
            return this.f9984a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && jc.l.a(this.f9984a, ((a) obj).f9984a);
        }

        public int hashCode() {
            String str = this.f9984a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "Error(message=" + ((Object) this.f9984a) + ')';
        }
    }

    /* compiled from: AuthSelectionViewModel.kt */
    /* loaded from: classes.dex */
    public static final class b extends m {

        /* renamed from: a, reason: collision with root package name */
        public static final b f9985a = new b();

        public b() {
            super(null);
        }
    }

    /* compiled from: AuthSelectionViewModel.kt */
    /* loaded from: classes.dex */
    public static final class c extends m {

        /* renamed from: a, reason: collision with root package name */
        public static final c f9986a = new c();

        public c() {
            super(null);
        }
    }

    public m() {
    }

    public /* synthetic */ m(jc.g gVar) {
        this();
    }
}
