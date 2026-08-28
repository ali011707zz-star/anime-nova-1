package vb;

import com.google.android.material.progressindicator.BaseProgressIndicator;

/* compiled from: KotlinVersion.kt */
/* loaded from: classes2.dex */
public final class c implements Comparable<c> {

    /* renamed from: j, reason: collision with root package name */
    public static final a f15006j = new a(null);

    /* renamed from: k, reason: collision with root package name */
    public static final c f15007k = d.a();

    /* renamed from: f, reason: collision with root package name */
    public final int f15008f;

    /* renamed from: g, reason: collision with root package name */
    public final int f15009g;

    /* renamed from: h, reason: collision with root package name */
    public final int f15010h;

    /* renamed from: i, reason: collision with root package name */
    public final int f15011i;

    /* compiled from: KotlinVersion.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public c(int i10, int i11, int i12) {
        this.f15008f = i10;
        this.f15009g = i11;
        this.f15010h = i12;
        this.f15011i = b(i10, i11, i12);
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(c cVar) {
        jc.l.f(cVar, "other");
        return this.f15011i - cVar.f15011i;
    }

    public final int b(int i10, int i11, int i12) {
        boolean z10 = false;
        if (new nc.e(0, BaseProgressIndicator.MAX_ALPHA).i(i10) && new nc.e(0, BaseProgressIndicator.MAX_ALPHA).i(i11) && new nc.e(0, BaseProgressIndicator.MAX_ALPHA).i(i12)) {
            z10 = true;
        }
        if (z10) {
            return (i10 << 16) + (i11 << 8) + i12;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i10 + '.' + i11 + '.' + i12).toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        c cVar = obj instanceof c ? (c) obj : null;
        return cVar != null && this.f15011i == cVar.f15011i;
    }

    public int hashCode() {
        return this.f15011i;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f15008f);
        sb2.append('.');
        sb2.append(this.f15009g);
        sb2.append('.');
        sb2.append(this.f15010h);
        return sb2.toString();
    }
}
