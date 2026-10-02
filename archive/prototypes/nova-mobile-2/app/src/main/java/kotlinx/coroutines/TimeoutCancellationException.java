package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import rc.c2;
import rc.j0;

/* compiled from: Timeout.kt */
/* loaded from: classes2.dex */
public final class TimeoutCancellationException extends CancellationException implements j0<TimeoutCancellationException> {

    /* renamed from: f, reason: collision with root package name */
    public final c2 f10177f;

    public TimeoutCancellationException(String str, c2 c2Var) {
        super(str);
        this.f10177f = c2Var;
    }

    @Override // rc.j0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public TimeoutCancellationException a() {
        String message = getMessage();
        if (message == null) {
            message = "";
        }
        TimeoutCancellationException timeoutCancellationException = new TimeoutCancellationException(message, this.f10177f);
        timeoutCancellationException.initCause(this);
        return timeoutCancellationException;
    }

    public TimeoutCancellationException(String str) {
        this(str, null);
    }
}
