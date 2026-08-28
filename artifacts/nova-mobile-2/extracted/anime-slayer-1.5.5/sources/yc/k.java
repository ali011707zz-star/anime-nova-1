package yc;

import rc.v0;

/* compiled from: Tasks.kt */
/* loaded from: classes2.dex */
public final class k extends i {

    /* renamed from: h, reason: collision with root package name */
    public final Runnable f16843h;

    public k(Runnable runnable, long j10, j jVar) {
        super(j10, jVar);
        this.f16843h = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f16843h.run();
        } finally {
            this.f16842g.R();
        }
    }

    public String toString() {
        return "Task[" + v0.a(this.f16843h) + '@' + v0.b(this.f16843h) + ", " + this.f16841f + ", " + this.f16842g + ']';
    }
}
