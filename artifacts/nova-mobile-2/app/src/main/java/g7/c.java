package g7;

import jc.g;
import jc.l;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: Result.kt */
/* loaded from: classes.dex */
public abstract class c<R> {

    /* compiled from: Result.kt */
    /* loaded from: classes.dex */
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public final Exception f7021a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Exception exc) {
            super(null);
            l.f(exc, "exception");
            this.f7021a = exc;
        }

        public final Exception a() {
            return this.f7021a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && l.a(this.f7021a, ((a) obj).f7021a);
        }

        public int hashCode() {
            return this.f7021a.hashCode();
        }

        @Override // g7.c
        public String toString() {
            return "Error(exception=" + this.f7021a + ')';
        }
    }

    /* compiled from: Result.kt */
    /* loaded from: classes.dex */
    public static final class b extends c {

        /* renamed from: a, reason: collision with root package name */
        public static final b f7022a = new b();

        public b() {
            super(null);
        }
    }

    /* compiled from: Result.kt */
    /* renamed from: g7.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0133c<T> extends c<T> {

        /* renamed from: a, reason: collision with root package name */
        public final T f7023a;

        public C0133c(T t10) {
            super(null);
            this.f7023a = t10;
        }

        public final T a() {
            return this.f7023a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0133c) && l.a(this.f7023a, ((C0133c) obj).f7023a);
        }

        public int hashCode() {
            T t10 = this.f7023a;
            if (t10 == null) {
                return 0;
            }
            return t10.hashCode();
        }

        @Override // g7.c
        public String toString() {
            return "Success(data=" + this.f7023a + ')';
        }
    }

    public c() {
    }

    public /* synthetic */ c(g gVar) {
        this();
    }

    public String toString() {
        if (this instanceof C0133c) {
            return "Success[data=" + ((C0133c) this).a() + ']';
        }
        if (!(this instanceof a)) {
            if (l.a(this, b.f7022a)) {
                return "Loading";
            }
            throw new NoWhenBranchMatchedException();
        }
        return "Error[exception=" + ((a) this).a() + ']';
    }
}
