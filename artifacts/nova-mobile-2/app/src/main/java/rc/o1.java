package rc;

import java.util.concurrent.locks.LockSupport;
import rc.n1;

/* compiled from: EventLoop.kt */
/* loaded from: classes2.dex */
public abstract class o1 extends m1 {
    public abstract Thread W0();

    public final void X0(long j10, n1.c cVar) {
        if (u0.a()) {
            if (!(this != w0.f13346l)) {
                throw new AssertionError();
            }
        }
        w0.f13346l.i1(j10, cVar);
    }

    public final void Y0() {
        Thread W0 = W0();
        if (Thread.currentThread() != W0) {
            c.a();
            LockSupport.unpark(W0);
        }
    }
}
