package tc;

import kotlinx.coroutines.channels.ClosedReceiveChannelException;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import rc.u0;
import rc.v0;
import wc.a0;
import wc.o;

/* compiled from: AbstractChannel.kt */
/* loaded from: classes2.dex */
public final class m<E> extends w implements u<E> {

    /* renamed from: i, reason: collision with root package name */
    public final Throwable f14164i;

    public m(Throwable th) {
        this.f14164i = th;
    }

    @Override // tc.w
    public void U() {
    }

    @Override // tc.w
    public void W(m<?> mVar) {
        if (u0.a()) {
            throw new AssertionError();
        }
    }

    @Override // tc.w
    public a0 X(o.c cVar) {
        a0 a0Var = rc.q.f13321a;
        if (cVar != null) {
            cVar.d();
        }
        return a0Var;
    }

    @Override // tc.u
    /* renamed from: Z, reason: merged with bridge method [inline-methods] */
    public m<E> o() {
        return this;
    }

    @Override // tc.w
    /* renamed from: a0, reason: merged with bridge method [inline-methods] */
    public m<E> V() {
        return this;
    }

    public final Throwable b0() {
        Throwable th = this.f14164i;
        return th == null ? new ClosedReceiveChannelException("Channel was closed") : th;
    }

    public final Throwable c0() {
        Throwable th = this.f14164i;
        return th == null ? new ClosedSendChannelException("Channel was closed") : th;
    }

    @Override // tc.u
    public void h(E e10) {
    }

    @Override // tc.u
    public a0 s(E e10, o.c cVar) {
        a0 a0Var = rc.q.f13321a;
        if (cVar != null) {
            cVar.d();
        }
        return a0Var;
    }

    @Override // wc.o
    public String toString() {
        return "Closed@" + v0.b(this) + '[' + this.f14164i + ']';
    }
}
