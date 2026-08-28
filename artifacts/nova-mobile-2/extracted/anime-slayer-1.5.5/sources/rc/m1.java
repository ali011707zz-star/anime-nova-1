package rc;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: EventLoop.common.kt */
/* loaded from: classes2.dex */
public abstract class m1 extends l0 {

    /* renamed from: g, reason: collision with root package name */
    public long f13298g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f13299h;

    /* renamed from: i, reason: collision with root package name */
    public wc.a<d1<?>> f13300i;

    public static /* synthetic */ void L0(m1 m1Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        m1Var.K0(z10);
    }

    public static /* synthetic */ void Q0(m1 m1Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        m1Var.P0(z10);
    }

    public final void K0(boolean z10) {
        long M0 = this.f13298g - M0(z10);
        this.f13298g = M0;
        if (M0 > 0) {
            return;
        }
        if (u0.a()) {
            if (!(this.f13298g == 0)) {
                throw new AssertionError();
            }
        }
        if (this.f13299h) {
            shutdown();
        }
    }

    public final long M0(boolean z10) {
        return z10 ? 4294967296L : 1L;
    }

    public final void N0(d1<?> d1Var) {
        wc.a<d1<?>> aVar = this.f13300i;
        if (aVar == null) {
            aVar = new wc.a<>();
            this.f13300i = aVar;
        }
        aVar.a(d1Var);
    }

    public long O0() {
        wc.a<d1<?>> aVar = this.f13300i;
        if (aVar == null || aVar.c()) {
            return RecyclerView.FOREVER_NS;
        }
        return 0L;
    }

    public final void P0(boolean z10) {
        this.f13298g += M0(z10);
        if (z10) {
            return;
        }
        this.f13299h = true;
    }

    public final boolean R0() {
        return this.f13298g >= M0(true);
    }

    public final boolean S0() {
        wc.a<d1<?>> aVar = this.f13300i;
        if (aVar == null) {
            return true;
        }
        return aVar.c();
    }

    public long T0() {
        if (U0()) {
            return 0L;
        }
        return RecyclerView.FOREVER_NS;
    }

    public final boolean U0() {
        d1<?> d10;
        wc.a<d1<?>> aVar = this.f13300i;
        if (aVar == null || (d10 = aVar.d()) == null) {
            return false;
        }
        d10.run();
        return true;
    }

    public boolean V0() {
        return false;
    }

    public void shutdown() {
    }
}
