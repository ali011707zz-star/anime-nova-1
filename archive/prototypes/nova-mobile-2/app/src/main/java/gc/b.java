package gc;

import java.io.Closeable;

/* compiled from: Closeable.kt */
/* loaded from: classes2.dex */
public final class b {
    public static final void a(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                vb.a.a(th, th2);
            }
        }
    }
}
