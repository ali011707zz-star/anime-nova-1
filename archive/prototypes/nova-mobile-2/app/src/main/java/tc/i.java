package tc;

/* compiled from: Channel.kt */
/* loaded from: classes2.dex */
public final class i {
    public static final <E> f<E> a(int i10, e eVar, ic.l<? super E, vb.p> lVar) {
        if (i10 == -2) {
            return new d(eVar == e.SUSPEND ? f.f14156d.a() : 1, eVar, lVar);
        }
        if (i10 == -1) {
            if ((eVar != e.SUSPEND ? 0 : 1) != 0) {
                return new n(lVar);
            }
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        if (i10 == 0) {
            if (eVar == e.SUSPEND) {
                return new v(lVar);
            }
            return new d(1, eVar, lVar);
        }
        if (i10 != Integer.MAX_VALUE) {
            if (i10 == 1 && eVar == e.DROP_OLDEST) {
                return new n(lVar);
            }
            return new d(i10, eVar, lVar);
        }
        return new o(lVar);
    }

    public static /* synthetic */ f b(int i10, e eVar, ic.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            eVar = e.SUSPEND;
        }
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        return a(i10, eVar, lVar);
    }
}
