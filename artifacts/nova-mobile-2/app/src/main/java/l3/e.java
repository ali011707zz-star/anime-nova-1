package l3;

import android.graphics.Path;

/* compiled from: GradientFill.java */
/* loaded from: classes.dex */
public class e implements c {

    /* renamed from: a, reason: collision with root package name */
    public final g f10297a;

    /* renamed from: b, reason: collision with root package name */
    public final Path.FillType f10298b;

    /* renamed from: c, reason: collision with root package name */
    public final k3.c f10299c;

    /* renamed from: d, reason: collision with root package name */
    public final k3.d f10300d;

    /* renamed from: e, reason: collision with root package name */
    public final k3.f f10301e;

    /* renamed from: f, reason: collision with root package name */
    public final k3.f f10302f;

    /* renamed from: g, reason: collision with root package name */
    public final String f10303g;

    /* renamed from: h, reason: collision with root package name */
    public final k3.b f10304h;

    /* renamed from: i, reason: collision with root package name */
    public final k3.b f10305i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f10306j;

    public e(String str, g gVar, Path.FillType fillType, k3.c cVar, k3.d dVar, k3.f fVar, k3.f fVar2, k3.b bVar, k3.b bVar2, boolean z10) {
        this.f10297a = gVar;
        this.f10298b = fillType;
        this.f10299c = cVar;
        this.f10300d = dVar;
        this.f10301e = fVar;
        this.f10302f = fVar2;
        this.f10303g = str;
        this.f10304h = bVar;
        this.f10305i = bVar2;
        this.f10306j = z10;
    }

    @Override // l3.c
    public g3.c a(e3.f fVar, m3.a aVar) {
        return new g3.h(fVar, aVar, this);
    }

    public k3.f b() {
        return this.f10302f;
    }

    public Path.FillType c() {
        return this.f10298b;
    }

    public k3.c d() {
        return this.f10299c;
    }

    public g e() {
        return this.f10297a;
    }

    public String f() {
        return this.f10303g;
    }

    public k3.d g() {
        return this.f10300d;
    }

    public k3.f h() {
        return this.f10301e;
    }

    public boolean i() {
        return this.f10306j;
    }
}
