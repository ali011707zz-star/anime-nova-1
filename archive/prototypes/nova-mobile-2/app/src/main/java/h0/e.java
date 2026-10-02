package h0;

import android.graphics.Insets;
import android.graphics.Rect;

/* compiled from: Insets.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: e, reason: collision with root package name */
    public static final e f7151e = new e(0, 0, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f7152a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7153b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7154c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7155d;

    public e(int i10, int i11, int i12, int i13) {
        this.f7152a = i10;
        this.f7153b = i11;
        this.f7154c = i12;
        this.f7155d = i13;
    }

    public static e a(e eVar, e eVar2) {
        return b(Math.max(eVar.f7152a, eVar2.f7152a), Math.max(eVar.f7153b, eVar2.f7153b), Math.max(eVar.f7154c, eVar2.f7154c), Math.max(eVar.f7155d, eVar2.f7155d));
    }

    public static e b(int i10, int i11, int i12, int i13) {
        if (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            return f7151e;
        }
        return new e(i10, i11, i12, i13);
    }

    public static e c(Rect rect) {
        return b(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static e d(e eVar, e eVar2) {
        return b(eVar.f7152a - eVar2.f7152a, eVar.f7153b - eVar2.f7153b, eVar.f7154c - eVar2.f7154c, eVar.f7155d - eVar2.f7155d);
    }

    public static e e(Insets insets) {
        return b(insets.left, insets.top, insets.right, insets.bottom);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f7155d == eVar.f7155d && this.f7152a == eVar.f7152a && this.f7154c == eVar.f7154c && this.f7153b == eVar.f7153b;
    }

    public Insets f() {
        return Insets.of(this.f7152a, this.f7153b, this.f7154c, this.f7155d);
    }

    public int hashCode() {
        return (((((this.f7152a * 31) + this.f7153b) * 31) + this.f7154c) * 31) + this.f7155d;
    }

    public String toString() {
        return "Insets{left=" + this.f7152a + ", top=" + this.f7153b + ", right=" + this.f7154c + ", bottom=" + this.f7155d + '}';
    }
}
