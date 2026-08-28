package rc;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class k2 {

    /* renamed from: a, reason: collision with root package name */
    public static final wc.a0 f13285a = new wc.a0("COMPLETING_ALREADY");

    /* renamed from: b, reason: collision with root package name */
    public static final wc.a0 f13286b = new wc.a0("COMPLETING_WAITING_CHILDREN");

    /* renamed from: c, reason: collision with root package name */
    public static final wc.a0 f13287c = new wc.a0("COMPLETING_RETRY");

    /* renamed from: d, reason: collision with root package name */
    public static final wc.a0 f13288d = new wc.a0("TOO_LATE_TO_CANCEL");

    /* renamed from: e, reason: collision with root package name */
    public static final wc.a0 f13289e = new wc.a0("SEALED");

    /* renamed from: f, reason: collision with root package name */
    public static final l1 f13290f = new l1(false);

    /* renamed from: g, reason: collision with root package name */
    public static final l1 f13291g = new l1(true);

    public static final Object g(Object obj) {
        return obj instanceof x1 ? new y1((x1) obj) : obj;
    }

    public static final Object h(Object obj) {
        y1 y1Var = obj instanceof y1 ? (y1) obj : null;
        return y1Var == null ? obj : y1Var.f13354a;
    }
}
