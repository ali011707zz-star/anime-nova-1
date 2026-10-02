package rc;

import kotlin.NoWhenBranchMatchedException;

/* compiled from: CoroutineStart.kt */
/* loaded from: classes2.dex */
public enum s0 {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    /* compiled from: CoroutineStart.kt */
    /* loaded from: classes2.dex */
    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f13330a;

        static {
            int[] iArr = new int[s0.values().length];
            iArr[s0.DEFAULT.ordinal()] = 1;
            iArr[s0.ATOMIC.ordinal()] = 2;
            iArr[s0.UNDISPATCHED.ordinal()] = 3;
            iArr[s0.LAZY.ordinal()] = 4;
            f13330a = iArr;
        }
    }

    public final <R, T> void b(ic.p<? super R, ? super ac.d<? super T>, ? extends Object> pVar, R r10, ac.d<? super T> dVar) {
        int i10 = a.f13330a[ordinal()];
        if (i10 == 1) {
            xc.a.f(pVar, r10, dVar, null, 4, null);
            return;
        }
        if (i10 == 2) {
            ac.f.a(pVar, r10, dVar);
        } else if (i10 == 3) {
            xc.b.a(pVar, r10, dVar);
        } else if (i10 != 4) {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean c() {
        return this == LAZY;
    }
}
