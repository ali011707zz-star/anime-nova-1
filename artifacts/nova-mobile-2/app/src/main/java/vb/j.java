package vb;

import java.io.Serializable;

/* compiled from: Result.kt */
/* loaded from: classes2.dex */
public final class j<T> implements Serializable {

    /* renamed from: f, reason: collision with root package name */
    public static final a f15020f = new a(null);

    /* compiled from: Result.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: Result.kt */
    /* loaded from: classes2.dex */
    public static final class b implements Serializable {

        /* renamed from: f, reason: collision with root package name */
        public final Throwable f15021f;

        public b(Throwable th) {
            jc.l.f(th, "exception");
            this.f15021f = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof b) && jc.l.a(this.f15021f, ((b) obj).f15021f);
        }

        public int hashCode() {
            return this.f15021f.hashCode();
        }

        public String toString() {
            return "Failure(" + this.f15021f + ')';
        }
    }

    public static <T> Object a(Object obj) {
        return obj;
    }

    public static final Throwable b(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).f15021f;
        }
        return null;
    }

    public static final boolean c(Object obj) {
        return obj instanceof b;
    }

    public static final boolean d(Object obj) {
        return !(obj instanceof b);
    }
}
