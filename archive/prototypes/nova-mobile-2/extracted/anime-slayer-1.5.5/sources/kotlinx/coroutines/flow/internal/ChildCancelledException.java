package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;
import rc.u0;

/* compiled from: FlowExceptions.kt */
/* loaded from: classes2.dex */
public final class ChildCancelledException extends CancellationException {
    public ChildCancelledException() {
        super("Child of the scoped flow was cancelled");
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        if (u0.c()) {
            return super.fillInStackTrace();
        }
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
