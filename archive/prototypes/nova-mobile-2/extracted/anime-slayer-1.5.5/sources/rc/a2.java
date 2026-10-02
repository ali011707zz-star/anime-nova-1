package rc;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class a2 extends d2 {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f13229k = AtomicIntegerFieldUpdater.newUpdater(a2.class, "_invoked");
    private volatile /* synthetic */ int _invoked = 0;

    /* renamed from: j, reason: collision with root package name */
    public final ic.l<Throwable, vb.p> f13230j;

    /* JADX WARN: Multi-variable type inference failed */
    public a2(ic.l<? super Throwable, vb.p> lVar) {
        this.f13230j = lVar;
    }

    @Override // rc.h0
    public void U(Throwable th) {
        if (f13229k.compareAndSet(this, 0, 1)) {
            this.f13230j.invoke(th);
        }
    }

    @Override // ic.l
    public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
        U(th);
        return vb.p.f15031a;
    }
}
