package xc;

import ac.d;
import ic.l;
import vb.j;
import vb.k;
import vb.p;
import wc.h;

/* compiled from: Cancellable.kt */
/* loaded from: classes2.dex */
public final class a {
    public static final void b(d<?> dVar, Throwable th) {
        j.a aVar = j.f15020f;
        dVar.resumeWith(j.a(k.a(th)));
        throw th;
    }

    public static final void c(d<? super p> dVar, d<?> dVar2) {
        try {
            d c10 = bc.b.c(dVar);
            j.a aVar = j.f15020f;
            h.c(c10, j.a(p.f15031a), null, 2, null);
        } catch (Throwable th) {
            b(dVar2, th);
        }
    }

    public static final <T> void d(l<? super d<? super T>, ? extends Object> lVar, d<? super T> dVar) {
        try {
            d c10 = bc.b.c(bc.b.a(lVar, dVar));
            j.a aVar = j.f15020f;
            h.c(c10, j.a(p.f15031a), null, 2, null);
        } catch (Throwable th) {
            b(dVar, th);
        }
    }

    public static final <R, T> void e(ic.p<? super R, ? super d<? super T>, ? extends Object> pVar, R r10, d<? super T> dVar, l<? super Throwable, p> lVar) {
        try {
            d c10 = bc.b.c(bc.b.b(pVar, r10, dVar));
            j.a aVar = j.f15020f;
            h.b(c10, j.a(p.f15031a), lVar);
        } catch (Throwable th) {
            b(dVar, th);
        }
    }

    public static /* synthetic */ void f(ic.p pVar, Object obj, d dVar, l lVar, int i10, Object obj2) {
        if ((i10 & 4) != 0) {
            lVar = null;
        }
        e(pVar, obj, dVar, lVar);
    }
}
