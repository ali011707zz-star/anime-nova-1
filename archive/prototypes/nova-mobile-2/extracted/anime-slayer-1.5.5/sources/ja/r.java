package ja;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: LongSerializationPolicy.java */
/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: f, reason: collision with root package name */
    public static final r f9144f;

    /* renamed from: g, reason: collision with root package name */
    public static final r f9145g;

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ r[] f9146h;

    /* compiled from: LongSerializationPolicy.java */
    /* loaded from: classes.dex */
    public enum a extends r {
        public a(String str, int i10) {
            super(str, i10, null);
        }
    }

    static {
        a aVar = new a("DEFAULT", 0);
        f9144f = aVar;
        r rVar = new r("STRING", 1) { // from class: ja.r.b
            {
                a aVar2 = null;
            }
        };
        f9145g = rVar;
        f9146h = new r[]{aVar, rVar};
    }

    public r(String str, int i10) {
    }

    public static r valueOf(String str) {
        return (r) Enum.valueOf(r.class, str);
    }

    public static r[] values() {
        return (r[]) f9146h.clone();
    }

    public /* synthetic */ r(String str, int i10, a aVar) {
        this(str, i10);
    }
}
