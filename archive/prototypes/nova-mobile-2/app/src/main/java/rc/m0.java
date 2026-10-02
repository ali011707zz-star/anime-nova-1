package rc;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* compiled from: CoroutineExceptionHandlerImpl.kt */
/* loaded from: classes2.dex */
public final class m0 {

    /* renamed from: a, reason: collision with root package name */
    public static final List<CoroutineExceptionHandler> f13297a = pc.h.g(pc.f.a(ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader()).iterator()));

    public static final void a(ac.g gVar, Throwable th) {
        Iterator<CoroutineExceptionHandler> it2 = f13297a.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().handleException(gVar, th);
            } catch (Throwable th2) {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, n0.b(th, th2));
            }
        }
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }
}
