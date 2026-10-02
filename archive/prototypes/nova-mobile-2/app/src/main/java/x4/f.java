package x4;

import jc.g;
import jc.l;

/* compiled from: ResultResponse.kt */
/* loaded from: classes.dex */
public abstract class f<T> {

    /* compiled from: ResultResponse.kt */
    /* loaded from: classes.dex */
    public static final class a extends f {

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f15985a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Throwable th) {
            super(null);
            l.f(th, "throwable");
            this.f15985a = th;
        }

        public final Throwable a() {
            return this.f15985a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && l.a(this.f15985a, ((a) obj).f15985a);
        }

        public int hashCode() {
            return this.f15985a.hashCode();
        }

        public String toString() {
            return "Error(throwable=" + this.f15985a + ')';
        }
    }

    /* compiled from: ResultResponse.kt */
    /* loaded from: classes.dex */
    public static final class b<T> extends f<T> {

        /* renamed from: a, reason: collision with root package name */
        public final T f15986a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(T t10) {
            super(null);
            l.f(t10, "data");
            this.f15986a = t10;
        }

        public final T a() {
            return this.f15986a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && l.a(this.f15986a, ((b) obj).f15986a);
        }

        public int hashCode() {
            return this.f15986a.hashCode();
        }

        public String toString() {
            return "Succeed(data=" + this.f15986a + ')';
        }
    }

    public f() {
    }

    public /* synthetic */ f(g gVar) {
        this();
    }
}
