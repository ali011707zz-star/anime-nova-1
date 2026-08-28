package rc;

import java.util.concurrent.Future;

/* compiled from: Executors.kt */
/* loaded from: classes2.dex */
public final class h1 implements i1 {

    /* renamed from: f, reason: collision with root package name */
    public final Future<?> f13268f;

    public h1(Future<?> future) {
        this.f13268f = future;
    }

    @Override // rc.i1
    public void e() {
        this.f13268f.cancel(false);
    }

    public String toString() {
        return "DisposableFutureHandle[" + this.f13268f + ']';
    }
}
