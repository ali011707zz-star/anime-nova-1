package cd;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: ForwardingTimeout.kt */
/* loaded from: classes2.dex */
public class l extends d0 {

    /* renamed from: a, reason: collision with root package name */
    public d0 f3922a;

    public l(d0 d0Var) {
        jc.l.f(d0Var, "delegate");
        this.f3922a = d0Var;
    }

    public final d0 a() {
        return this.f3922a;
    }

    public final l b(d0 d0Var) {
        jc.l.f(d0Var, "delegate");
        this.f3922a = d0Var;
        return this;
    }

    @Override // cd.d0
    public d0 clearDeadline() {
        return this.f3922a.clearDeadline();
    }

    @Override // cd.d0
    public d0 clearTimeout() {
        return this.f3922a.clearTimeout();
    }

    @Override // cd.d0
    public long deadlineNanoTime() {
        return this.f3922a.deadlineNanoTime();
    }

    @Override // cd.d0
    public boolean hasDeadline() {
        return this.f3922a.hasDeadline();
    }

    @Override // cd.d0
    public void throwIfReached() throws IOException {
        this.f3922a.throwIfReached();
    }

    @Override // cd.d0
    public d0 timeout(long j10, TimeUnit timeUnit) {
        jc.l.f(timeUnit, "unit");
        return this.f3922a.timeout(j10, timeUnit);
    }

    @Override // cd.d0
    public long timeoutNanos() {
        return this.f3922a.timeoutNanos();
    }

    @Override // cd.d0
    public d0 deadlineNanoTime(long j10) {
        return this.f3922a.deadlineNanoTime(j10);
    }
}
