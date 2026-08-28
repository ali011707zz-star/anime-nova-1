package rc;

import vb.j;

/* compiled from: CompletionState.kt */
/* loaded from: classes2.dex */
public final class i0 {
    public static final <T> Object a(Object obj, ac.d<? super T> dVar) {
        if (obj instanceof f0) {
            j.a aVar = vb.j.f15020f;
            Throwable th = ((f0) obj).f13254a;
            if (u0.d() && (dVar instanceof cc.e)) {
                th = wc.z.j(th, (cc.e) dVar);
            }
            return vb.j.a(vb.k.a(th));
        }
        j.a aVar2 = vb.j.f15020f;
        return vb.j.a(obj);
    }

    public static final <T> Object b(Object obj, ic.l<? super Throwable, vb.p> lVar) {
        Throwable b10 = vb.j.b(obj);
        if (b10 == null) {
            return lVar != null ? new g0(obj, lVar) : obj;
        }
        return new f0(b10, false, 2, null);
    }

    public static final <T> Object c(Object obj, o<?> oVar) {
        Throwable b10 = vb.j.b(obj);
        if (b10 != null) {
            if (u0.d() && (oVar instanceof cc.e)) {
                b10 = wc.z.j(b10, (cc.e) oVar);
            }
            obj = new f0(b10, false, 2, null);
        }
        return obj;
    }

    public static /* synthetic */ Object d(Object obj, ic.l lVar, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            lVar = null;
        }
        return b(obj, lVar);
    }
}
