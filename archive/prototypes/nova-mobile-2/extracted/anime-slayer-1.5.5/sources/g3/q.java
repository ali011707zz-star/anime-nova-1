package g3;

import android.graphics.Path;
import h3.a;
import java.util.List;
import l3.r;

/* compiled from: ShapeContent.java */
/* loaded from: classes.dex */
public class q implements m, a.b {

    /* renamed from: b, reason: collision with root package name */
    public final String f6889b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f6890c;

    /* renamed from: d, reason: collision with root package name */
    public final e3.f f6891d;

    /* renamed from: e, reason: collision with root package name */
    public final h3.a<?, Path> f6892e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f6893f;

    /* renamed from: a, reason: collision with root package name */
    public final Path f6888a = new Path();

    /* renamed from: g, reason: collision with root package name */
    public b f6894g = new b();

    public q(e3.f fVar, m3.a aVar, l3.p pVar) {
        this.f6889b = pVar.b();
        this.f6890c = pVar.d();
        this.f6891d = fVar;
        h3.a<l3.m, Path> a10 = pVar.c().a();
        this.f6892e = a10;
        aVar.i(a10);
        a10.a(this);
    }

    @Override // h3.a.b
    public void b() {
        d();
    }

    @Override // g3.c
    public void c(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            if (cVar instanceof s) {
                s sVar = (s) cVar;
                if (sVar.i() == r.a.SIMULTANEOUSLY) {
                    this.f6894g.a(sVar);
                    sVar.d(this);
                }
            }
        }
    }

    public final void d() {
        this.f6893f = false;
        this.f6891d.invalidateSelf();
    }

    @Override // g3.m
    public Path getPath() {
        if (this.f6893f) {
            return this.f6888a;
        }
        this.f6888a.reset();
        if (this.f6890c) {
            this.f6893f = true;
            return this.f6888a;
        }
        this.f6888a.set(this.f6892e.h());
        this.f6888a.setFillType(Path.FillType.EVEN_ODD);
        this.f6894g.b(this.f6888a);
        this.f6893f = true;
        return this.f6888a;
    }
}
