package g3;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import h3.a;
import java.util.List;
import l3.r;

/* compiled from: RectangleContent.java */
/* loaded from: classes.dex */
public class o implements a.b, k, m {

    /* renamed from: c, reason: collision with root package name */
    public final String f6870c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f6871d;

    /* renamed from: e, reason: collision with root package name */
    public final e3.f f6872e;

    /* renamed from: f, reason: collision with root package name */
    public final h3.a<?, PointF> f6873f;

    /* renamed from: g, reason: collision with root package name */
    public final h3.a<?, PointF> f6874g;

    /* renamed from: h, reason: collision with root package name */
    public final h3.a<?, Float> f6875h;

    /* renamed from: j, reason: collision with root package name */
    public boolean f6877j;

    /* renamed from: a, reason: collision with root package name */
    public final Path f6868a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final RectF f6869b = new RectF();

    /* renamed from: i, reason: collision with root package name */
    public b f6876i = new b();

    public o(e3.f fVar, m3.a aVar, l3.k kVar) {
        this.f6870c = kVar.c();
        this.f6871d = kVar.f();
        this.f6872e = fVar;
        h3.a<PointF, PointF> a10 = kVar.d().a();
        this.f6873f = a10;
        h3.a<PointF, PointF> a11 = kVar.e().a();
        this.f6874g = a11;
        h3.a<Float, Float> a12 = kVar.b().a();
        this.f6875h = a12;
        aVar.i(a10);
        aVar.i(a11);
        aVar.i(a12);
        a10.a(this);
        a11.a(this);
        a12.a(this);
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
                    this.f6876i.a(sVar);
                    sVar.d(this);
                }
            }
        }
    }

    public final void d() {
        this.f6877j = false;
        this.f6872e.invalidateSelf();
    }

    @Override // j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        if (t10 == e3.k.f6116l) {
            this.f6874g.n(cVar);
        } else if (t10 == e3.k.f6118n) {
            this.f6873f.n(cVar);
        } else if (t10 == e3.k.f6117m) {
            this.f6875h.n(cVar);
        }
    }

    @Override // j3.f
    public void f(j3.e eVar, int i10, List<j3.e> list, j3.e eVar2) {
        q3.g.m(eVar, i10, list, eVar2, this);
    }

    @Override // g3.c
    public String getName() {
        return this.f6870c;
    }

    @Override // g3.m
    public Path getPath() {
        if (this.f6877j) {
            return this.f6868a;
        }
        this.f6868a.reset();
        if (this.f6871d) {
            this.f6877j = true;
            return this.f6868a;
        }
        PointF h10 = this.f6874g.h();
        float f10 = h10.x / 2.0f;
        float f11 = h10.y / 2.0f;
        h3.a<?, Float> aVar = this.f6875h;
        float p10 = aVar == null ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : ((h3.d) aVar).p();
        float min = Math.min(f10, f11);
        if (p10 > min) {
            p10 = min;
        }
        PointF h11 = this.f6873f.h();
        this.f6868a.moveTo(h11.x + f10, (h11.y - f11) + p10);
        this.f6868a.lineTo(h11.x + f10, (h11.y + f11) - p10);
        if (p10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            RectF rectF = this.f6869b;
            float f12 = h11.x;
            float f13 = p10 * 2.0f;
            float f14 = h11.y;
            rectF.set((f12 + f10) - f13, (f14 + f11) - f13, f12 + f10, f14 + f11);
            this.f6868a.arcTo(this.f6869b, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 90.0f, false);
        }
        this.f6868a.lineTo((h11.x - f10) + p10, h11.y + f11);
        if (p10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            RectF rectF2 = this.f6869b;
            float f15 = h11.x;
            float f16 = h11.y;
            float f17 = p10 * 2.0f;
            rectF2.set(f15 - f10, (f16 + f11) - f17, (f15 - f10) + f17, f16 + f11);
            this.f6868a.arcTo(this.f6869b, 90.0f, 90.0f, false);
        }
        this.f6868a.lineTo(h11.x - f10, (h11.y - f11) + p10);
        if (p10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            RectF rectF3 = this.f6869b;
            float f18 = h11.x;
            float f19 = h11.y;
            float f20 = p10 * 2.0f;
            rectF3.set(f18 - f10, f19 - f11, (f18 - f10) + f20, (f19 - f11) + f20);
            this.f6868a.arcTo(this.f6869b, 180.0f, 90.0f, false);
        }
        this.f6868a.lineTo((h11.x + f10) - p10, h11.y - f11);
        if (p10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            RectF rectF4 = this.f6869b;
            float f21 = h11.x;
            float f22 = p10 * 2.0f;
            float f23 = h11.y;
            rectF4.set((f21 + f10) - f22, f23 - f11, f21 + f10, (f23 - f11) + f22);
            this.f6868a.arcTo(this.f6869b, 270.0f, 90.0f, false);
        }
        this.f6868a.close();
        this.f6876i.b(this.f6868a);
        this.f6877j = true;
        return this.f6868a;
    }
}
