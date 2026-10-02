package rc;

import java.util.concurrent.Executor;

/* compiled from: Executors.kt */
/* loaded from: classes2.dex */
public final class f1 implements Executor {

    /* renamed from: f, reason: collision with root package name */
    public final l0 f13255f;

    public f1(l0 l0Var) {
        this.f13255f = l0Var;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f13255f.H0(ac.h.f543f, runnable);
    }

    public String toString() {
        return this.f13255f.toString();
    }
}
