package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.e0;
import androidx.lifecycle.k;

/* compiled from: ProcessLifecycleOwner.java */
/* loaded from: classes.dex */
public class d0 implements q {

    /* renamed from: n, reason: collision with root package name */
    public static final d0 f2465n = new d0();

    /* renamed from: j, reason: collision with root package name */
    public Handler f2470j;

    /* renamed from: f, reason: collision with root package name */
    public int f2466f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f2467g = 0;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2468h = true;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2469i = true;

    /* renamed from: k, reason: collision with root package name */
    public final s f2471k = new s(this);

    /* renamed from: l, reason: collision with root package name */
    public Runnable f2472l = new a();

    /* renamed from: m, reason: collision with root package name */
    public e0.a f2473m = new b();

    /* compiled from: ProcessLifecycleOwner.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.this.f();
            d0.this.g();
        }
    }

    /* compiled from: ProcessLifecycleOwner.java */
    /* loaded from: classes.dex */
    public class b implements e0.a {
        public b() {
        }

        @Override // androidx.lifecycle.e0.a
        public void a() {
        }

        @Override // androidx.lifecycle.e0.a
        public void onResume() {
            d0.this.b();
        }

        @Override // androidx.lifecycle.e0.a
        public void onStart() {
            d0.this.c();
        }
    }

    /* compiled from: ProcessLifecycleOwner.java */
    /* loaded from: classes.dex */
    public class c extends h {

        /* compiled from: ProcessLifecycleOwner.java */
        /* loaded from: classes.dex */
        public class a extends h {
            public a() {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostResumed(Activity activity) {
                d0.this.b();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostStarted(Activity activity) {
                d0.this.c();
            }
        }

        public c() {
        }

        @Override // androidx.lifecycle.h, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (Build.VERSION.SDK_INT < 29) {
                e0.f(activity).h(d0.this.f2473m);
            }
        }

        @Override // androidx.lifecycle.h, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            d0.this.a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            activity.registerActivityLifecycleCallbacks(new a());
        }

        @Override // androidx.lifecycle.h, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            d0.this.d();
        }
    }

    public static q h() {
        return f2465n;
    }

    public static void i(Context context) {
        f2465n.e(context);
    }

    public void a() {
        int i10 = this.f2467g - 1;
        this.f2467g = i10;
        if (i10 == 0) {
            this.f2470j.postDelayed(this.f2472l, 700L);
        }
    }

    public void b() {
        int i10 = this.f2467g + 1;
        this.f2467g = i10;
        if (i10 == 1) {
            if (this.f2468h) {
                this.f2471k.h(k.b.ON_RESUME);
                this.f2468h = false;
            } else {
                this.f2470j.removeCallbacks(this.f2472l);
            }
        }
    }

    public void c() {
        int i10 = this.f2466f + 1;
        this.f2466f = i10;
        if (i10 == 1 && this.f2469i) {
            this.f2471k.h(k.b.ON_START);
            this.f2469i = false;
        }
    }

    public void d() {
        this.f2466f--;
        g();
    }

    public void e(Context context) {
        this.f2470j = new Handler();
        this.f2471k.h(k.b.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new c());
    }

    public void f() {
        if (this.f2467g == 0) {
            this.f2468h = true;
            this.f2471k.h(k.b.ON_PAUSE);
        }
    }

    public void g() {
        if (this.f2466f == 0 && this.f2468h) {
            this.f2471k.h(k.b.ON_STOP);
            this.f2469i = true;
        }
    }

    @Override // androidx.lifecycle.q
    public k getLifecycle() {
        return this.f2471k;
    }
}
