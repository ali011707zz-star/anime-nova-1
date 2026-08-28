package wc;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlinx.coroutines.internal.MainDispatcherFactory;
import rc.n2;

/* compiled from: MainDispatchers.kt */
/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public static final s f15534a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f15535b;

    /* renamed from: c, reason: collision with root package name */
    public static final n2 f15536c;

    static {
        s sVar = new s();
        f15534a = sVar;
        f15535b = b0.e("kotlinx.coroutines.fast.service.loader", true);
        f15536c = sVar.a();
    }

    public final n2 a() {
        List<MainDispatcherFactory> g10;
        Object next;
        try {
            if (f15535b) {
                g10 = j.f15508a.c();
            } else {
                g10 = pc.h.g(pc.f.a(ServiceLoader.load(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader()).iterator()));
            }
            Iterator<T> it2 = g10.iterator();
            if (it2.hasNext()) {
                next = it2.next();
                if (it2.hasNext()) {
                    int loadPriority = ((MainDispatcherFactory) next).getLoadPriority();
                    do {
                        Object next2 = it2.next();
                        int loadPriority2 = ((MainDispatcherFactory) next2).getLoadPriority();
                        if (loadPriority < loadPriority2) {
                            next = next2;
                            loadPriority = loadPriority2;
                        }
                    } while (it2.hasNext());
                }
            } else {
                next = null;
            }
            MainDispatcherFactory mainDispatcherFactory = (MainDispatcherFactory) next;
            if (mainDispatcherFactory == null) {
                return t.b(null, null, 3, null);
            }
            return t.d(mainDispatcherFactory, g10);
        } catch (Throwable th) {
            return t.b(th, null, 2, null);
        }
    }
}
