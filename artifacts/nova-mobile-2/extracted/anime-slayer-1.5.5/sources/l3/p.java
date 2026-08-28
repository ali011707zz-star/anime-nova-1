package l3;

/* compiled from: ShapePath.java */
/* loaded from: classes.dex */
public class p implements c {

    /* renamed from: a, reason: collision with root package name */
    public final String f10377a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10378b;

    /* renamed from: c, reason: collision with root package name */
    public final k3.h f10379c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f10380d;

    public p(String str, int i10, k3.h hVar, boolean z10) {
        this.f10377a = str;
        this.f10378b = i10;
        this.f10379c = hVar;
        this.f10380d = z10;
    }

    @Override // l3.c
    public g3.c a(e3.f fVar, m3.a aVar) {
        return new g3.q(fVar, aVar, this);
    }

    public String b() {
        return this.f10377a;
    }

    public k3.h c() {
        return this.f10379c;
    }

    public boolean d() {
        return this.f10380d;
    }

    public String toString() {
        return "ShapePath{name=" + this.f10377a + ", index=" + this.f10378b + '}';
    }
}
