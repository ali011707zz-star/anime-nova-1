package k1;

import com.google.android.gms.common.api.Api;

/* compiled from: PagingConfig.kt */
/* loaded from: classes.dex */
public final class p0 {

    /* renamed from: g, reason: collision with root package name */
    public static final a f9739g = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final int f9740a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9741b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9742c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9743d;

    /* renamed from: e, reason: collision with root package name */
    public final int f9744e;

    /* renamed from: f, reason: collision with root package name */
    public final int f9745f;

    /* compiled from: PagingConfig.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public p0(int i10, int i11, boolean z10, int i12, int i13, int i14) {
        this.f9740a = i10;
        this.f9741b = i11;
        this.f9742c = z10;
        this.f9743d = i12;
        this.f9744e = i13;
        this.f9745f = i14;
        if (!z10 && i11 == 0) {
            throw new IllegalArgumentException("Placeholders and prefetch are the only ways to trigger loading of more data in PagingData, so either placeholders must be enabled, or prefetch distance must be > 0.");
        }
        if (i13 == Integer.MAX_VALUE || i13 >= (i11 * 2) + i10) {
            if (!(i14 == Integer.MIN_VALUE || i14 > 0)) {
                throw new IllegalArgumentException("jumpThreshold must be positive to enable jumps or COUNT_UNDEFINED to disable jumping.".toString());
            }
            return;
        }
        throw new IllegalArgumentException("Maximum size must be at least pageSize + 2*prefetchDist, pageSize=" + i10 + ", prefetchDist=" + i11 + ", maxSize=" + i13);
    }

    public /* synthetic */ p0(int i10, int i11, boolean z10, int i12, int i13, int i14, int i15, jc.g gVar) {
        this(i10, (i15 & 2) != 0 ? i10 : i11, (i15 & 4) != 0 ? true : z10, (i15 & 8) != 0 ? i10 * 3 : i12, (i15 & 16) != 0 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : i13, (i15 & 32) != 0 ? Integer.MIN_VALUE : i14);
    }
}
