package l3;

/* compiled from: MergePaths.java */
/* loaded from: classes.dex */
public class i implements c {

    /* renamed from: a, reason: collision with root package name */
    public final String f10332a;

    /* renamed from: b, reason: collision with root package name */
    public final a f10333b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10334c;

    /* compiled from: MergePaths.java */
    /* loaded from: classes.dex */
    public enum a {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static a a(int i10) {
            if (i10 == 1) {
                return MERGE;
            }
            if (i10 == 2) {
                return ADD;
            }
            if (i10 == 3) {
                return SUBTRACT;
            }
            if (i10 == 4) {
                return INTERSECT;
            }
            if (i10 != 5) {
                return MERGE;
            }
            return EXCLUDE_INTERSECTIONS;
        }
    }

    public i(String str, a aVar, boolean z10) {
        this.f10332a = str;
        this.f10333b = aVar;
        this.f10334c = z10;
    }

    @Override // l3.c
    public g3.c a(e3.f fVar, m3.a aVar) {
        if (!fVar.n()) {
            q3.d.c("Animation contains merge paths but they are disabled.");
            return null;
        }
        return new g3.l(this);
    }

    public a b() {
        return this.f10333b;
    }

    public String c() {
        return this.f10332a;
    }

    public boolean d() {
        return this.f10334c;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f10333b + '}';
    }
}
