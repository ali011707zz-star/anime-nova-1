package l3;

/* compiled from: Repeater.java */
/* loaded from: classes.dex */
public class l implements c {

    /* renamed from: a, reason: collision with root package name */
    public final String f10360a;

    /* renamed from: b, reason: collision with root package name */
    public final k3.b f10361b;

    /* renamed from: c, reason: collision with root package name */
    public final k3.b f10362c;

    /* renamed from: d, reason: collision with root package name */
    public final k3.l f10363d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10364e;

    public l(String str, k3.b bVar, k3.b bVar2, k3.l lVar, boolean z10) {
        this.f10360a = str;
        this.f10361b = bVar;
        this.f10362c = bVar2;
        this.f10363d = lVar;
        this.f10364e = z10;
    }

    @Override // l3.c
    public g3.c a(e3.f fVar, m3.a aVar) {
        return new g3.p(fVar, aVar, this);
    }

    public k3.b b() {
        return this.f10361b;
    }

    public String c() {
        return this.f10360a;
    }

    public k3.b d() {
        return this.f10362c;
    }

    public k3.l e() {
        return this.f10363d;
    }

    public boolean f() {
        return this.f10364e;
    }
}
