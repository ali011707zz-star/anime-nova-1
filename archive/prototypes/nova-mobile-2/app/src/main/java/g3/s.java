package g3;

import h3.a;
import java.util.ArrayList;
import java.util.List;
import l3.r;

/* compiled from: TrimPathContent.java */
/* loaded from: classes.dex */
public class s implements c, a.b {

    /* renamed from: a, reason: collision with root package name */
    public final String f6900a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6901b;

    /* renamed from: c, reason: collision with root package name */
    public final List<a.b> f6902c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final r.a f6903d;

    /* renamed from: e, reason: collision with root package name */
    public final h3.a<?, Float> f6904e;

    /* renamed from: f, reason: collision with root package name */
    public final h3.a<?, Float> f6905f;

    /* renamed from: g, reason: collision with root package name */
    public final h3.a<?, Float> f6906g;

    public s(m3.a aVar, l3.r rVar) {
        this.f6900a = rVar.c();
        this.f6901b = rVar.g();
        this.f6903d = rVar.f();
        h3.a<Float, Float> a10 = rVar.e().a();
        this.f6904e = a10;
        h3.a<Float, Float> a11 = rVar.b().a();
        this.f6905f = a11;
        h3.a<Float, Float> a12 = rVar.d().a();
        this.f6906g = a12;
        aVar.i(a10);
        aVar.i(a11);
        aVar.i(a12);
        a10.a(this);
        a11.a(this);
        a12.a(this);
    }

    @Override // h3.a.b
    public void b() {
        for (int i10 = 0; i10 < this.f6902c.size(); i10++) {
            this.f6902c.get(i10).b();
        }
    }

    @Override // g3.c
    public void c(List<c> list, List<c> list2) {
    }

    public void d(a.b bVar) {
        this.f6902c.add(bVar);
    }

    public h3.a<?, Float> e() {
        return this.f6905f;
    }

    public h3.a<?, Float> f() {
        return this.f6906g;
    }

    public h3.a<?, Float> h() {
        return this.f6904e;
    }

    public r.a i() {
        return this.f6903d;
    }

    public boolean j() {
        return this.f6901b;
    }
}
