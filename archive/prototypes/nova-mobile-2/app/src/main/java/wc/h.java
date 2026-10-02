package wc;

import java.util.concurrent.CancellationException;
import rc.b3;
import rc.c2;
import rc.f3;
import rc.i0;
import rc.k0;
import rc.m1;
import rc.u0;
import vb.j;

/* compiled from: DispatchedContinuation.kt */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a */
    public static final a0 f15493a = new a0("UNDEFINED");

    /* renamed from: b */
    public static final a0 f15494b = new a0("REUSABLE_CLAIMED");

    /* JADX WARN: Finally extract failed */
    public static final <T> void b(ac.d<? super T> dVar, Object obj, ic.l<? super Throwable, vb.p> lVar) {
        boolean z10;
        if (dVar instanceof g) {
            g gVar = (g) dVar;
            Object b10 = i0.b(obj, lVar);
            if (gVar.f15489i.J0(gVar.getContext())) {
                gVar.f15491k = b10;
                gVar.f13240h = 1;
                gVar.f15489i.H0(gVar.getContext(), gVar);
                return;
            }
            u0.a();
            m1 b11 = b3.f13232a.b();
            if (b11.R0()) {
                gVar.f15491k = b10;
                gVar.f13240h = 1;
                b11.N0(gVar);
                return;
            }
            b11.P0(true);
            try {
                c2 c2Var = (c2) gVar.getContext().get(c2.f13236c);
                if (c2Var == null || c2Var.b()) {
                    z10 = false;
                } else {
                    CancellationException a02 = c2Var.a0();
                    gVar.a(b10, a02);
                    j.a aVar = vb.j.f15020f;
                    gVar.resumeWith(vb.j.a(vb.k.a(a02)));
                    z10 = true;
                }
                if (!z10) {
                    ac.d<T> dVar2 = gVar.f15490j;
                    Object obj2 = gVar.f15492l;
                    ac.g context = dVar2.getContext();
                    Object c10 = e0.c(context, obj2);
                    f3<?> e10 = c10 != e0.f15479a ? k0.e(dVar2, context, c10) : null;
                    try {
                        gVar.f15490j.resumeWith(obj);
                        vb.p pVar = vb.p.f15031a;
                        if (e10 == null || e10.S0()) {
                            e0.a(context, c10);
                        }
                    } catch (Throwable th) {
                        if (e10 == null || e10.S0()) {
                            e0.a(context, c10);
                        }
                        throw th;
                    }
                }
                do {
                } while (b11.U0());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        dVar.resumeWith(obj);
    }

    public static /* synthetic */ void c(ac.d dVar, Object obj, ic.l lVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        b(dVar, obj, lVar);
    }

    public static final boolean d(g<? super vb.p> gVar) {
        vb.p pVar = vb.p.f15031a;
        u0.a();
        m1 b10 = b3.f13232a.b();
        if (b10.S0()) {
            return false;
        }
        if (b10.R0()) {
            gVar.f15491k = pVar;
            gVar.f13240h = 1;
            b10.N0(gVar);
            return true;
        }
        b10.P0(true);
        try {
            gVar.run();
            do {
            } while (b10.U0());
        } finally {
            try {
                return false;
            } finally {
            }
        }
        return false;
    }
}
