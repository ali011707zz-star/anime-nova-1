package qc;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Indent.kt */
/* loaded from: classes2.dex */
public class m extends l {

    /* compiled from: Indent.kt */
    /* loaded from: classes2.dex */
    public static final class a extends jc.m implements ic.l<String, String> {

        /* renamed from: f, reason: collision with root package name */
        public static final a f12705f = new a();

        public a() {
            super(1);
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(String str) {
            jc.l.f(str, "line");
            return str;
        }
    }

    /* compiled from: Indent.kt */
    /* loaded from: classes2.dex */
    public static final class b extends jc.m implements ic.l<String, String> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ String f12706f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str) {
            super(1);
            this.f12706f = str;
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(String str) {
            jc.l.f(str, "line");
            return this.f12706f + str;
        }
    }

    public static final ic.l<String, String> b(String str) {
        return str.length() == 0 ? a.f12705f : new b(str);
    }

    public static final int c(String str) {
        int length = str.length();
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            if (!qc.a.c(str.charAt(i10))) {
                break;
            }
            i10++;
        }
        return i10 == -1 ? str.length() : i10;
    }

    public static final String d(String str, String str2) {
        String invoke;
        jc.l.f(str, "<this>");
        jc.l.f(str2, "newIndent");
        List<String> V = u.V(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : V) {
            if (!t.s((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(wb.m.q(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Integer.valueOf(c((String) it2.next())));
        }
        Integer num = (Integer) wb.t.I(arrayList2);
        int i10 = 0;
        int intValue = num != null ? num.intValue() : 0;
        int length = str.length() + (str2.length() * V.size());
        ic.l<String, String> b10 = b(str2);
        int k10 = wb.l.k(V);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : V) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                wb.l.p();
            }
            String str3 = (String) obj2;
            if ((i10 == 0 || i10 == k10) && t.s(str3)) {
                str3 = null;
            } else {
                String u02 = w.u0(str3, intValue);
                if (u02 != null && (invoke = b10.invoke(u02)) != null) {
                    str3 = invoke;
                }
            }
            if (str3 != null) {
                arrayList3.add(str3);
            }
            i10 = i11;
        }
        String sb2 = ((StringBuilder) wb.t.E(arrayList3, new StringBuilder(length), "\n", null, null, 0, null, null, 124, null)).toString();
        jc.l.e(sb2, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return sb2;
    }

    public static final String e(String str, String str2, String str3) {
        int i10;
        String invoke;
        jc.l.f(str, "<this>");
        jc.l.f(str2, "newIndent");
        jc.l.f(str3, "marginPrefix");
        if (!t.s(str3)) {
            List<String> V = u.V(str);
            int length = str.length() + (str2.length() * V.size());
            ic.l<String, String> b10 = b(str2);
            int k10 = wb.l.k(V);
            ArrayList arrayList = new ArrayList();
            int i11 = 0;
            for (Object obj : V) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    wb.l.p();
                }
                String str4 = (String) obj;
                String str5 = null;
                if ((i11 == 0 || i11 == k10) && t.s(str4)) {
                    str4 = null;
                } else {
                    int length2 = str4.length();
                    int i13 = 0;
                    while (true) {
                        if (i13 >= length2) {
                            i10 = -1;
                            break;
                        }
                        if (!qc.a.c(str4.charAt(i13))) {
                            i10 = i13;
                            break;
                        }
                        i13++;
                    }
                    if (i10 != -1) {
                        int i14 = i10;
                        if (t.y(str4, str3, i10, false, 4, null)) {
                            int length3 = i14 + str3.length();
                            jc.l.d(str4, "null cannot be cast to non-null type java.lang.String");
                            str5 = str4.substring(length3);
                            jc.l.e(str5, "this as java.lang.String).substring(startIndex)");
                        }
                    }
                    if (str5 != null && (invoke = b10.invoke(str5)) != null) {
                        str4 = invoke;
                    }
                }
                if (str4 != null) {
                    arrayList.add(str4);
                }
                i11 = i12;
            }
            String sb2 = ((StringBuilder) wb.t.E(arrayList, new StringBuilder(length), "\n", null, null, 0, null, null, 124, null)).toString();
            jc.l.e(sb2, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
            return sb2;
        }
        throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
    }

    public static final String f(String str) {
        jc.l.f(str, "<this>");
        return d(str, "");
    }

    public static final String g(String str, String str2) {
        jc.l.f(str, "<this>");
        jc.l.f(str2, "marginPrefix");
        return e(str, "", str2);
    }

    public static /* synthetic */ String h(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "|";
        }
        return g(str, str2);
    }
}
