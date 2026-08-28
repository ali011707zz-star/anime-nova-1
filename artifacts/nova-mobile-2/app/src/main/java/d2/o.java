package d2;

import android.annotation.SuppressLint;

/* compiled from: Operation.java */
/* loaded from: classes.dex */
public interface o {

    /* renamed from: a, reason: collision with root package name */
    @SuppressLint({"SyntheticAccessor"})
    public static final b.c f5585a = new b.c();

    /* renamed from: b, reason: collision with root package name */
    @SuppressLint({"SyntheticAccessor"})
    public static final b.C0098b f5586b = new b.C0098b();

    /* compiled from: Operation.java */
    /* loaded from: classes.dex */
    public static abstract class b {

        /* compiled from: Operation.java */
        /* loaded from: classes.dex */
        public static final class a extends b {

            /* renamed from: a, reason: collision with root package name */
            public final Throwable f5587a;

            public a(Throwable th) {
                this.f5587a = th;
            }

            public Throwable a() {
                return this.f5587a;
            }

            public String toString() {
                return String.format("FAILURE (%s)", this.f5587a.getMessage());
            }
        }

        /* compiled from: Operation.java */
        /* renamed from: d2.o$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0098b extends b {
            public String toString() {
                return "IN_PROGRESS";
            }

            public C0098b() {
            }
        }

        /* compiled from: Operation.java */
        /* loaded from: classes.dex */
        public static final class c extends b {
            public String toString() {
                return "SUCCESS";
            }

            public c() {
            }
        }
    }

}
