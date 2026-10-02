package g9;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import g9.f;

/* compiled from: FSize.java */
/* loaded from: classes.dex */
public final class b extends f.a {

    /* renamed from: e, reason: collision with root package name */
    public static f<b> f7047e;

    /* renamed from: c, reason: collision with root package name */
    public float f7048c;

    /* renamed from: d, reason: collision with root package name */
    public float f7049d;

    static {
        f<b> a10 = f.a(256, new b(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
        f7047e = a10;
        a10.g(0.5f);
    }

    public b() {
    }

    public static b b(float f10, float f11) {
        b b10 = f7047e.b();
        b10.f7048c = f10;
        b10.f7049d = f11;
        return b10;
    }

    public static void c(b bVar) {
        f7047e.c(bVar);
    }

    @Override // g9.f.a
    public f.a a() {
        return new b(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f7048c == bVar.f7048c && this.f7049d == bVar.f7049d;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f7048c) ^ Float.floatToIntBits(this.f7049d);
    }

    public String toString() {
        return this.f7048c + "x" + this.f7049d;
    }

    public b(float f10, float f11) {
        this.f7048c = f10;
        this.f7049d = f11;
    }
}
