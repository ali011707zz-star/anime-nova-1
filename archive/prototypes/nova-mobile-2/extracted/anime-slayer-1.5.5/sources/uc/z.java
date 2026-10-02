package uc;

import rc.u0;

/* compiled from: SharedFlow.kt */
/* loaded from: classes2.dex */
public final class z extends vc.c<x<?>> {

    /* renamed from: a, reason: collision with root package name */
    public long f14676a = -1;

    /* renamed from: b, reason: collision with root package name */
    public ac.d<? super vb.p> f14677b;

    @Override // vc.c
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(x<?> xVar) {
        if (this.f14676a >= 0) {
            return false;
        }
        this.f14676a = xVar.U();
        return true;
    }

    @Override // vc.c
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public ac.d<vb.p>[] b(x<?> xVar) {
        if (u0.a()) {
            if (!(this.f14676a >= 0)) {
                throw new AssertionError();
            }
        }
        long j10 = this.f14676a;
        this.f14676a = -1L;
        this.f14677b = null;
        return xVar.T(j10);
    }
}
