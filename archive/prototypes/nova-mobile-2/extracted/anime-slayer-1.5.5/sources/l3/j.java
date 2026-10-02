package l3;

import android.graphics.PointF;

/* compiled from: PolystarShape.java */
/* loaded from: classes.dex */
public class j implements c {

    /* renamed from: a, reason: collision with root package name */
    public final String f10341a;

    /* renamed from: b, reason: collision with root package name */
    public final a f10342b;

    /* renamed from: c, reason: collision with root package name */
    public final k3.b f10343c;

    /* renamed from: d, reason: collision with root package name */
    public final k3.m<PointF, PointF> f10344d;

    /* renamed from: e, reason: collision with root package name */
    public final k3.b f10345e;

    /* renamed from: f, reason: collision with root package name */
    public final k3.b f10346f;

    /* renamed from: g, reason: collision with root package name */
    public final k3.b f10347g;

    /* renamed from: h, reason: collision with root package name */
    public final k3.b f10348h;

    /* renamed from: i, reason: collision with root package name */
    public final k3.b f10349i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f10350j;

    /* compiled from: PolystarShape.java */
    /* loaded from: classes.dex */
    public enum a {
        STAR(1),
        POLYGON(2);


        /* renamed from: f, reason: collision with root package name */
        public final int f10354f;

        a(int i10) {
            this.f10354f = i10;
        }

        public static a a(int i10) {
            for (a aVar : values()) {
                if (aVar.f10354f == i10) {
                    return aVar;
                }
            }
            return null;
        }
    }

    public j(String str, a aVar, k3.b bVar, k3.m<PointF, PointF> mVar, k3.b bVar2, k3.b bVar3, k3.b bVar4, k3.b bVar5, k3.b bVar6, boolean z10) {
        this.f10341a = str;
        this.f10342b = aVar;
        this.f10343c = bVar;
        this.f10344d = mVar;
        this.f10345e = bVar2;
        this.f10346f = bVar3;
        this.f10347g = bVar4;
        this.f10348h = bVar5;
        this.f10349i = bVar6;
        this.f10350j = z10;
    }

    @Override // l3.c
    public g3.c a(e3.f fVar, m3.a aVar) {
        return new g3.n(fVar, aVar, this);
    }

    public k3.b b() {
        return this.f10346f;
    }

    public k3.b c() {
        return this.f10348h;
    }

    public String d() {
        return this.f10341a;
    }

    public k3.b e() {
        return this.f10347g;
    }

    public k3.b f() {
        return this.f10349i;
    }

    public k3.b g() {
        return this.f10343c;
    }

    public k3.m<PointF, PointF> h() {
        return this.f10344d;
    }

    public k3.b i() {
        return this.f10345e;
    }

    public a j() {
        return this.f10342b;
    }

    public boolean k() {
        return this.f10350j;
    }
}
