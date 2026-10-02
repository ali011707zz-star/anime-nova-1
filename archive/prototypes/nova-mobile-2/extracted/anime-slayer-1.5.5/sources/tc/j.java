package tc;

/* compiled from: Channel.kt */
/* loaded from: classes2.dex */
public final class j<T> {

    /* renamed from: b, reason: collision with root package name */
    public static final b f14160b = new b(null);

    /* renamed from: c, reason: collision with root package name */
    public static final c f14161c = new c();

    /* renamed from: a, reason: collision with root package name */
    public final Object f14162a;

    /* compiled from: Channel.kt */
    /* loaded from: classes2.dex */
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f14163a;

        public a(Throwable th) {
            this.f14163a = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && jc.l.a(this.f14163a, ((a) obj).f14163a);
        }

        public int hashCode() {
            Throwable th = this.f14163a;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // tc.j.c
        public String toString() {
            return "Closed(" + this.f14163a + ')';
        }
    }

    /* compiled from: Channel.kt */
    /* loaded from: classes2.dex */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(jc.g gVar) {
            this();
        }

        public final <E> Object a(Throwable th) {
            return j.c(new a(th));
        }

        public final <E> Object b() {
            return j.c(j.f14161c);
        }

        public final <E> Object c(E e10) {
            return j.c(e10);
        }
    }

    /* compiled from: Channel.kt */
    /* loaded from: classes2.dex */
    public static class c {
        public String toString() {
            return "Failed";
        }
    }

    public /* synthetic */ j(Object obj) {
        this.f14162a = obj;
    }

    public static final /* synthetic */ j b(Object obj) {
        return new j(obj);
    }

    public static <T> Object c(Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof j) && jc.l.a(obj, ((j) obj2).k());
    }

    public static final Throwable e(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        if (aVar == null) {
            return null;
        }
        return aVar.f14163a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final T f(Object obj) {
        Throwable th;
        if (!(obj instanceof c)) {
            return obj;
        }
        if (!(obj instanceof a) || (th = ((a) obj).f14163a) == null) {
            throw new IllegalStateException(jc.l.m("Trying to call 'getOrThrow' on a failed channel result: ", obj).toString());
        }
        throw th;
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean h(Object obj) {
        return obj instanceof a;
    }

    public static final boolean i(Object obj) {
        return !(obj instanceof c);
    }

    public static String j(Object obj) {
        if (obj instanceof a) {
            return obj.toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f14162a, obj);
    }

    public int hashCode() {
        return g(this.f14162a);
    }

    public final /* synthetic */ Object k() {
        return this.f14162a;
    }

    public String toString() {
        return j(this.f14162a);
    }
}
