package i2;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: NetworkState.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public boolean f7537a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f7538b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7539c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f7540d;

    public b(boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f7537a = z10;
        this.f7538b = z11;
        this.f7539c = z12;
        this.f7540d = z13;
    }

    public boolean a() {
        return this.f7537a;
    }

    public boolean b() {
        return this.f7539c;
    }

    public boolean c() {
        return this.f7540d;
    }

    public boolean d() {
        return this.f7538b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f7537a == bVar.f7537a && this.f7538b == bVar.f7538b && this.f7539c == bVar.f7539c && this.f7540d == bVar.f7540d;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public int hashCode() {
        var r02 = this.f7537a;
        int i10 = r02;
        if (this.f7538b) {
            i10 = r02 + 16;
        }
        int i11 = i10;
        if (this.f7539c) {
            i11 = i10 + 256;
        }
        return this.f7540d ? i11 + RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT : i11;
    }

    public String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f7537a), Boolean.valueOf(this.f7538b), Boolean.valueOf(this.f7539c), Boolean.valueOf(this.f7540d));
    }
}
