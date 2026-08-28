package vc;

import jc.b0;
import wc.e0;

/* compiled from: ChannelFlow.kt */
/* loaded from: classes2.dex */
public final class e {
    public static final /* synthetic */ uc.g a(uc.g gVar, ac.g gVar2) {
        return d(gVar, gVar2);
    }

    public static final <T, V> Object b(ac.g gVar, V v10, Object obj, ic.p<? super V, ? super ac.d<? super T>, ? extends Object> pVar, ac.d<? super T> dVar) {
        Object c10 = e0.c(gVar, obj);
        try {
            t tVar = new t(dVar, gVar);
            if (pVar != null) {
                Object invoke = ((ic.p) b0.a(pVar, 2)).invoke(v10, tVar);
                e0.a(gVar, c10);
                if (invoke == bc.c.d()) {
                    cc.h.c(dVar);
                }
                return invoke;
            }
            throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            e0.a(gVar, c10);
            throw th;
        }
    }

    public static /* synthetic */ Object c(ac.g gVar, Object obj, Object obj2, ic.p pVar, ac.d dVar, int i10, Object obj3) {
        if ((i10 & 4) != 0) {
            obj2 = e0.b(gVar);
        }
        return b(gVar, obj, obj2, pVar, dVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> uc.g<T> d(uc.g<? super T> gVar, ac.g gVar2) {
        return gVar instanceof s ? true : gVar instanceof n ? gVar : new u(gVar, gVar2);
    }
}
