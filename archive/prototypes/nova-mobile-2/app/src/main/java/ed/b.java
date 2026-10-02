package ed;

import java.util.logging.Level;

/* compiled from: BackgroundPoster.java */
/* loaded from: classes.dex */
public final class b implements Runnable, k {

    /* renamed from: f, reason: collision with root package name */
    public final j f6292f = new j();

    /* renamed from: g, reason: collision with root package name */
    public final c f6293g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f6294h;

    public b(c cVar) {
        this.f6293g = cVar;
    }

    @Override // ed.k
    public void a(p pVar, Object obj) {
        i a10 = i.a(pVar, obj);
        synchronized (this) {
            this.f6292f.a(a10);
            if (!this.f6294h) {
                this.f6294h = true;
                this.f6293g.e().execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                i c10 = this.f6292f.c(1000);
                if (c10 == null) {
                    synchronized (this) {
                        c10 = this.f6292f.b();
                        if (c10 == null) {
                            return;
                        }
                    }
                }
                this.f6293g.h(c10);
            } catch (InterruptedException e10) {
                this.f6293g.f().b(Level.WARNING, Thread.currentThread().getName() + " was interruppted", e10);
                return;
            } finally {
                this.f6294h = false;
            }
        }
    }
}
