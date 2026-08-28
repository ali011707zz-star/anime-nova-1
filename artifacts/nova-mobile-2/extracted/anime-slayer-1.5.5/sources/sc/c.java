package sc;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import vb.j;
import vb.k;

/* compiled from: HandlerDispatcher.kt */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final b f13892a;
    private static volatile Choreographer choreographer;

    static {
        Object a10;
        try {
            j.a aVar = j.f15020f;
            a10 = j.a(new a(a(Looper.getMainLooper(), true), null, 2, null));
        } catch (Throwable th) {
            j.a aVar2 = j.f15020f;
            a10 = j.a(k.a(th));
        }
        f13892a = (b) (j.c(a10) ? null : a10);
    }

    public static final Handler a(Looper looper, boolean z10) {
        int i10;
        if (!z10 || (i10 = Build.VERSION.SDK_INT) < 16) {
            return new Handler(looper);
        }
        if (i10 >= 28) {
            Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
            if (invoke != null) {
                return (Handler) invoke;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.os.Handler");
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (NoSuchMethodException unused) {
            return new Handler(looper);
        }
    }
}
