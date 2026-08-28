package s2;

/* compiled from: WhichButton.kt */
/* loaded from: classes.dex */
public enum m {
    POSITIVE(0),
    NEGATIVE(1),
    NEUTRAL(2);


    /* renamed from: k, reason: collision with root package name */
    public static final a f13717k = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public final int f13718f;

    /* compiled from: WhichButton.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public final m a(int i10) {
            if (i10 == 0) {
                return m.POSITIVE;
            }
            if (i10 == 1) {
                return m.NEGATIVE;
            }
            if (i10 == 2) {
                return m.NEUTRAL;
            }
            throw new IndexOutOfBoundsException(i10 + " is not an action button index.");
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    m(int i10) {
        this.f13718f = i10;
    }

    public final int a() {
        return this.f13718f;
    }
}
