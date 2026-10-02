package rc;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: CompletionState.kt */
/* loaded from: classes2.dex */
public final class s extends f0 {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f13324c = AtomicIntegerFieldUpdater.newUpdater(s.class, "_resumed");
    private volatile /* synthetic */ int _resumed;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public s(ac.d<?> dVar, Throwable th, boolean z10) {
        super(th, z10);
        if (th == null) {
            th = new CancellationException("Continuation " + dVar + " was cancelled normally");
        }
        this._resumed = 0;
    }

    public final boolean c() {
        return f13324c.compareAndSet(this, 0, 1);
    }
}
