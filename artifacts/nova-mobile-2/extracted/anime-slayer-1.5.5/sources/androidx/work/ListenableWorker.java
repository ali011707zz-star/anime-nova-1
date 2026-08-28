package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import d2.x;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class ListenableWorker {

    /* renamed from: f, reason: collision with root package name */
    public Context f3283f;

    /* renamed from: g, reason: collision with root package name */
    public WorkerParameters f3284g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f3285h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3286i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3287j;

    /* loaded from: classes.dex */
    public static abstract class a {

        /* renamed from: androidx.work.ListenableWorker$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0057a extends a {

            /* renamed from: a, reason: collision with root package name */
            public final androidx.work.a f3288a;

            public C0057a() {
                this(androidx.work.a.f3306c);
            }

            public androidx.work.a e() {
                return this.f3288a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0057a.class != obj.getClass()) {
                    return false;
                }
                return this.f3288a.equals(((C0057a) obj).f3288a);
            }

            public int hashCode() {
                return (C0057a.class.getName().hashCode() * 31) + this.f3288a.hashCode();
            }

            public String toString() {
                return "Failure {mOutputData=" + this.f3288a + '}';
            }

            public C0057a(androidx.work.a aVar) {
                this.f3288a = aVar;
            }
        }

        /* loaded from: classes.dex */
        public static final class b extends a {
            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && b.class == obj.getClass();
            }

            public int hashCode() {
                return b.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }

        /* loaded from: classes.dex */
        public static final class c extends a {

            /* renamed from: a, reason: collision with root package name */
            public final androidx.work.a f3289a;

            public c() {
                this(androidx.work.a.f3306c);
            }

            public androidx.work.a e() {
                return this.f3289a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || c.class != obj.getClass()) {
                    return false;
                }
                return this.f3289a.equals(((c) obj).f3289a);
            }

            public int hashCode() {
                return (c.class.getName().hashCode() * 31) + this.f3289a.hashCode();
            }

            public String toString() {
                return "Success {mOutputData=" + this.f3289a + '}';
            }

            public c(androidx.work.a aVar) {
                this.f3289a = aVar;
            }
        }

        public static a a() {
            return new C0057a();
        }

        public static a b() {
            return new b();
        }

        public static a c() {
            return new c();
        }

        public static a d(androidx.work.a aVar) {
            return new c(aVar);
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters != null) {
            this.f3283f = context;
            this.f3284g = workerParameters;
            return;
        }
        throw new IllegalArgumentException("WorkerParameters is null");
    }

    public final Context a() {
        return this.f3283f;
    }

    public Executor b() {
        return this.f3284g.a();
    }

    public final UUID e() {
        return this.f3284g.b();
    }

    public final androidx.work.a f() {
        return this.f3284g.c();
    }

    public p2.a g() {
        return this.f3284g.d();
    }

    public x h() {
        return this.f3284g.e();
    }

    public boolean i() {
        return this.f3287j;
    }

    public final boolean j() {
        return this.f3285h;
    }

    public final boolean k() {
        return this.f3286i;
    }

    public void l() {
    }

    public final void m() {
        this.f3286i = true;
    }

    public abstract w9.a<a> n();

    public final void o() {
        this.f3285h = true;
        l();
    }
}
