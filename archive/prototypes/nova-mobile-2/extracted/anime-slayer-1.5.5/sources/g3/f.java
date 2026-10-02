package g3;

import android.graphics.Path;
import android.graphics.PointF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import h3.a;
import java.util.List;
import l3.r;

/* compiled from: EllipseContent.java */
/* loaded from: classes.dex */
public class f implements m, a.b, k {

    /* renamed from: b, reason: collision with root package name */
    public final String f6796b;

    /* renamed from: c, reason: collision with root package name */
    public final e3.f f6797c;

    /* renamed from: d, reason: collision with root package name */
    public final h3.a<?, PointF> f6798d;

    /* renamed from: e, reason: collision with root package name */
    public final h3.a<?, PointF> f6799e;

    /* renamed from: f, reason: collision with root package name */
    public final l3.b f6800f;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6802h;

    /* renamed from: a, reason: collision with root package name */
    public final Path f6795a = new Path();

    /* renamed from: g, reason: collision with root package name */
    public b f6801g = new b();

    public f(e3.f fVar, m3.a aVar, l3.b bVar) {
        this.f6796b = bVar.b();
        this.f6797c = fVar;
        h3.a<PointF, PointF> a10 = bVar.d().a();
        this.f6798d = a10;
        h3.a<PointF, PointF> a11 = bVar.c().a();
        this.f6799e = a11;
        this.f6800f = bVar;
        aVar.i(a10);
        aVar.i(a11);
        a10.a(this);
        a11.a(this);
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
                    this.f6801g.a(sVar);
                    sVar.d(this);
                }
            }
        }
    }

    public final void d() {
        this.f6802h = false;
        this.f6797c.invalidateSelf();
    }

    @Override // j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        if (t10 == e3.k.f6115k) {
            this.f6798d.n(cVar);
        } else if (t10 == e3.k.f6118n) {
            this.f6799e.n(cVar);
        }
    }

    @Override // j3.f
    public void f(j3.e eVar, int i10, List<j3.e> list, j3.e eVar2) {
        q3.g.m(eVar, i10, list, eVar2, this);
    }

    @Override // g3.c
    public String getName() {
        return this.f6796b;
    }

    @Override // g3.m
    public Path getPath() {
        if (this.f6802h) {
            return this.f6795a;
        }
        this.f6795a.reset();
        if (this.f6800f.e()) {
            this.f6802h = true;
            return this.f6795a;
        }
        PointF h10 = this.f6798d.h();
        float f10 = h10.x / 2.0f;
        float f11 = h10.y / 2.0f;
        float f12 = f10 * 0.55228f;
        float f13 = 0.55228f * f11;
        this.f6795a.reset();
        if (this.f6800f.f()) {
            float f14 = -f11;
            this.f6795a.moveTo(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f14);
            Path path = this.f6795a;
            float f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD - f12;
            float f16 = -f10;
            float f17 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD - f13;
            path.cubicTo(f15, f14, f16, f17, f16, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            Path path2 = this.f6795a;
            float f18 = f13 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            path2.cubicTo(f16, f18, f15, f11, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f11);
            Path path3 = this.f6795a;
            float f19 = f12 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            path3.cubicTo(f19, f11, f10, f18, f10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            this.f6795a.cubicTo(f10, f17, f19, f14, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f14);
        } else {
            float f20 = -f11;
            this.f6795a.moveTo(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f20);
            Path path4 = this.f6795a;
            float f21 = f12 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            float f22 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD - f13;
            path4.cubicTo(f21, f20, f10, f22, f10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            Path path5 = this.f6795a;
            float f23 = f13 + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            path5.cubicTo(f10, f23, f21, f11, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f11);
            Path path6 = this.f6795a;
            float f24 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD - f12;
            float f25 = -f10;
            path6.cubicTo(f24, f11, f25, f23, f25, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            this.f6795a.cubicTo(f25, f22, f24, f20, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f20);
        }
        PointF h11 = this.f6799e.h();
        this.f6795a.offset(h11.x, h11.y);
        this.f6795a.close();
        this.f6801g.b(this.f6795a);
        this.f6802h = true;
        return this.f6795a;
    }
}
