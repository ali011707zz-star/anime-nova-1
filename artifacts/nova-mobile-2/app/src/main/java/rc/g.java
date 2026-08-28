package rc;

import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.locks.LockSupport;

/* compiled from: Builders.kt */
/* loaded from: classes2.dex */
public final class g<T> extends a<T> {

    /* renamed from: h, reason: collision with root package name */
    public final Thread f13258h;

    /* renamed from: i, reason: collision with root package name */
    public final m1 f13259i;

    public g(ac.g gVar, Thread thread, m1 m1Var) {
        super(gVar, true, true);
        this.f13258h = thread;
        this.f13259i = m1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T R0() {
        c.a();
        try {
            m1 m1Var = this.f13259i;
            if (m1Var != null) {
                m1.Q0(m1Var, false, 1, null);
            }
            while (!Thread.interrupted()) {
                try {
                    m1 m1Var2 = this.f13259i;
                    long T0 = m1Var2 == null ? RecyclerView.FOREVER_NS : m1Var2.T0();
                    if (g0()) {
                        c.a();
                        T t10 = (T) k2.h(b0());
                        r3 = t10 instanceof f0 ? (f0) t10 : null;
                        if (r3 == null) {
                            return t10;
                        }
                        throw r3.f13254a;
                    }
                    c.a();
                    LockSupport.parkNanos(this, T0);
                } finally {
                    m1 m1Var3 = this.f13259i;
                    if (m1Var3 != null) {
                        m1.L0(m1Var3, false, 1, null);
                    }
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            D(interruptedException);
            throw interruptedException;
        } catch (Throwable th) {
            c.a();
            throw th;
        }
    }

    @Override // rc.j2
    public boolean i0() {
        return true;
    }

    @Override // rc.j2
    public void v(Object obj) {
        if (jc.l.a(Thread.currentThread(), this.f13258h)) {
            return;
        }
        Thread thread = this.f13258h;
        c.a();
        LockSupport.unpark(thread);
    }
}
