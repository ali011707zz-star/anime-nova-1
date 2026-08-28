package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import jc.l;
import rc.c2;
import rc.j0;
import rc.u0;

/* compiled from: Exceptions.kt */
/* loaded from: classes2.dex */
public final class JobCancellationException extends CancellationException implements j0<JobCancellationException> {

    /* renamed from: f, reason: collision with root package name */
    public final c2 f10176f;

    public JobCancellationException(String str, Throwable th, c2 c2Var) {
        super(str);
        this.f10176f = c2Var;
        if (th != null) {
            initCause(th);
        }
    }

    @Override // rc.j0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public JobCancellationException a() {
        if (!u0.c()) {
            return null;
        }
        String message = getMessage();
        l.c(message);
        return new JobCancellationException(message, this, this.f10176f);
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof JobCancellationException) {
                JobCancellationException jobCancellationException = (JobCancellationException) obj;
                if (!l.a(jobCancellationException.getMessage(), getMessage()) || !l.a(jobCancellationException.f10176f, this.f10176f) || !l.a(jobCancellationException.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        if (u0.c()) {
            return super.fillInStackTrace();
        }
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        String message = getMessage();
        l.c(message);
        int hashCode = ((message.hashCode() * 31) + this.f10176f.hashCode()) * 31;
        Throwable cause = getCause();
        return hashCode + (cause == null ? 0 : cause.hashCode());
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "; job=" + this.f10176f;
    }
}
