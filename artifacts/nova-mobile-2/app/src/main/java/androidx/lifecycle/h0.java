package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.k;

/* compiled from: ServiceLifecycleDispatcher.java */
/* loaded from: classes.dex */
public class h0 {

    /* renamed from: a, reason: collision with root package name */
    public final s f2496a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f2497b = new Handler();

    /* renamed from: c, reason: collision with root package name */
    public a f2498c;

    /* compiled from: ServiceLifecycleDispatcher.java */
    /* loaded from: classes.dex */
    public static class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final s f2499f;

        /* renamed from: g, reason: collision with root package name */
        public final k.b f2500g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f2501h = false;

        public a(s sVar, k.b bVar) {
            this.f2499f = sVar;
            this.f2500g = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2501h) {
                return;
            }
            this.f2499f.h(this.f2500g);
            this.f2501h = true;
        }
    }

    public h0(q qVar) {
        this.f2496a = new s(qVar);
    }

    public k a() {
        return this.f2496a;
    }

    public void b() {
        f(k.b.ON_START);
    }

    public void c() {
        f(k.b.ON_CREATE);
    }

    public void d() {
        f(k.b.ON_STOP);
        f(k.b.ON_DESTROY);
    }

    public void e() {
        f(k.b.ON_START);
    }

    public final void f(k.b bVar) {
        a aVar = this.f2498c;
        if (aVar != null) {
            aVar.run();
        }
        a aVar2 = new a(this.f2496a, bVar);
        this.f2498c = aVar2;
        this.f2497b.postAtFrontOfQueue(aVar2);
    }
}
