package tc;

import java.util.concurrent.CancellationException;
import rc.r1;

/* compiled from: Channels.common.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class l {
    public static final void a(t<?> tVar, Throwable th) {
        if (th != null) {
            r0 = th instanceof CancellationException ? (CancellationException) th : null;
            if (r0 == null) {
                r0 = r1.a("Channel was consumed, consumer had failed", th);
            }
        }
        tVar.d(r0);
    }
}
