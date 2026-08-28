package wc;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: LockFreeTaskQueue.kt */
/* loaded from: classes2.dex */
public class q<E> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15524a = AtomicReferenceFieldUpdater.newUpdater(q.class, Object.class, "_cur");
    private volatile /* synthetic */ Object _cur;

    public q(boolean z10) {
        this._cur = new r(8, z10);
    }

    public final boolean a(E e10) {
        while (true) {
            r rVar = (r) this._cur;
            int a10 = rVar.a(e10);
            if (a10 == 0) {
                return true;
            }
            if (a10 == 1) {
                ad.c.a(f15524a, this, rVar, rVar.i());
            } else if (a10 == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            r rVar = (r) this._cur;
            if (rVar.d()) {
                return;
            } else {
                ad.c.a(f15524a, this, rVar, rVar.i());
            }
        }
    }

    public final int c() {
        return ((r) this._cur).f();
    }

    public final E d() {
        while (true) {
            r rVar = (r) this._cur;
            E e10 = (E) rVar.j();
            if (e10 != r.f15528h) {
                return e10;
            }
            ad.c.a(f15524a, this, rVar, rVar.i());
        }
    }
}
