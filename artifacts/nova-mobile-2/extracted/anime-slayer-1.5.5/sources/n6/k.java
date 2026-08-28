package n6;

/* compiled from: ProfileViewModel.kt */
/* loaded from: classes.dex */
public abstract class k {

    /* compiled from: ProfileViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends k {

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f11304a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Throwable th) {
            super(null);
            jc.l.f(th, "throwable");
            this.f11304a = th;
        }

        public final Throwable a() {
            return this.f11304a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && jc.l.a(this.f11304a, ((a) obj).f11304a);
        }

        public int hashCode() {
            return this.f11304a.hashCode();
        }

        public String toString() {
            return "AccessTokenTimeOut(throwable=" + this.f11304a + ')';
        }
    }

    /* compiled from: ProfileViewModel.kt */
    /* loaded from: classes.dex */
    public static final class b extends k {

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f11305a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Throwable th) {
            super(null);
            jc.l.f(th, "throwable");
            this.f11305a = th;
        }

        public final Throwable a() {
            return this.f11305a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && jc.l.a(this.f11305a, ((b) obj).f11305a);
        }

        public int hashCode() {
            return this.f11305a.hashCode();
        }

        public String toString() {
            return "Error(throwable=" + this.f11305a + ')';
        }
    }

    /* compiled from: ProfileViewModel.kt */
    /* loaded from: classes.dex */
    public static final class c extends k {

        /* renamed from: a, reason: collision with root package name */
        public final w4.e f11306a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(w4.e eVar) {
            super(null);
            jc.l.f(eVar, "user");
            this.f11306a = eVar;
        }

        public final w4.e a() {
            return this.f11306a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && jc.l.a(this.f11306a, ((c) obj).f11306a);
        }

        public int hashCode() {
            return this.f11306a.hashCode();
        }

        public String toString() {
            return "UserLogged(user=" + this.f11306a + ')';
        }
    }

    public k() {
    }

    public /* synthetic */ k(jc.g gVar) {
        this();
    }
}
