package k1;

import java.util.Arrays;
import java.util.List;
import k1.h1;

/* compiled from: TransformablePage.kt */
/* loaded from: classes.dex */
public final class f1<T> {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f9410a;

    /* renamed from: b, reason: collision with root package name */
    public final List<T> f9411b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9412c;

    /* renamed from: d, reason: collision with root package name */
    public final List<Integer> f9413d;

    /* renamed from: f, reason: collision with root package name */
    public static final a f9409f = new a(null);

    /* renamed from: e, reason: collision with root package name */
    public static final f1<Object> f9408e = new f1<>(0, wb.l.i());

    /* compiled from: TransformablePage.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public final f1<Object> a() {
            return f1.f9408e;
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f1(int[] iArr, List<? extends T> list, int i10, List<Integer> list2) {
        jc.l.f(iArr, "originalPageOffsets");
        jc.l.f(list, "data");
        this.f9410a = iArr;
        this.f9411b = list;
        this.f9412c = i10;
        this.f9413d = list2;
        if (!(iArr.length == 0)) {
            if (list2 == null || list2.size() == list.size()) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("If originalIndices (size = ");
            jc.l.c(list2);
            sb2.append(list2.size());
            sb2.append(") is provided,");
            sb2.append(" it must be same length as data (size = ");
            sb2.append(list.size());
            sb2.append(')');
            throw new IllegalArgumentException(sb2.toString().toString());
        }
        throw new IllegalArgumentException("originalPageOffsets cannot be empty when constructing TransformablePage".toString());
    }

    public final List<T> b() {
        return this.f9411b;
    }

    public final int[] c() {
        return this.f9410a;
    }

    public final h1.a d(int i10, int i11, int i12, int i13, int i14) {
        nc.e j10;
        int i15 = this.f9412c;
        List<Integer> list = this.f9413d;
        if (list != null && (j10 = wb.l.j(list)) != null && j10.i(i10)) {
            i10 = this.f9413d.get(i10).intValue();
        }
        return new h1.a(i15, i10, i11, i12, i13, i14);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!jc.l.a(f1.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj != null) {
            f1 f1Var = (f1) obj;
            return Arrays.equals(this.f9410a, f1Var.f9410a) && !(jc.l.a(this.f9411b, f1Var.f9411b) ^ true) && this.f9412c == f1Var.f9412c && !(jc.l.a(this.f9413d, f1Var.f9413d) ^ true);
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.paging.TransformablePage<*>");
    }

    public int hashCode() {
        int hashCode = ((((Arrays.hashCode(this.f9410a) * 31) + this.f9411b.hashCode()) * 31) + this.f9412c) * 31;
        List<Integer> list = this.f9413d;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "TransformablePage(originalPageOffsets=" + Arrays.toString(this.f9410a) + ", data=" + this.f9411b + ", hintOriginalPageOffset=" + this.f9412c + ", hintOriginalIndices=" + this.f9413d + ")";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f1(int i10, List<? extends T> list) {
        this(new int[]{i10}, list, i10, null);
        jc.l.f(list, "data");
    }
}
