package qc;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import wb.z;

/* compiled from: Strings.kt */
/* loaded from: classes2.dex */
public class u extends t {

    /* compiled from: Strings.kt */
    /* loaded from: classes2.dex */
    public static final class a extends jc.m implements ic.p<CharSequence, Integer, vb.i<? extends Integer, ? extends Integer>> {

        /* renamed from: f */
        public final /* synthetic */ List<String> f12707f;

        /* renamed from: g */
        public final /* synthetic */ boolean f12708g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(List<String> list, boolean z10) {
            super(2);
            this.f12707f = list;
            this.f12708g = z10;
        }

        public final vb.i<Integer, Integer> a(CharSequence charSequence, int i10) {
            jc.l.f(charSequence, "$this$$receiver");
            vb.i F = u.F(charSequence, this.f12707f, i10, this.f12708g, false);
            if (F != null) {
                return vb.n.a(F.c(), Integer.valueOf(((String) F.d()).length()));
            }
            return null;
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ vb.i<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
            return a(charSequence, num.intValue());
        }
    }

    /* compiled from: Strings.kt */
    /* loaded from: classes2.dex */
    public static final class b extends jc.m implements ic.l<nc.e, String> {

        /* renamed from: f */
        public final /* synthetic */ CharSequence f12709f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(CharSequence charSequence) {
            super(1);
            this.f12709f = charSequence;
        }

        @Override // ic.l
        /* renamed from: a */
        public final String invoke(nc.e eVar) {
            jc.l.f(eVar, "it");
            return u.g0(this.f12709f, eVar);
        }
    }

    public static final boolean B(CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        jc.l.f(charSequence, "<this>");
        jc.l.f(charSequence2, "other");
        if (charSequence2 instanceof String) {
            if (N(charSequence, (String) charSequence2, 0, z10, 2, null) >= 0) {
                return true;
            }
        } else if (L(charSequence, charSequence2, 0, charSequence.length(), z10, false, 16, null) >= 0) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ boolean C(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return B(charSequence, charSequence2, z10);
    }

    public static final boolean D(CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        jc.l.f(charSequence, "<this>");
        jc.l.f(charSequence2, "suffix");
        if (!z10 && (charSequence instanceof String) && (charSequence2 instanceof String)) {
            return t.q((String) charSequence, (String) charSequence2, false, 2, null);
        }
        return Y(charSequence, charSequence.length() - charSequence2.length(), charSequence2, 0, charSequence2.length(), z10);
    }

    public static /* synthetic */ boolean E(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return D(charSequence, charSequence2, z10);
    }

    public static final vb.i<Integer, String> F(CharSequence charSequence, Collection<String> collection, int i10, boolean z10, boolean z11) {
        Object obj;
        Object obj2;
        if (!z10 && collection.size() == 1) {
            String str = (String) wb.t.J(collection);
            int N = !z11 ? N(charSequence, str, i10, false, 4, null) : S(charSequence, str, i10, false, 4, null);
            if (N < 0) {
                return null;
            }
            return vb.n.a(Integer.valueOf(N), str);
        }
        nc.c eVar = !z11 ? new nc.e(nc.g.a(i10, 0), charSequence.length()) : nc.g.h(nc.g.c(i10, H(charSequence)), 0);
        if (charSequence instanceof String) {
            int d10 = eVar.d();
            int e10 = eVar.e();
            int f10 = eVar.f();
            if ((f10 > 0 && d10 <= e10) || (f10 < 0 && e10 <= d10)) {
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj2 = null;
                            break;
                        }
                        obj2 = it2.next();
                        String str2 = (String) obj2;
                        if (t.t(str2, 0, (String) charSequence, d10, str2.length(), z10)) {
                            break;
                        }
                    }
                    String str3 = (String) obj2;
                    if (str3 == null) {
                        if (d10 == e10) {
                            break;
                        }
                        d10 += f10;
                    } else {
                        return vb.n.a(Integer.valueOf(d10), str3);
                    }
                }
            }
        } else {
            int d11 = eVar.d();
            int e11 = eVar.e();
            int f11 = eVar.f();
            if ((f11 > 0 && d11 <= e11) || (f11 < 0 && e11 <= d11)) {
                while (true) {
                    Iterator<T> it3 = collection.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it3.next();
                        String str4 = (String) obj;
                        if (Y(str4, 0, charSequence, d11, str4.length(), z10)) {
                            break;
                        }
                    }
                    String str5 = (String) obj;
                    if (str5 == null) {
                        if (d11 == e11) {
                            break;
                        }
                        d11 += f11;
                    } else {
                        return vb.n.a(Integer.valueOf(d11), str5);
                    }
                }
            }
        }
        return null;
    }

    public static final nc.e G(CharSequence charSequence) {
        jc.l.f(charSequence, "<this>");
        return new nc.e(0, charSequence.length() - 1);
    }

    public static final int H(CharSequence charSequence) {
        jc.l.f(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int I(CharSequence charSequence, char c10, int i10, boolean z10) {
        jc.l.f(charSequence, "<this>");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(c10, i10);
        }
        return O(charSequence, new char[]{c10}, i10, z10);
    }

    public static final int J(CharSequence charSequence, String str, int i10, boolean z10) {
        jc.l.f(charSequence, "<this>");
        jc.l.f(str, "string");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i10);
        }
        return L(charSequence, str, i10, charSequence.length(), z10, false, 16, null);
    }

    public static final int K(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11) {
        nc.c h10;
        if (!z11) {
            h10 = new nc.e(nc.g.a(i10, 0), nc.g.c(i11, charSequence.length()));
        } else {
            h10 = nc.g.h(nc.g.c(i10, H(charSequence)), nc.g.a(i11, 0));
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int d10 = h10.d();
            int e10 = h10.e();
            int f10 = h10.f();
            if ((f10 <= 0 || d10 > e10) && (f10 >= 0 || e10 > d10)) {
                return -1;
            }
            while (!t.t((String) charSequence2, 0, (String) charSequence, d10, charSequence2.length(), z10)) {
                if (d10 == e10) {
                    return -1;
                }
                d10 += f10;
            }
            return d10;
        }
        int d11 = h10.d();
        int e11 = h10.e();
        int f11 = h10.f();
        if ((f11 <= 0 || d11 > e11) && (f11 >= 0 || e11 > d11)) {
            return -1;
        }
        while (!Y(charSequence2, 0, charSequence, d11, charSequence2.length(), z10)) {
            if (d11 == e11) {
                return -1;
            }
            d11 += f11;
        }
        return d11;
    }

    public static /* synthetic */ int L(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11, int i12, Object obj) {
        return K(charSequence, charSequence2, i10, i11, z10, (i12 & 16) != 0 ? false : z11);
    }

    public static /* synthetic */ int M(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return I(charSequence, c10, i10, z10);
    }

    public static /* synthetic */ int N(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return J(charSequence, str, i10, z10);
    }

    public static final int O(CharSequence charSequence, char[] cArr, int i10, boolean z10) {
        boolean z11;
        jc.l.f(charSequence, "<this>");
        jc.l.f(cArr, "chars");
        if (!z10 && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(wb.i.v(cArr), i10);
        }
        z it2 = new nc.e(nc.g.a(i10, 0), H(charSequence)).iterator();
        while (it2.hasNext()) {
            int a10 = it2.a();
            char charAt = charSequence.charAt(a10);
            int length = cArr.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    z11 = false;
                    break;
                }
                if (qc.b.d(cArr[i11], charAt, z10)) {
                    z11 = true;
                    break;
                }
                i11++;
            }
            if (z11) {
                return a10;
            }
        }
        return -1;
    }

    public static final int P(CharSequence charSequence, char c10, int i10, boolean z10) {
        jc.l.f(charSequence, "<this>");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(c10, i10);
        }
        return T(charSequence, new char[]{c10}, i10, z10);
    }

    public static final int Q(CharSequence charSequence, String str, int i10, boolean z10) {
        jc.l.f(charSequence, "<this>");
        jc.l.f(str, "string");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(str, i10);
        }
        return K(charSequence, str, i10, 0, z10, true);
    }

    public static /* synthetic */ int R(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = H(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return P(charSequence, c10, i10, z10);
    }

    public static /* synthetic */ int S(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = H(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return Q(charSequence, str, i10, z10);
    }

    public static final int T(CharSequence charSequence, char[] cArr, int i10, boolean z10) {
        jc.l.f(charSequence, "<this>");
        jc.l.f(cArr, "chars");
        if (!z10 && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(wb.i.v(cArr), i10);
        }
        for (int c10 = nc.g.c(i10, H(charSequence)); -1 < c10; c10--) {
            char charAt = charSequence.charAt(c10);
            int length = cArr.length;
            boolean z11 = false;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    break;
                }
                if (qc.b.d(cArr[i11], charAt, z10)) {
                    z11 = true;
                    break;
                }
                i11++;
            }
            if (z11) {
                return c10;
            }
        }
        return -1;
    }

    public static final pc.c<String> U(CharSequence charSequence) {
        jc.l.f(charSequence, "<this>");
        return f0(charSequence, new String[]{"\r\n", "\n", "\r"}, false, 0, 6, null);
    }

    public static final List<String> V(CharSequence charSequence) {
        jc.l.f(charSequence, "<this>");
        return pc.h.g(U(charSequence));
    }

    public static final pc.c<nc.e> W(CharSequence charSequence, String[] strArr, int i10, boolean z10, int i11) {
        a0(i11);
        return new d(charSequence, i10, i11, new a(wb.h.b(strArr), z10));
    }

    public static /* synthetic */ pc.c X(CharSequence charSequence, String[] strArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return W(charSequence, strArr, i10, z10, i11);
    }

    public static final boolean Y(CharSequence charSequence, int i10, CharSequence charSequence2, int i11, int i12, boolean z10) {
        jc.l.f(charSequence, "<this>");
        jc.l.f(charSequence2, "other");
        if (i11 < 0 || i10 < 0 || i10 > charSequence.length() - i12 || i11 > charSequence2.length() - i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (!qc.b.d(charSequence.charAt(i10 + i13), charSequence2.charAt(i11 + i13), z10)) {
                return false;
            }
        }
        return true;
    }

    public static final String Z(String str, CharSequence charSequence) {
        jc.l.f(str, "<this>");
        jc.l.f(charSequence, "suffix");
        if (!E(str, charSequence, false, 2, null)) {
            return str;
        }
        String substring = str.substring(0, str.length() - charSequence.length());
        jc.l.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final void a0(int i10) {
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i10).toString());
    }

    public static final List<String> b0(CharSequence charSequence, String[] strArr, boolean z10, int i10) {
        jc.l.f(charSequence, "<this>");
        jc.l.f(strArr, "delimiters");
        if (strArr.length == 1) {
            String str = strArr[0];
            if (!(str.length() == 0)) {
                return c0(charSequence, str, z10, i10);
            }
        }
        Iterable d10 = pc.h.d(X(charSequence, strArr, 0, z10, i10, 2, null));
        ArrayList arrayList = new ArrayList(wb.m.q(d10, 10));
        Iterator it2 = d10.iterator();
        while (it2.hasNext()) {
            arrayList.add(g0(charSequence, (nc.e) it2.next()));
        }
        return arrayList;
    }

    public static final List<String> c0(CharSequence charSequence, String str, boolean z10, int i10) {
        a0(i10);
        int i11 = 0;
        int J = J(charSequence, str, 0, z10);
        if (J != -1 && i10 != 1) {
            boolean z11 = i10 > 0;
            ArrayList arrayList = new ArrayList(z11 ? nc.g.c(i10, 10) : 10);
            do {
                arrayList.add(charSequence.subSequence(i11, J).toString());
                i11 = str.length() + J;
                if (z11 && arrayList.size() == i10 - 1) {
                    break;
                }
                J = J(charSequence, str, i11, z10);
            } while (J != -1);
            arrayList.add(charSequence.subSequence(i11, charSequence.length()).toString());
            return arrayList;
        }
        return wb.k.d(charSequence.toString());
    }

    public static /* synthetic */ List d0(CharSequence charSequence, String[] strArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return b0(charSequence, strArr, z10, i10);
    }

    public static final pc.c<String> e0(CharSequence charSequence, String[] strArr, boolean z10, int i10) {
        jc.l.f(charSequence, "<this>");
        jc.l.f(strArr, "delimiters");
        return pc.h.e(X(charSequence, strArr, 0, z10, i10, 2, null), new b(charSequence));
    }

    public static /* synthetic */ pc.c f0(CharSequence charSequence, String[] strArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return e0(charSequence, strArr, z10, i10);
    }

    public static final String g0(CharSequence charSequence, nc.e eVar) {
        jc.l.f(charSequence, "<this>");
        jc.l.f(eVar, "range");
        return charSequence.subSequence(eVar.b().intValue(), eVar.c().intValue() + 1).toString();
    }

    public static final String h0(String str, String str2, String str3) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "delimiter");
        jc.l.f(str3, "missingDelimiterValue");
        int N = N(str, str2, 0, false, 6, null);
        if (N == -1) {
            return str3;
        }
        String substring = str.substring(N + str2.length(), str.length());
        jc.l.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String i0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return h0(str, str2, str3);
    }

    public static final String j0(String str, char c10, String str2) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "missingDelimiterValue");
        int R = R(str, c10, 0, false, 6, null);
        if (R == -1) {
            return str2;
        }
        String substring = str.substring(R + 1, str.length());
        jc.l.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final String k0(String str, String str2, String str3) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "delimiter");
        jc.l.f(str3, "missingDelimiterValue");
        int S = S(str, str2, 0, false, 6, null);
        if (S == -1) {
            return str3;
        }
        String substring = str.substring(S + str2.length(), str.length());
        jc.l.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String l0(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return j0(str, c10, str2);
    }

    public static /* synthetic */ String m0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return k0(str, str2, str3);
    }

    public static final String n0(String str, char c10, String str2) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "missingDelimiterValue");
        int M = M(str, c10, 0, false, 6, null);
        if (M == -1) {
            return str2;
        }
        String substring = str.substring(0, M);
        jc.l.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final String o0(String str, String str2, String str3) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "delimiter");
        jc.l.f(str3, "missingDelimiterValue");
        int N = N(str, str2, 0, false, 6, null);
        if (N == -1) {
            return str3;
        }
        String substring = str.substring(0, N);
        jc.l.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String p0(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return n0(str, c10, str2);
    }

    public static /* synthetic */ String q0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return o0(str, str2, str3);
    }

    public static final String r0(String str, String str2, String str3) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "delimiter");
        jc.l.f(str3, "missingDelimiterValue");
        int S = S(str, str2, 0, false, 6, null);
        if (S == -1) {
            return str3;
        }
        String substring = str.substring(0, S);
        jc.l.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String s0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return r0(str, str2, str3);
    }

    public static final CharSequence t0(CharSequence charSequence) {
        jc.l.f(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean c10 = qc.a.c(charSequence.charAt(!z10 ? i10 : length));
            if (z10) {
                if (!c10) {
                    break;
                }
                length--;
            } else if (c10) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return charSequence.subSequence(i10, length + 1);
    }
}
