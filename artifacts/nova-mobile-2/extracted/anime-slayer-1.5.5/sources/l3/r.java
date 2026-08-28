package l3;

import g3.s;

/* compiled from: ShapeTrimPath.java */
/* loaded from: classes.dex */
public class r implements c {

    /* renamed from: a, reason: collision with root package name */
    public final String f10401a;

    /* renamed from: b, reason: collision with root package name */
    public final a f10402b;

    /* renamed from: c, reason: collision with root package name */
    public final k3.b f10403c;

    /* renamed from: d, reason: collision with root package name */
    public final k3.b f10404d;

    /* renamed from: e, reason: collision with root package name */
    public final k3.b f10405e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f10406f;

    /* compiled from: ShapeTrimPath.java */
    /* loaded from: classes.dex */
    public enum a {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static a a(int i10) {
            if (i10 == 1) {
                return SIMULTANEOUSLY;
            }
            if (i10 == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException("Unknown trim path type " + i10);
        }
    }

    public r(String str, a aVar, k3.b bVar, k3.b bVar2, k3.b bVar3, boolean z10) {
        this.f10401a = str;
        this.f10402b = aVar;
        this.f10403c = bVar;
        this.f10404d = bVar2;
        this.f10405e = bVar3;
        this.f10406f = z10;
    }

    @Override // l3.c
    public g3.c a(e3.f fVar, m3.a aVar) {
        return new s(aVar, this);
    }

    public k3.b b() {
        return this.f10404d;
    }

    public String c() {
        return this.f10401a;
    }

    public k3.b d() {
        return this.f10405e;
    }

    public k3.b e() {
        return this.f10403c;
    }

    public a f() {
        return this.f10402b;
    }

    public boolean g() {
        return this.f10406f;
    }

    public String toString() {
        return "Trim Path: {start: " + this.f10403c + ", end: " + this.f10404d + ", offset: " + this.f10405e + "}";
    }
}
