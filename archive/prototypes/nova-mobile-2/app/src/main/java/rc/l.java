package rc;

import java.util.concurrent.Future;

/* compiled from: Future.kt */
/* loaded from: classes2.dex */
public final class l extends m {

    /* renamed from: f, reason: collision with root package name */
    public final Future<?> f13292f;

    public l(Future<?> future) {
        this.f13292f = future;
    }

    @Override // rc.n
    public void a(Throwable th) {
        if (th != null) {
            this.f13292f.cancel(false);
        }
    }

    @Override // ic.l
    public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
        a(th);
        return vb.p.f15031a;
    }

    public String toString() {
        return "CancelFutureOnCancel[" + this.f13292f + ']';
    }
}
