package uc;

import com.google.android.gms.common.api.Api;

/* compiled from: SharedFlow.kt */
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public static final wc.a0 f14675a = new wc.a0("NO_VALUE");

    public static final <T> t<T> a(int i10, int i11, tc.e eVar) {
        boolean z10 = true;
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(jc.l.m("replay cannot be negative, but was ", Integer.valueOf(i10)).toString());
        }
        if (i11 >= 0) {
            if (i10 <= 0 && i11 <= 0 && eVar != tc.e.SUSPEND) {
                z10 = false;
            }
            if (z10) {
                int i12 = i11 + i10;
                if (i12 < 0) {
                    i12 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                }
                return new x(i10, i12, eVar);
            }
            throw new IllegalArgumentException(jc.l.m("replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy ", eVar).toString());
        }
        throw new IllegalArgumentException(jc.l.m("extraBufferCapacity cannot be negative, but was ", Integer.valueOf(i11)).toString());
    }

    public static /* synthetic */ t b(int i10, int i11, tc.e eVar, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            eVar = tc.e.SUSPEND;
        }
        return a(i10, i11, eVar);
    }

    public static final <T> f<T> e(w<? extends T> wVar, ac.g gVar, int i10, tc.e eVar) {
        return ((i10 == 0 || i10 == -3) && eVar == tc.e.SUSPEND) ? wVar : new vc.g(wVar, gVar, i10, eVar);
    }

    public static final Object f(Object[] objArr, long j10) {
        return objArr[(objArr.length - 1) & ((int) j10)];
    }

    public static final void g(Object[] objArr, long j10, Object obj) {
        objArr[(objArr.length - 1) & ((int) j10)] = obj;
    }
}
