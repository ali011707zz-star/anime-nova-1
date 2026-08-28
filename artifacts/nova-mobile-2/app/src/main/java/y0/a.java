package y0;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import java.util.ArrayList;
import s.g;

/* compiled from: AnimationHandler.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: g, reason: collision with root package name */
    public static final ThreadLocal<a> f16269g = new ThreadLocal<>();

    /* renamed from: d, reason: collision with root package name */
    public c f16273d;

    /* renamed from: a, reason: collision with root package name */
    public final g<b, Long> f16270a = new g<>();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList<b> f16271b = new ArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    public final C0422a f16272c = new C0422a();

    /* renamed from: e, reason: collision with root package name */
    public long f16274e = 0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f16275f = false;

    /* compiled from: AnimationHandler.java */
    /* renamed from: y0.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0422a {
        public C0422a() {
        }

        public void a() {
            a.this.f16274e = SystemClock.uptimeMillis();
            a aVar = a.this;
            aVar.c(aVar.f16274e);
            if (a.this.f16271b.size() > 0) {
                a.this.e().a();
            }
        }
    }

    /* compiled from: AnimationHandler.java */
    /* loaded from: classes.dex */
    public interface b {
        boolean a(long j10);
    }

    /* compiled from: AnimationHandler.java */
    /* loaded from: classes.dex */
    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        public final C0422a f16277a;

        public c(C0422a c0422a) {
            this.f16277a = c0422a;
        }

        public abstract void a();
    }

    /* compiled from: AnimationHandler.java */
    /* loaded from: classes.dex */
    public static class d extends c {

        /* renamed from: b, reason: collision with root package name */
        public final Runnable f16278b;

        /* renamed from: c, reason: collision with root package name */
        public final Handler f16279c;

        /* renamed from: d, reason: collision with root package name */
        public long f16280d;

        /* compiled from: AnimationHandler.java */
        /* renamed from: y0.a$d$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0423a implements Runnable {
            public RunnableC0423a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.f16280d = SystemClock.uptimeMillis();
                d.this.f16277a.a();
            }
        }

        public d(C0422a c0422a) {
            super(c0422a);
            this.f16280d = -1L;
            this.f16278b = new RunnableC0423a();
            this.f16279c = new Handler(Looper.myLooper());
        }

        @Override // y0.a.c
        public void a() {
            this.f16279c.postDelayed(this.f16278b, Math.max(10 - (SystemClock.uptimeMillis() - this.f16280d), 0L));
        }
    }

    /* compiled from: AnimationHandler.java */
    /* loaded from: classes.dex */
    public static class e extends c {

        /* renamed from: b, reason: collision with root package name */
        public final Choreographer f16282b;

        /* renamed from: c, reason: collision with root package name */
        public final Choreographer.FrameCallback f16283c;

        /* compiled from: AnimationHandler.java */
        /* renamed from: y0.a$e$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class ChoreographerFrameCallbackC0424a implements Choreographer.FrameCallback {
            public ChoreographerFrameCallbackC0424a() {
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j10) {
                e.this.f16277a.a();
            }
        }

        public e(C0422a c0422a) {
            super(c0422a);
            this.f16282b = Choreographer.getInstance();
            this.f16283c = new ChoreographerFrameCallbackC0424a();
        }

        @Override // y0.a.c
        public void a() {
            this.f16282b.postFrameCallback(this.f16283c);
        }
    }

    public static a d() {
        ThreadLocal<a> threadLocal = f16269g;
        if (threadLocal.get() == null) {
            threadLocal.set(new a());
        }
        return threadLocal.get();
    }

    public void a(b bVar, long j10) {
        if (this.f16271b.size() == 0) {
            e().a();
        }
        if (!this.f16271b.contains(bVar)) {
            this.f16271b.add(bVar);
        }
        if (j10 > 0) {
            this.f16270a.put(bVar, Long.valueOf(SystemClock.uptimeMillis() + j10));
        }
    }

    public final void b() {
        if (this.f16275f) {
            for (int size = this.f16271b.size() - 1; size >= 0; size--) {
                if (this.f16271b.get(size) == null) {
                    this.f16271b.remove(size);
                }
            }
            this.f16275f = false;
        }
    }

    public void c(long j10) {
        long uptimeMillis = SystemClock.uptimeMillis();
        for (int i10 = 0; i10 < this.f16271b.size(); i10++) {
            b bVar = this.f16271b.get(i10);
            if (bVar != null && f(bVar, uptimeMillis)) {
                bVar.a(j10);
            }
        }
        b();
    }

    public c e() {
        if (this.f16273d == null) {
            if (Build.VERSION.SDK_INT >= 16) {
                this.f16273d = new e(this.f16272c);
            } else {
                this.f16273d = new d(this.f16272c);
            }
        }
        return this.f16273d;
    }

    public final boolean f(b bVar, long j10) {
        Long l10 = this.f16270a.get(bVar);
        if (l10 == null) {
            return true;
        }
        if (l10.longValue() >= j10) {
            return false;
        }
        this.f16270a.remove(bVar);
        return true;
    }

    public void g(b bVar) {
        this.f16270a.remove(bVar);
        int indexOf = this.f16271b.indexOf(bVar);
        if (indexOf >= 0) {
            this.f16271b.set(indexOf, null);
            this.f16275f = true;
        }
    }
}
