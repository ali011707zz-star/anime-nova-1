package uc;

import rc.u0;

/* compiled from: StateFlow.kt */
/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: a, reason: collision with root package name */
    public static final wc.a0 f14533a = new wc.a0("NONE");

    /* renamed from: b, reason: collision with root package name */
    public static final wc.a0 f14534b = new wc.a0("PENDING");

    public static final <T> u<T> a(T t10) {
        if (t10 == null) {
            t10 = (T) vc.o.f15083a;
        }
        return new b0(t10);
    }

    public static final <T> f<T> d(a0<? extends T> a0Var, ac.g gVar, int i10, tc.e eVar) {
        if (u0.a()) {
            if (!(i10 != -1)) {
                throw new AssertionError();
            }
        }
        return (((i10 >= 0 && i10 <= 1) || i10 == -2) && eVar == tc.e.DROP_OLDEST) ? a0Var : y.e(a0Var, gVar, i10, eVar);
    }

    public static final void e(u<Integer> uVar, int i10) {
        Integer value;
        do {
            value = uVar.getValue();
        } while (!uVar.d(value, Integer.valueOf(value.intValue() + i10)));
    }
}
