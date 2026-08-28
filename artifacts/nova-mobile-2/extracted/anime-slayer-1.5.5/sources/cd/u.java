package cd;

/* compiled from: PeekSource.kt */
/* loaded from: classes2.dex */
public final class u implements c0 {

    /* renamed from: f, reason: collision with root package name */
    public final f f3940f;

    /* renamed from: g, reason: collision with root package name */
    public x f3941g;

    /* renamed from: h, reason: collision with root package name */
    public int f3942h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3943i;

    /* renamed from: j, reason: collision with root package name */
    public long f3944j;

    /* renamed from: k, reason: collision with root package name */
    public final h f3945k;

    public u(h hVar) {
        jc.l.f(hVar, "upstream");
        this.f3945k = hVar;
        f buffer = hVar.getBuffer();
        this.f3940f = buffer;
        x xVar = buffer.f3906f;
        this.f3941g = xVar;
        this.f3942h = xVar != null ? xVar.f3955b : -1;
    }

    @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3943i = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
    
        if (r4 == r5.f3955b) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0071  */
    @Override // cd.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long read(f fVar, long j10) {
        x xVar;
        jc.l.f(fVar, "sink");
        boolean z10 = false;
        if (j10 >= 0) {
            if (!this.f3943i) {
                x xVar2 = this.f3941g;
                if (xVar2 != null) {
                    x xVar3 = this.f3940f.f3906f;
                    if (xVar2 == xVar3) {
                        int i10 = this.f3942h;
                        jc.l.c(xVar3);
                    }
                    if (z10) {
                        throw new IllegalStateException("Peek source is invalid because upstream source was used".toString());
                    }
                    if (j10 == 0) {
                        return 0L;
                    }
                    if (!this.f3945k.y(this.f3944j + 1)) {
                        return -1L;
                    }
                    if (this.f3941g == null && (xVar = this.f3940f.f3906f) != null) {
                        this.f3941g = xVar;
                        jc.l.c(xVar);
                        this.f3942h = xVar.f3955b;
                    }
                    long min = Math.min(j10, this.f3940f.N0() - this.f3944j);
                    this.f3940f.x(fVar, this.f3944j, min);
                    this.f3944j += min;
                    return min;
                }
                z10 = true;
                if (z10) {
                }
            } else {
                throw new IllegalStateException("closed".toString());
            }
        } else {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
    }

    @Override // cd.c0
    public d0 timeout() {
        return this.f3945k.timeout();
    }
}
