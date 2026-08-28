package uc;

import vc.l;

/* compiled from: Context.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class l {
    public static final <T> f<T> a(f<? extends T> fVar, int i10, tc.e eVar) {
        int i11;
        tc.e eVar2;
        boolean z10 = true;
        if (i10 >= 0 || i10 == -2 || i10 == -1) {
            if (i10 == -1 && eVar != tc.e.SUSPEND) {
                z10 = false;
            }
            if (!z10) {
                throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
            }
            if (i10 == -1) {
                eVar2 = tc.e.DROP_OLDEST;
                i11 = 0;
            } else {
                i11 = i10;
                eVar2 = eVar;
            }
            return fVar instanceof vc.l ? l.a.a((vc.l) fVar, null, i11, eVar2, 1, null) : new vc.g(fVar, null, i11, eVar2, 2, null);
        }
        throw new IllegalArgumentException(jc.l.m("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was ", Integer.valueOf(i10)).toString());
    }

    public static /* synthetic */ f b(f fVar, int i10, tc.e eVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -2;
        }
        if ((i11 & 2) != 0) {
            eVar = tc.e.SUSPEND;
        }
        return h.a(fVar, i10, eVar);
    }

    public static final <T> f<T> c(f<? extends T> fVar) {
        f<T> b10;
        b10 = b(fVar, -1, null, 2, null);
        return b10;
    }
}
