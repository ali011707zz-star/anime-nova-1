package androidx.lifecycle;

import rc.g1;
import rc.z2;

/* compiled from: Lifecycle.kt */
/* loaded from: classes.dex */
public final class o {
    public static final l a(k kVar) {
        LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl;
        jc.l.f(kVar, "<this>");
        do {
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl2 = (LifecycleCoroutineScopeImpl) kVar.f2502a.get();
            if (lifecycleCoroutineScopeImpl2 != null) {
                return lifecycleCoroutineScopeImpl2;
            }
            lifecycleCoroutineScopeImpl = new LifecycleCoroutineScopeImpl(kVar, z2.b(null, 1, null).plus(g1.c().K0()));
        } while (!kVar.f2502a.compareAndSet(null, lifecycleCoroutineScopeImpl));
        lifecycleCoroutineScopeImpl.j();
        return lifecycleCoroutineScopeImpl;
    }
}
