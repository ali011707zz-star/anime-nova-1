package od;

import android.os.Looper;
import jc.l;

/* compiled from: CheckMainThread.kt */
/* loaded from: classes2.dex */
public final class a {
    public static final void a() {
        if (l.a(Looper.myLooper(), Looper.getMainLooper())) {
            return;
        }
        throw new IllegalStateException(("Expected to be called on the main thread but was " + Thread.currentThread().getName()).toString());
    }
}
