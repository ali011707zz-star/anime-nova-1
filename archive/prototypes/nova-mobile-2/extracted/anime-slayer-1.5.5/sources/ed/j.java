package ed;

/* compiled from: PendingPostQueue.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public i f6348a;

    /* renamed from: b, reason: collision with root package name */
    public i f6349b;

    public synchronized void a(i iVar) {
        try {
            if (iVar != null) {
                i iVar2 = this.f6349b;
                if (iVar2 != null) {
                    iVar2.f6347c = iVar;
                    this.f6349b = iVar;
                } else if (this.f6348a == null) {
                    this.f6349b = iVar;
                    this.f6348a = iVar;
                } else {
                    throw new IllegalStateException("Head present, but no tail");
                }
                notifyAll();
            } else {
                throw new NullPointerException("null cannot be enqueued");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized i b() {
        i iVar;
        iVar = this.f6348a;
        if (iVar != null) {
            i iVar2 = iVar.f6347c;
            this.f6348a = iVar2;
            if (iVar2 == null) {
                this.f6349b = null;
            }
        }
        return iVar;
    }

    public synchronized i c(int i10) throws InterruptedException {
        if (this.f6348a == null) {
            wait(i10);
        }
        return b();
    }
}
