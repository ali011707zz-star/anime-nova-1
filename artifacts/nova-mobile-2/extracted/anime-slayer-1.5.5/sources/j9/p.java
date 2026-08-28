package j9;

import android.util.SparseArray;

/* compiled from: QosTier.java */
/* loaded from: classes.dex */
public enum p {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);


    /* renamed from: m, reason: collision with root package name */
    public static final SparseArray<p> f9084m;

    /* renamed from: f, reason: collision with root package name */
    public final int f9086f;

    static {
        p pVar = DEFAULT;
        p pVar2 = UNMETERED_ONLY;
        p pVar3 = UNMETERED_OR_DAILY;
        p pVar4 = FAST_IF_RADIO_AWAKE;
        p pVar5 = NEVER;
        p pVar6 = UNRECOGNIZED;
        SparseArray<p> sparseArray = new SparseArray<>();
        f9084m = sparseArray;
        sparseArray.put(0, pVar);
        sparseArray.put(1, pVar2);
        sparseArray.put(2, pVar3);
        sparseArray.put(3, pVar4);
        sparseArray.put(4, pVar5);
        sparseArray.put(-1, pVar6);
    }

    p(int i10) {
        this.f9086f = i10;
    }
}
