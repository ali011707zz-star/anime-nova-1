package g3;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import h3.a;
import java.util.ArrayList;
import java.util.List;
import l3.r;

/* compiled from: BaseStrokeContent.java */
/* loaded from: classes.dex */
public abstract class a implements a.b, k, e {

    /* renamed from: e, reason: collision with root package name */
    public final e3.f f6768e;

    /* renamed from: f, reason: collision with root package name */
    public final m3.a f6769f;

    /* renamed from: h, reason: collision with root package name */
    public final float[] f6771h;

    /* renamed from: i, reason: collision with root package name */
    public final Paint f6772i;

    /* renamed from: j, reason: collision with root package name */
    public final h3.a<?, Float> f6773j;

    /* renamed from: k, reason: collision with root package name */
    public final h3.a<?, Integer> f6774k;

    /* renamed from: l, reason: collision with root package name */
    public final List<h3.a<?, Float>> f6775l;

    /* renamed from: m, reason: collision with root package name */
    public final h3.a<?, Float> f6776m;

    /* renamed from: n, reason: collision with root package name */
    public h3.a<ColorFilter, ColorFilter> f6777n;

    /* renamed from: o, reason: collision with root package name */
    public h3.a<Float, Float> f6778o;

    /* renamed from: p, reason: collision with root package name */
    public float f6779p;

    /* renamed from: q, reason: collision with root package name */
    public h3.c f6780q;

    /* renamed from: a, reason: collision with root package name */
    public final PathMeasure f6764a = new PathMeasure();

    /* renamed from: b, reason: collision with root package name */
    public final Path f6765b = new Path();

    /* renamed from: c, reason: collision with root package name */
    public final Path f6766c = new Path();

    /* renamed from: d, reason: collision with root package name */
    public final RectF f6767d = new RectF();

    /* renamed from: g, reason: collision with root package name */
    public final List<b> f6770g = new ArrayList();

    /* compiled from: BaseStrokeContent.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final List<m> f6781a;

        /* renamed from: b, reason: collision with root package name */
        public final s f6782b;

        public b(s sVar) {
            this.f6781a = new ArrayList();
            this.f6782b = sVar;
        }
    }

    public a(e3.f fVar, m3.a aVar, Paint.Cap cap, Paint.Join join, float f10, k3.d dVar, k3.b bVar, List<k3.b> list, k3.b bVar2) {
        f3.a aVar2 = new f3.a(1);
        this.f6772i = aVar2;
        this.f6779p = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f6768e = fVar;
        this.f6769f = aVar;
        aVar2.setStyle(Paint.Style.STROKE);
        aVar2.setStrokeCap(cap);
        aVar2.setStrokeJoin(join);
        aVar2.setStrokeMiter(f10);
        this.f6774k = dVar.a();
        this.f6773j = bVar.a();
        if (bVar2 == null) {
            this.f6776m = null;
        } else {
            this.f6776m = bVar2.a();
        }
        this.f6775l = new ArrayList(list.size());
        this.f6771h = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f6775l.add(list.get(i10).a());
        }
        aVar.i(this.f6774k);
        aVar.i(this.f6773j);
        for (int i11 = 0; i11 < this.f6775l.size(); i11++) {
            aVar.i(this.f6775l.get(i11));
        }
        h3.a<?, Float> aVar3 = this.f6776m;
        if (aVar3 != null) {
            aVar.i(aVar3);
        }
        this.f6774k.a(this);
        this.f6773j.a(this);
        for (int i12 = 0; i12 < list.size(); i12++) {
            this.f6775l.get(i12).a(this);
        }
        h3.a<?, Float> aVar4 = this.f6776m;
        if (aVar4 != null) {
            aVar4.a(this);
        }
        if (aVar.v() != null) {
            h3.a<Float, Float> a10 = aVar.v().a().a();
            this.f6778o = a10;
            a10.a(this);
            aVar.i(this.f6778o);
        }
        if (aVar.x() != null) {
            this.f6780q = new h3.c(this, aVar, aVar.x());
        }
    }

    @Override // g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        e3.c.a("StrokeContent#getBounds");
        this.f6765b.reset();
        for (int i10 = 0; i10 < this.f6770g.size(); i10++) {
            b bVar = this.f6770g.get(i10);
            for (int i11 = 0; i11 < bVar.f6781a.size(); i11++) {
                this.f6765b.addPath(((m) bVar.f6781a.get(i11)).getPath(), matrix);
            }
        }
        this.f6765b.computeBounds(this.f6767d, false);
        float p10 = ((h3.d) this.f6773j).p();
        RectF rectF2 = this.f6767d;
        float f10 = p10 / 2.0f;
        rectF2.set(rectF2.left - f10, rectF2.top - f10, rectF2.right + f10, rectF2.bottom + f10);
        rectF.set(this.f6767d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        e3.c.b("StrokeContent#getBounds");
    }

    @Override // h3.a.b
    public void b() {
        this.f6768e.invalidateSelf();
    }

    @Override // g3.c
    public void c(List<c> list, List<c> list2) {
        s sVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof s) {
                s sVar2 = (s) cVar;
                if (sVar2.i() == r.a.INDIVIDUALLY) {
                    sVar = sVar2;
                }
            }
        }
        if (sVar != null) {
            sVar.d(this);
        }
        b bVar = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            c cVar2 = list2.get(size2);
            if (cVar2 instanceof s) {
                s sVar3 = (s) cVar2;
                if (sVar3.i() == r.a.INDIVIDUALLY) {
                    if (bVar != null) {
                        this.f6770g.add(bVar);
                    }
                    bVar = new b(sVar3);
                    sVar3.d(this);
                }
            }
            if (cVar2 instanceof m) {
                if (bVar == null) {
                    bVar = new b(sVar);
                }
                bVar.f6781a.add((m) cVar2);
            }
        }
        if (bVar != null) {
            this.f6770g.add(bVar);
        }
    }

    public final void d(Matrix matrix) {
        e3.c.a("StrokeContent#applyDashPattern");
        if (this.f6775l.isEmpty()) {
            e3.c.b("StrokeContent#applyDashPattern");
            return;
        }
        float g10 = q3.h.g(matrix);
        for (int i10 = 0; i10 < this.f6775l.size(); i10++) {
            this.f6771h[i10] = this.f6775l.get(i10).h().floatValue();
            if (i10 % 2 == 0) {
                float[] fArr = this.f6771h;
                if (fArr[i10] < 1.0f) {
                    fArr[i10] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f6771h;
                if (fArr2[i10] < 0.1f) {
                    fArr2[i10] = 0.1f;
                }
            }
            float[] fArr3 = this.f6771h;
            fArr3[i10] = fArr3[i10] * g10;
        }
        h3.a<?, Float> aVar = this.f6776m;
        this.f6772i.setPathEffect(new DashPathEffect(this.f6771h, aVar == null ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : g10 * aVar.h().floatValue()));
        e3.c.b("StrokeContent#applyDashPattern");
    }

    @Override // j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        h3.c cVar2;
        h3.c cVar3;
        h3.c cVar4;
        h3.c cVar5;
        h3.c cVar6;
        if (t10 == e3.k.f6108d) {
            this.f6774k.n(cVar);
            return;
        }
        if (t10 == e3.k.f6123s) {
            this.f6773j.n(cVar);
            return;
        }
        if (t10 == e3.k.K) {
            h3.a<ColorFilter, ColorFilter> aVar = this.f6777n;
            if (aVar != null) {
                this.f6769f.F(aVar);
            }
            if (cVar == null) {
                this.f6777n = null;
                return;
            }
            h3.q qVar = new h3.q(cVar);
            this.f6777n = qVar;
            qVar.a(this);
            this.f6769f.i(this.f6777n);
            return;
        }
        if (t10 == e3.k.f6114j) {
            h3.a<Float, Float> aVar2 = this.f6778o;
            if (aVar2 != null) {
                aVar2.n(cVar);
                return;
            }
            h3.q qVar2 = new h3.q(cVar);
            this.f6778o = qVar2;
            qVar2.a(this);
            this.f6769f.i(this.f6778o);
            return;
        }
        if (t10 == e3.k.f6109e && (cVar6 = this.f6780q) != null) {
            cVar6.c(cVar);
            return;
        }
        if (t10 == e3.k.G && (cVar5 = this.f6780q) != null) {
            cVar5.f(cVar);
            return;
        }
        if (t10 == e3.k.H && (cVar4 = this.f6780q) != null) {
            cVar4.d(cVar);
            return;
        }
        if (t10 == e3.k.I && (cVar3 = this.f6780q) != null) {
            cVar3.e(cVar);
        } else {
            if (t10 != e3.k.J || (cVar2 = this.f6780q) == null) {
                return;
            }
            cVar2.g(cVar);
        }
    }

    @Override // j3.f
    public void f(j3.e eVar, int i10, List<j3.e> list, j3.e eVar2) {
        q3.g.m(eVar, i10, list, eVar2, this);
    }

    @Override // g3.e
    public void g(Canvas canvas, Matrix matrix, int i10) {
        e3.c.a("StrokeContent#draw");
        if (q3.h.h(matrix)) {
            e3.c.b("StrokeContent#draw");
            return;
        }
        this.f6772i.setAlpha(q3.g.d((int) ((((i10 / 255.0f) * ((h3.f) this.f6774k).p()) / 100.0f) * 255.0f), 0, BaseProgressIndicator.MAX_ALPHA));
        this.f6772i.setStrokeWidth(((h3.d) this.f6773j).p() * q3.h.g(matrix));
        if (this.f6772i.getStrokeWidth() <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            e3.c.b("StrokeContent#draw");
            return;
        }
        d(matrix);
        h3.a<ColorFilter, ColorFilter> aVar = this.f6777n;
        if (aVar != null) {
            this.f6772i.setColorFilter(aVar.h());
        }
        h3.a<Float, Float> aVar2 = this.f6778o;
        if (aVar2 != null) {
            float floatValue = aVar2.h().floatValue();
            if (floatValue == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.f6772i.setMaskFilter(null);
            } else if (floatValue != this.f6779p) {
                this.f6772i.setMaskFilter(this.f6769f.w(floatValue));
            }
            this.f6779p = floatValue;
        }
        h3.c cVar = this.f6780q;
        if (cVar != null) {
            cVar.a(this.f6772i);
        }
        for (int i11 = 0; i11 < this.f6770g.size(); i11++) {
            b bVar = this.f6770g.get(i11);
            if (bVar.f6782b != null) {
                h(canvas, bVar, matrix);
            } else {
                e3.c.a("StrokeContent#buildPath");
                this.f6765b.reset();
                for (int size = bVar.f6781a.size() - 1; size >= 0; size--) {
                    this.f6765b.addPath(((m) bVar.f6781a.get(size)).getPath(), matrix);
                }
                e3.c.b("StrokeContent#buildPath");
                e3.c.a("StrokeContent#drawPath");
                canvas.drawPath(this.f6765b, this.f6772i);
                e3.c.b("StrokeContent#drawPath");
            }
        }
        e3.c.b("StrokeContent#draw");
    }

    public final void h(Canvas canvas, b bVar, Matrix matrix) {
        e3.c.a("StrokeContent#applyTrimPath");
        if (bVar.f6782b == null) {
            e3.c.b("StrokeContent#applyTrimPath");
            return;
        }
        this.f6765b.reset();
        for (int size = bVar.f6781a.size() - 1; size >= 0; size--) {
            this.f6765b.addPath(((m) bVar.f6781a.get(size)).getPath(), matrix);
        }
        this.f6764a.setPath(this.f6765b, false);
        float length = this.f6764a.getLength();
        while (this.f6764a.nextContour()) {
            length += this.f6764a.getLength();
        }
        float floatValue = (bVar.f6782b.f().h().floatValue() * length) / 360.0f;
        float floatValue2 = ((bVar.f6782b.h().h().floatValue() * length) / 100.0f) + floatValue;
        float floatValue3 = ((bVar.f6782b.e().h().floatValue() * length) / 100.0f) + floatValue;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        for (int size2 = bVar.f6781a.size() - 1; size2 >= 0; size2--) {
            this.f6766c.set(((m) bVar.f6781a.get(size2)).getPath());
            this.f6766c.transform(matrix);
            this.f6764a.setPath(this.f6766c, false);
            float length2 = this.f6764a.getLength();
            if (floatValue3 > length) {
                float f11 = floatValue3 - length;
                if (f11 < f10 + length2 && f10 < f11) {
                    q3.h.a(this.f6766c, floatValue2 > length ? (floatValue2 - length) / length2 : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Math.min(f11 / length2, 1.0f), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    canvas.drawPath(this.f6766c, this.f6772i);
                    f10 += length2;
                }
            }
            float f12 = f10 + length2;
            if (f12 >= floatValue2 && f10 <= floatValue3) {
                if (f12 <= floatValue3 && floatValue2 < f10) {
                    canvas.drawPath(this.f6766c, this.f6772i);
                } else {
                    q3.h.a(this.f6766c, floatValue2 < f10 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : (floatValue2 - f10) / length2, floatValue3 <= f12 ? (floatValue3 - f10) / length2 : 1.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    canvas.drawPath(this.f6766c, this.f6772i);
                }
            }
            f10 += length2;
        }
        e3.c.b("StrokeContent#applyTrimPath");
    }
}
