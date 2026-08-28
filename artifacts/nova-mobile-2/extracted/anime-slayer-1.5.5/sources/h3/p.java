package h3;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import h3.a;
import java.util.Collections;

/* compiled from: TransformKeyframeAnimation.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f7249a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f7250b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f7251c;

    /* renamed from: d, reason: collision with root package name */
    public final Matrix f7252d;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f7253e;

    /* renamed from: f, reason: collision with root package name */
    public a<PointF, PointF> f7254f;

    /* renamed from: g, reason: collision with root package name */
    public a<?, PointF> f7255g;

    /* renamed from: h, reason: collision with root package name */
    public a<r3.d, r3.d> f7256h;

    /* renamed from: i, reason: collision with root package name */
    public a<Float, Float> f7257i;

    /* renamed from: j, reason: collision with root package name */
    public a<Integer, Integer> f7258j;

    /* renamed from: k, reason: collision with root package name */
    public d f7259k;

    /* renamed from: l, reason: collision with root package name */
    public d f7260l;

    /* renamed from: m, reason: collision with root package name */
    public a<?, Float> f7261m;

    /* renamed from: n, reason: collision with root package name */
    public a<?, Float> f7262n;

    public p(k3.l lVar) {
        this.f7254f = lVar.c() == null ? null : lVar.c().a();
        this.f7255g = lVar.f() == null ? null : lVar.f().a();
        this.f7256h = lVar.h() == null ? null : lVar.h().a();
        this.f7257i = lVar.g() == null ? null : lVar.g().a();
        d dVar = lVar.i() == null ? null : (d) lVar.i().a();
        this.f7259k = dVar;
        if (dVar != null) {
            this.f7250b = new Matrix();
            this.f7251c = new Matrix();
            this.f7252d = new Matrix();
            this.f7253e = new float[9];
        } else {
            this.f7250b = null;
            this.f7251c = null;
            this.f7252d = null;
            this.f7253e = null;
        }
        this.f7260l = lVar.j() == null ? null : (d) lVar.j().a();
        if (lVar.e() != null) {
            this.f7258j = lVar.e().a();
        }
        if (lVar.k() != null) {
            this.f7261m = lVar.k().a();
        } else {
            this.f7261m = null;
        }
        if (lVar.d() != null) {
            this.f7262n = lVar.d().a();
        } else {
            this.f7262n = null;
        }
    }

    public void a(m3.a aVar) {
        aVar.i(this.f7258j);
        aVar.i(this.f7261m);
        aVar.i(this.f7262n);
        aVar.i(this.f7254f);
        aVar.i(this.f7255g);
        aVar.i(this.f7256h);
        aVar.i(this.f7257i);
        aVar.i(this.f7259k);
        aVar.i(this.f7260l);
    }

    public void b(a.b bVar) {
        a<Integer, Integer> aVar = this.f7258j;
        if (aVar != null) {
            aVar.a(bVar);
        }
        a<?, Float> aVar2 = this.f7261m;
        if (aVar2 != null) {
            aVar2.a(bVar);
        }
        a<?, Float> aVar3 = this.f7262n;
        if (aVar3 != null) {
            aVar3.a(bVar);
        }
        a<PointF, PointF> aVar4 = this.f7254f;
        if (aVar4 != null) {
            aVar4.a(bVar);
        }
        a<?, PointF> aVar5 = this.f7255g;
        if (aVar5 != null) {
            aVar5.a(bVar);
        }
        a<r3.d, r3.d> aVar6 = this.f7256h;
        if (aVar6 != null) {
            aVar6.a(bVar);
        }
        a<Float, Float> aVar7 = this.f7257i;
        if (aVar7 != null) {
            aVar7.a(bVar);
        }
        d dVar = this.f7259k;
        if (dVar != null) {
            dVar.a(bVar);
        }
        d dVar2 = this.f7260l;
        if (dVar2 != null) {
            dVar2.a(bVar);
        }
    }

    public <T> boolean c(T t10, r3.c<T> cVar) {
        d dVar;
        d dVar2;
        a<?, Float> aVar;
        a<?, Float> aVar2;
        if (t10 == e3.k.f6110f) {
            a<PointF, PointF> aVar3 = this.f7254f;
            if (aVar3 == null) {
                this.f7254f = new q(cVar, new PointF());
                return true;
            }
            aVar3.n(cVar);
            return true;
        }
        if (t10 == e3.k.f6111g) {
            a<?, PointF> aVar4 = this.f7255g;
            if (aVar4 == null) {
                this.f7255g = new q(cVar, new PointF());
                return true;
            }
            aVar4.n(cVar);
            return true;
        }
        if (t10 == e3.k.f6112h) {
            a<?, PointF> aVar5 = this.f7255g;
            if (aVar5 instanceof n) {
                ((n) aVar5).r(cVar);
                return true;
            }
        }
        if (t10 == e3.k.f6113i) {
            a<?, PointF> aVar6 = this.f7255g;
            if (aVar6 instanceof n) {
                ((n) aVar6).s(cVar);
                return true;
            }
        }
        if (t10 == e3.k.f6119o) {
            a<r3.d, r3.d> aVar7 = this.f7256h;
            if (aVar7 == null) {
                this.f7256h = new q(cVar, new r3.d());
                return true;
            }
            aVar7.n(cVar);
            return true;
        }
        if (t10 == e3.k.f6120p) {
            a<Float, Float> aVar8 = this.f7257i;
            if (aVar8 == null) {
                this.f7257i = new q(cVar, Float.valueOf(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
                return true;
            }
            aVar8.n(cVar);
            return true;
        }
        if (t10 == e3.k.f6107c) {
            a<Integer, Integer> aVar9 = this.f7258j;
            if (aVar9 == null) {
                this.f7258j = new q(cVar, 100);
                return true;
            }
            aVar9.n(cVar);
            return true;
        }
        if (t10 == e3.k.C && (aVar2 = this.f7261m) != null) {
            if (aVar2 == null) {
                this.f7261m = new q(cVar, 100);
                return true;
            }
            aVar2.n(cVar);
            return true;
        }
        if (t10 == e3.k.D && (aVar = this.f7262n) != null) {
            if (aVar == null) {
                this.f7262n = new q(cVar, 100);
                return true;
            }
            aVar.n(cVar);
            return true;
        }
        if (t10 == e3.k.f6121q && (dVar2 = this.f7259k) != null) {
            if (dVar2 == null) {
                this.f7259k = new d(Collections.singletonList(new r3.a(Float.valueOf(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD))));
            }
            this.f7259k.n(cVar);
            return true;
        }
        if (t10 != e3.k.f6122r || (dVar = this.f7260l) == null) {
            return false;
        }
        if (dVar == null) {
            this.f7260l = new d(Collections.singletonList(new r3.a(Float.valueOf(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD))));
        }
        this.f7260l.n(cVar);
        return true;
    }

    public final void d() {
        for (int i10 = 0; i10 < 9; i10++) {
            this.f7253e[i10] = 0.0f;
        }
    }

    public a<?, Float> e() {
        return this.f7262n;
    }

    public Matrix f() {
        float p10;
        this.f7249a.reset();
        a<?, PointF> aVar = this.f7255g;
        if (aVar != null) {
            PointF h10 = aVar.h();
            float f10 = h10.x;
            if (f10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || h10.y != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.f7249a.preTranslate(f10, h10.y);
            }
        }
        a<Float, Float> aVar2 = this.f7257i;
        if (aVar2 != null) {
            if (aVar2 instanceof q) {
                p10 = aVar2.h().floatValue();
            } else {
                p10 = ((d) aVar2).p();
            }
            if (p10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.f7249a.preRotate(p10);
            }
        }
        if (this.f7259k != null) {
            float cos = this.f7260l == null ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : (float) Math.cos(Math.toRadians((-r0.p()) + 90.0f));
            float sin = this.f7260l == null ? 1.0f : (float) Math.sin(Math.toRadians((-r4.p()) + 90.0f));
            float tan = (float) Math.tan(Math.toRadians(this.f7259k.p()));
            d();
            float[] fArr = this.f7253e;
            fArr[0] = cos;
            fArr[1] = sin;
            float f11 = -sin;
            fArr[3] = f11;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            this.f7250b.setValues(fArr);
            d();
            float[] fArr2 = this.f7253e;
            fArr2[0] = 1.0f;
            fArr2[3] = tan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f7251c.setValues(fArr2);
            d();
            float[] fArr3 = this.f7253e;
            fArr3[0] = cos;
            fArr3[1] = f11;
            fArr3[3] = sin;
            fArr3[4] = cos;
            fArr3[8] = 1.0f;
            this.f7252d.setValues(fArr3);
            this.f7251c.preConcat(this.f7250b);
            this.f7252d.preConcat(this.f7251c);
            this.f7249a.preConcat(this.f7252d);
        }
        a<r3.d, r3.d> aVar3 = this.f7256h;
        if (aVar3 != null) {
            r3.d h11 = aVar3.h();
            if (h11.b() != 1.0f || h11.c() != 1.0f) {
                this.f7249a.preScale(h11.b(), h11.c());
            }
        }
        a<PointF, PointF> aVar4 = this.f7254f;
        if (aVar4 != null) {
            PointF h12 = aVar4.h();
            float f12 = h12.x;
            if (f12 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || h12.y != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.f7249a.preTranslate(-f12, -h12.y);
            }
        }
        return this.f7249a;
    }

    public Matrix g(float f10) {
        a<?, PointF> aVar = this.f7255g;
        PointF h10 = aVar == null ? null : aVar.h();
        a<r3.d, r3.d> aVar2 = this.f7256h;
        r3.d h11 = aVar2 == null ? null : aVar2.h();
        this.f7249a.reset();
        if (h10 != null) {
            this.f7249a.preTranslate(h10.x * f10, h10.y * f10);
        }
        if (h11 != null) {
            double d10 = f10;
            this.f7249a.preScale((float) Math.pow(h11.b(), d10), (float) Math.pow(h11.c(), d10));
        }
        a<Float, Float> aVar3 = this.f7257i;
        if (aVar3 != null) {
            float floatValue = aVar3.h().floatValue();
            a<PointF, PointF> aVar4 = this.f7254f;
            PointF h12 = aVar4 != null ? aVar4.h() : null;
            Matrix matrix = this.f7249a;
            float f11 = floatValue * f10;
            float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            float f13 = h12 == null ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : h12.x;
            if (h12 != null) {
                f12 = h12.y;
            }
            matrix.preRotate(f11, f13, f12);
        }
        return this.f7249a;
    }

    public a<?, Integer> h() {
        return this.f7258j;
    }

    public a<?, Float> i() {
        return this.f7261m;
    }

    public void j(float f10) {
        a<Integer, Integer> aVar = this.f7258j;
        if (aVar != null) {
            aVar.m(f10);
        }
        a<?, Float> aVar2 = this.f7261m;
        if (aVar2 != null) {
            aVar2.m(f10);
        }
        a<?, Float> aVar3 = this.f7262n;
        if (aVar3 != null) {
            aVar3.m(f10);
        }
        a<PointF, PointF> aVar4 = this.f7254f;
        if (aVar4 != null) {
            aVar4.m(f10);
        }
        a<?, PointF> aVar5 = this.f7255g;
        if (aVar5 != null) {
            aVar5.m(f10);
        }
        a<r3.d, r3.d> aVar6 = this.f7256h;
        if (aVar6 != null) {
            aVar6.m(f10);
        }
        a<Float, Float> aVar7 = this.f7257i;
        if (aVar7 != null) {
            aVar7.m(f10);
        }
        d dVar = this.f7259k;
        if (dVar != null) {
            dVar.m(f10);
        }
        d dVar2 = this.f7260l;
        if (dVar2 != null) {
            dVar2.m(f10);
        }
    }
}
