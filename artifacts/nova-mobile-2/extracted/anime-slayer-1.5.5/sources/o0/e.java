package o0;

import java.util.Locale;

/* compiled from: TextDirectionHeuristicsCompat.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final o0.d f11449a = new C0284e(null, false);

    /* renamed from: b, reason: collision with root package name */
    public static final o0.d f11450b = new C0284e(null, true);

    /* renamed from: c, reason: collision with root package name */
    public static final o0.d f11451c;

    /* renamed from: d, reason: collision with root package name */
    public static final o0.d f11452d;

    /* renamed from: e, reason: collision with root package name */
    public static final o0.d f11453e;

    /* renamed from: f, reason: collision with root package name */
    public static final o0.d f11454f;

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    public static class a implements c {

        /* renamed from: b, reason: collision with root package name */
        public static final a f11455b = new a(true);

        /* renamed from: a, reason: collision with root package name */
        public final boolean f11456a;

        public a(boolean z10) {
            this.f11456a = z10;
        }

        @Override // o0.e.c
        public int a(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            boolean z10 = false;
            while (i10 < i12) {
                int a10 = e.a(Character.getDirectionality(charSequence.charAt(i10)));
                if (a10 != 0) {
                    if (a10 != 1) {
                        continue;
                        i10++;
                    } else if (!this.f11456a) {
                        return 1;
                    }
                } else if (this.f11456a) {
                    return 0;
                }
                z10 = true;
                i10++;
            }
            if (z10) {
                return this.f11456a ? 1 : 0;
            }
            return 2;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    public static class b implements c {

        /* renamed from: a, reason: collision with root package name */
        public static final b f11457a = new b();

        @Override // o0.e.c
        public int a(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            int i13 = 2;
            while (i10 < i12 && i13 == 2) {
                i13 = e.b(Character.getDirectionality(charSequence.charAt(i10)));
                i10++;
            }
            return i13;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    public interface c {
        int a(CharSequence charSequence, int i10, int i11);
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    public static abstract class d implements o0.d {

        /* renamed from: a, reason: collision with root package name */
        public final c f11458a;

        public d(c cVar) {
            this.f11458a = cVar;
        }

        @Override // o0.d
        public boolean a(CharSequence charSequence, int i10, int i11) {
            if (charSequence != null && i10 >= 0 && i11 >= 0 && charSequence.length() - i11 >= i10) {
                if (this.f11458a == null) {
                    return b();
                }
                return c(charSequence, i10, i11);
            }
            throw new IllegalArgumentException();
        }

        public abstract boolean b();

        public final boolean c(CharSequence charSequence, int i10, int i11) {
            int a10 = this.f11458a.a(charSequence, i10, i11);
            if (a10 == 0) {
                return true;
            }
            if (a10 != 1) {
                return b();
            }
            return false;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* renamed from: o0.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0284e extends d {

        /* renamed from: b, reason: collision with root package name */
        public final boolean f11459b;

        public C0284e(c cVar, boolean z10) {
            super(cVar);
            this.f11459b = z10;
        }

        @Override // o0.e.d
        public boolean b() {
            return this.f11459b;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    public static class f extends d {

        /* renamed from: b, reason: collision with root package name */
        public static final f f11460b = new f();

        public f() {
            super(null);
        }

        @Override // o0.e.d
        public boolean b() {
            return o0.f.b(Locale.getDefault()) == 1;
        }
    }

    static {
        b bVar = b.f11457a;
        f11451c = new C0284e(bVar, false);
        f11452d = new C0284e(bVar, true);
        f11453e = new C0284e(a.f11455b, false);
        f11454f = f.f11460b;
    }

    public static int a(int i10) {
        if (i10 != 0) {
            return (i10 == 1 || i10 == 2) ? 0 : 2;
        }
        return 1;
    }

    public static int b(int i10) {
        if (i10 != 0) {
            if (i10 == 1 || i10 == 2) {
                return 0;
            }
            switch (i10) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
