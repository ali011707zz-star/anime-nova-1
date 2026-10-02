package nc;

/* compiled from: Ranges.kt */
/* loaded from: classes2.dex */
public final class e extends c implements b<Integer> {

    /* renamed from: j, reason: collision with root package name */
    public static final a f11396j = new a(null);

    /* renamed from: k, reason: collision with root package name */
    public static final e f11397k = new e(1, 0);

    /* compiled from: Ranges.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final e a() {
            return e.f11397k;
        }
    }

    public e(int i10, int i11) {
        super(i10, i11, 1);
    }

    @Override // nc.c
    public boolean equals(Object obj) {
        if (obj instanceof e) {
            if (!isEmpty() || !((e) obj).isEmpty()) {
                e eVar = (e) obj;
                if (d() != eVar.d() || e() != eVar.e()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // nc.c
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (d() * 31) + e();
    }

    public boolean i(int i10) {
        return d() <= i10 && i10 <= e();
    }

    @Override // nc.c, nc.b
    public boolean isEmpty() {
        return d() > e();
    }

    @Override // nc.b
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public Integer c() {
        return Integer.valueOf(e());
    }

    @Override // nc.b
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public Integer b() {
        return Integer.valueOf(d());
    }

    @Override // nc.c
    public String toString() {
        return d() + ".." + e();
    }
}
