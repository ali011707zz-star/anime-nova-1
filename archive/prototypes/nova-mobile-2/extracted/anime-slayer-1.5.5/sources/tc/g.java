package tc;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.JobCancellationException;
import rc.j2;

/* compiled from: ChannelCoroutine.kt */
/* loaded from: classes2.dex */
public class g<E> extends rc.a<vb.p> implements f<E> {

    /* renamed from: h, reason: collision with root package name */
    public final f<E> f14159h;

    public g(ac.g gVar, f<E> fVar, boolean z10, boolean z11) {
        super(gVar, z10, z11);
        this.f14159h = fVar;
    }

    @Override // rc.j2
    public void H(Throwable th) {
        CancellationException G0 = j2.G0(this, th, null, 1, null);
        this.f14159h.d(G0);
        D(G0);
    }

    public final f<E> R0() {
        return this.f14159h;
    }

    @Override // rc.j2, rc.c2
    public final void d(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(K(), null, this);
        }
        H(cancellationException);
    }

    @Override // tc.x
    public void e(ic.l<? super Throwable, vb.p> lVar) {
        this.f14159h.e(lVar);
    }

    @Override // tc.x
    public boolean f(E e10) {
        return this.f14159h.f(e10);
    }

    @Override // tc.x
    public boolean g(Throwable th) {
        return this.f14159h.g(th);
    }

    @Override // tc.t
    public Object i(ac.d<? super j<? extends E>> dVar) {
        Object i10 = this.f14159h.i(dVar);
        bc.c.d();
        return i10;
    }

    @Override // tc.t
    public h<E> iterator() {
        return this.f14159h.iterator();
    }

    @Override // tc.t
    public zc.c<j<E>> j() {
        return this.f14159h.j();
    }

    @Override // tc.x
    public Object m(E e10) {
        return this.f14159h.m(e10);
    }

    @Override // tc.x
    public boolean o() {
        return this.f14159h.o();
    }

    @Override // tc.x
    public Object p(E e10, ac.d<? super vb.p> dVar) {
        return this.f14159h.p(e10, dVar);
    }
}
