package l3;

import android.graphics.Path;

/* compiled from: ShapeFill.java */
/* loaded from: classes.dex */
public class n implements c {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f10368a;

    /* renamed from: b, reason: collision with root package name */
    public final Path.FillType f10369b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10370c;

    /* renamed from: d, reason: collision with root package name */
    public final k3.a f10371d;

    /* renamed from: e, reason: collision with root package name */
    public final k3.d f10372e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f10373f;

    public n(String str, boolean z10, Path.FillType fillType, k3.a aVar, k3.d dVar, boolean z11) {
        this.f10370c = str;
        this.f10368a = z10;
        this.f10369b = fillType;
        this.f10371d = aVar;
        this.f10372e = dVar;
        this.f10373f = z11;
    }

    @Override // l3.c
    public g3.c a(e3.f fVar, m3.a aVar) {
        return new g3.g(fVar, aVar, this);
    }

    public k3.a b() {
        return this.f10371d;
    }

    public Path.FillType c() {
        return this.f10369b;
    }

    public String d() {
        return this.f10370c;
    }

    public k3.d e() {
        return this.f10372e;
    }

    public boolean f() {
        return this.f10373f;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f10368a + '}';
    }
}
