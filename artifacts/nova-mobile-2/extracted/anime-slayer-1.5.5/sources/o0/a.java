package o0;

import android.text.SpannableStringBuilder;
import java.util.Locale;

/* compiled from: BidiFormatter.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    public static final d f11417d;

    /* renamed from: e, reason: collision with root package name */
    public static final String f11418e;

    /* renamed from: f, reason: collision with root package name */
    public static final String f11419f;

    /* renamed from: g, reason: collision with root package name */
    public static final a f11420g;

    /* renamed from: h, reason: collision with root package name */
    public static final a f11421h;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f11422a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11423b;

    /* renamed from: c, reason: collision with root package name */
    public final d f11424c;

    /* compiled from: BidiFormatter.java */
    /* renamed from: o0.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0282a {

        /* renamed from: a, reason: collision with root package name */
        public boolean f11425a;

        /* renamed from: b, reason: collision with root package name */
        public int f11426b;

        /* renamed from: c, reason: collision with root package name */
        public d f11427c;

        public C0282a() {
            c(a.e(Locale.getDefault()));
        }

        public static a b(boolean z10) {
            return z10 ? a.f11421h : a.f11420g;
        }

        public a a() {
            if (this.f11426b == 2 && this.f11427c == a.f11417d) {
                return b(this.f11425a);
            }
            return new a(this.f11425a, this.f11426b, this.f11427c);
        }

        public final void c(boolean z10) {
            this.f11425a = z10;
            this.f11427c = a.f11417d;
            this.f11426b = 2;
        }
    }

    /* compiled from: BidiFormatter.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: f, reason: collision with root package name */
        public static final byte[] f11428f = new byte[1792];

        /* renamed from: a, reason: collision with root package name */
        public final CharSequence f11429a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f11430b;

        /* renamed from: c, reason: collision with root package name */
        public final int f11431c;

        /* renamed from: d, reason: collision with root package name */
        public int f11432d;

        /* renamed from: e, reason: collision with root package name */
        public char f11433e;

        static {
            for (int i10 = 0; i10 < 1792; i10++) {
                f11428f[i10] = Character.getDirectionality(i10);
            }
        }

        public b(CharSequence charSequence, boolean z10) {
            this.f11429a = charSequence;
            this.f11430b = z10;
            this.f11431c = charSequence.length();
        }

        public static byte c(char c10) {
            return c10 < 1792 ? f11428f[c10] : Character.getDirectionality(c10);
        }

        public byte a() {
            char charAt = this.f11429a.charAt(this.f11432d - 1);
            this.f11433e = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.f11429a, this.f11432d);
                this.f11432d -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f11432d--;
            byte c10 = c(this.f11433e);
            if (!this.f11430b) {
                return c10;
            }
            char c11 = this.f11433e;
            if (c11 == '>') {
                return h();
            }
            return c11 == ';' ? f() : c10;
        }

        public byte b() {
            char charAt = this.f11429a.charAt(this.f11432d);
            this.f11433e = charAt;
            if (Character.isHighSurrogate(charAt)) {
                int codePointAt = Character.codePointAt(this.f11429a, this.f11432d);
                this.f11432d += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.f11432d++;
            byte c10 = c(this.f11433e);
            if (!this.f11430b) {
                return c10;
            }
            char c11 = this.f11433e;
            if (c11 == '<') {
                return i();
            }
            return c11 == '&' ? g() : c10;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:46:0x0045. Please report as an issue. */
        public int d() {
            this.f11432d = 0;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (this.f11432d < this.f11431c && i10 == 0) {
                byte b10 = b();
                if (b10 != 0) {
                    if (b10 == 1 || b10 == 2) {
                        if (i12 == 0) {
                            return 1;
                        }
                    } else if (b10 != 9) {
                        switch (b10) {
                            case 14:
                            case 15:
                                i12++;
                                i11 = -1;
                                continue;
                            case 16:
                            case 17:
                                i12++;
                                i11 = 1;
                                continue;
                            case 18:
                                i12--;
                                i11 = 0;
                                continue;
                        }
                    }
                } else if (i12 == 0) {
                    return -1;
                }
                i10 = i12;
            }
            if (i10 == 0) {
                return 0;
            }
            if (i11 != 0) {
                return i11;
            }
            while (this.f11432d > 0) {
                switch (a()) {
                    case 14:
                    case 15:
                        if (i10 == i12) {
                            return -1;
                        }
                        i12--;
                    case 16:
                    case 17:
                        if (i10 == i12) {
                            return 1;
                        }
                        i12--;
                    case 18:
                        i12++;
                }
            }
            return 0;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:33:0x001c. Please report as an issue. */
        public int e() {
            this.f11432d = this.f11431c;
            int i10 = 0;
            int i11 = 0;
            while (this.f11432d > 0) {
                byte a10 = a();
                if (a10 != 0) {
                    if (a10 == 1 || a10 == 2) {
                        if (i10 == 0) {
                            return 1;
                        }
                        if (i11 == 0) {
                            i11 = i10;
                        }
                    } else if (a10 != 9) {
                        switch (a10) {
                            case 14:
                            case 15:
                                if (i11 == i10) {
                                    return -1;
                                }
                                i10--;
                                break;
                            case 16:
                            case 17:
                                if (i11 == i10) {
                                    return 1;
                                }
                                i10--;
                                break;
                            case 18:
                                i10++;
                                break;
                            default:
                                if (i11 != 0) {
                                    break;
                                } else {
                                    i11 = i10;
                                    break;
                                }
                        }
                    } else {
                        continue;
                    }
                } else {
                    if (i10 == 0) {
                        return -1;
                    }
                    if (i11 == 0) {
                        i11 = i10;
                    }
                }
            }
            return 0;
        }

        public final byte f() {
            char charAt;
            int i10 = this.f11432d;
            do {
                int i11 = this.f11432d;
                if (i11 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f11429a;
                int i12 = i11 - 1;
                this.f11432d = i12;
                charAt = charSequence.charAt(i12);
                this.f11433e = charAt;
                if (charAt == '&') {
                    return (byte) 12;
                }
            } while (charAt != ';');
            this.f11432d = i10;
            this.f11433e = ';';
            return (byte) 13;
        }

        public final byte g() {
            char charAt;
            do {
                int i10 = this.f11432d;
                if (i10 >= this.f11431c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f11429a;
                this.f11432d = i10 + 1;
                charAt = charSequence.charAt(i10);
                this.f11433e = charAt;
            } while (charAt != ';');
            return (byte) 12;
        }

        public final byte h() {
            char charAt;
            int i10 = this.f11432d;
            while (true) {
                int i11 = this.f11432d;
                if (i11 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f11429a;
                int i12 = i11 - 1;
                this.f11432d = i12;
                char charAt2 = charSequence.charAt(i12);
                this.f11433e = charAt2;
                if (charAt2 == '<') {
                    return (byte) 12;
                }
                if (charAt2 == '>') {
                    break;
                }
                if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i13 = this.f11432d;
                        if (i13 > 0) {
                            CharSequence charSequence2 = this.f11429a;
                            int i14 = i13 - 1;
                            this.f11432d = i14;
                            charAt = charSequence2.charAt(i14);
                            this.f11433e = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
            this.f11432d = i10;
            this.f11433e = '>';
            return (byte) 13;
        }

        public final byte i() {
            char charAt;
            int i10 = this.f11432d;
            while (true) {
                int i11 = this.f11432d;
                if (i11 < this.f11431c) {
                    CharSequence charSequence = this.f11429a;
                    this.f11432d = i11 + 1;
                    char charAt2 = charSequence.charAt(i11);
                    this.f11433e = charAt2;
                    if (charAt2 == '>') {
                        return (byte) 12;
                    }
                    if (charAt2 == '\"' || charAt2 == '\'') {
                        do {
                            int i12 = this.f11432d;
                            if (i12 < this.f11431c) {
                                CharSequence charSequence2 = this.f11429a;
                                this.f11432d = i12 + 1;
                                charAt = charSequence2.charAt(i12);
                                this.f11433e = charAt;
                            }
                        } while (charAt != charAt2);
                    }
                } else {
                    this.f11432d = i10;
                    this.f11433e = '<';
                    return (byte) 13;
                }
            }
        }
    }

    static {
        d dVar = e.f11451c;
        f11417d = dVar;
        f11418e = Character.toString((char) 8206);
        f11419f = Character.toString((char) 8207);
        f11420g = new a(false, 2, dVar);
        f11421h = new a(true, 2, dVar);
    }

    public a(boolean z10, int i10, d dVar) {
        this.f11422a = z10;
        this.f11423b = i10;
        this.f11424c = dVar;
    }

    public static int a(CharSequence charSequence) {
        return new b(charSequence, false).d();
    }

    public static int b(CharSequence charSequence) {
        return new b(charSequence, false).e();
    }

    public static a c() {
        return new C0282a().a();
    }

    public static boolean e(Locale locale) {
        return f.b(locale) == 1;
    }

    public boolean d() {
        return (this.f11423b & 2) != 0;
    }

    public final String f(CharSequence charSequence, d dVar) {
        boolean a10 = dVar.a(charSequence, 0, charSequence.length());
        if (this.f11422a || !(a10 || b(charSequence) == 1)) {
            return this.f11422a ? (!a10 || b(charSequence) == -1) ? f11419f : "" : "";
        }
        return f11418e;
    }

    public final String g(CharSequence charSequence, d dVar) {
        boolean a10 = dVar.a(charSequence, 0, charSequence.length());
        if (this.f11422a || !(a10 || a(charSequence) == 1)) {
            return this.f11422a ? (!a10 || a(charSequence) == -1) ? f11419f : "" : "";
        }
        return f11418e;
    }

    public CharSequence h(CharSequence charSequence) {
        return i(charSequence, this.f11424c, true);
    }

    public CharSequence i(CharSequence charSequence, d dVar, boolean z10) {
        if (charSequence == null) {
            return null;
        }
        boolean a10 = dVar.a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (d() && z10) {
            spannableStringBuilder.append((CharSequence) g(charSequence, a10 ? e.f11450b : e.f11449a));
        }
        if (a10 != this.f11422a) {
            spannableStringBuilder.append(a10 ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z10) {
            spannableStringBuilder.append((CharSequence) f(charSequence, a10 ? e.f11450b : e.f11449a));
        }
        return spannableStringBuilder;
    }

    public String j(String str) {
        return k(str, this.f11424c, true);
    }

    public String k(String str, d dVar, boolean z10) {
        if (str == null) {
            return null;
        }
        return i(str, dVar, z10).toString();
    }
}
