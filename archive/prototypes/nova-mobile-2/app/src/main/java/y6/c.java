package y6;

/* compiled from: ServerViewModel.kt */
/* loaded from: classes.dex */
public abstract class c {

    /* compiled from: ServerViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public static final a f16452a = new a();

        public a() {
            super(null);
        }
    }

    /* compiled from: ServerViewModel.kt */
    /* loaded from: classes.dex */
    public static final class b extends c {

        /* renamed from: a, reason: collision with root package name */
        public final p4.k f16453a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(p4.k kVar) {
            super(null);
            jc.l.f(kVar, "episode");
            this.f16453a = kVar;
        }

        public final p4.k a() {
            return this.f16453a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && jc.l.a(this.f16453a, ((b) obj).f16453a);
        }

        public int hashCode() {
            return this.f16453a.hashCode();
        }

        public String toString() {
            return "Loaded(episode=" + this.f16453a + ')';
        }
    }

    /* compiled from: ServerViewModel.kt */
    /* renamed from: y6.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0431c extends c {

        /* renamed from: a, reason: collision with root package name */
        public static final C0431c f16454a = new C0431c();

        public C0431c() {
            super(null);
        }
    }

    public c() {
    }

    public /* synthetic */ c(jc.g gVar) {
        this();
    }
}
