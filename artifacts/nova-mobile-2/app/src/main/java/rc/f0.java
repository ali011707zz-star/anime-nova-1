package rc;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: CompletionState.kt */
/* loaded from: classes2.dex */
public class f0 {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f13253b = AtomicIntegerFieldUpdater.newUpdater(f0.class, "_handled");
    private volatile /* synthetic */ int _handled;

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f13254a;

    public f0(Throwable th, boolean z10) {
        this.f13254a = th;
        this._handled = z10 ? 1 : 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean a() {
        return this._handled;
    }

    public final boolean b() {
        return f13253b.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return v0.a(this) + '[' + this.f13254a + ']';
    }

    public /* synthetic */ f0(Throwable th, boolean z10, int i10, jc.g gVar) {
        this(th, (i10 & 2) != 0 ? false : z10);
    }
}
