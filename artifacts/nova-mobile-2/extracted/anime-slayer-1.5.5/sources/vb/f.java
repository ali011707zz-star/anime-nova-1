package vb;

import kotlin.NoWhenBranchMatchedException;

/* compiled from: LazyJVM.kt */
/* loaded from: classes2.dex */
public class f {

    /* compiled from: LazyJVM.kt */
    /* loaded from: classes2.dex */
    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15013a;

        static {
            int[] iArr = new int[g.values().length];
            iArr[g.SYNCHRONIZED.ordinal()] = 1;
            iArr[g.PUBLICATION.ordinal()] = 2;
            iArr[g.NONE.ordinal()] = 3;
            f15013a = iArr;
        }
    }

    public static final <T> e<T> a(ic.a<? extends T> aVar) {
        jc.l.f(aVar, "initializer");
        jc.g gVar = null;
        return new m(aVar, gVar, 2, gVar);
    }

    public static final <T> e<T> b(g gVar, ic.a<? extends T> aVar) {
        jc.l.f(gVar, "mode");
        jc.l.f(aVar, "initializer");
        int i10 = a.f15013a[gVar.ordinal()];
        int i11 = 2;
        if (i10 == 1) {
            jc.g gVar2 = null;
            return new m(aVar, gVar2, i11, gVar2);
        }
        if (i10 == 2) {
            return new l(aVar);
        }
        if (i10 == 3) {
            return new q(aVar);
        }
        throw new NoWhenBranchMatchedException();
    }
}
