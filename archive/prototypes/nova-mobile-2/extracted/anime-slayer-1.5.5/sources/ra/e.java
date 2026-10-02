package ra;

import kotlin.NoWhenBranchMatchedException;

/* compiled from: PlayerConstants.kt */
/* loaded from: classes.dex */
public final class e {

    /* compiled from: PlayerConstants.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f13186a;

        static {
            int[] iArr = new int[b.values().length];
            iArr[b.UNKNOWN.ordinal()] = 1;
            iArr[b.RATE_0_25.ordinal()] = 2;
            iArr[b.RATE_0_5.ordinal()] = 3;
            iArr[b.RATE_1.ordinal()] = 4;
            iArr[b.RATE_1_5.ordinal()] = 5;
            iArr[b.RATE_2.ordinal()] = 6;
            f13186a = iArr;
        }
    }

    public static final float a(b bVar) {
        jc.l.f(bVar, "<this>");
        switch (a.f13186a[bVar.ordinal()]) {
            case 1:
            case 4:
                return 1.0f;
            case 2:
                return 0.25f;
            case 3:
                return 0.5f;
            case 5:
                return 1.5f;
            case 6:
                return 2.0f;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
