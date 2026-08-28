package g3;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import h3.a;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FillContent.java */
/* loaded from: classes.dex */
public class g implements e, a.b, k {

    /* renamed from: a, reason: collision with root package name */
    public final Path f6803a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f6804b;

    /* renamed from: c, reason: collision with root package name */
    public final m3.a f6805c;

    /* renamed from: d, reason: collision with root package name */
    public final String f6806d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f6807e;

    /* renamed from: f, reason: collision with root package name */
    public final List<m> f6808f;

    /* renamed from: g, reason: collision with root package name */
    public final h3.a<Integer, Integer> f6809g;

    /* renamed from: h, reason: collision with root package name */
    public final h3.a<Integer, Integer> f6810h;

    /* renamed from: i, reason: collision with root package name */
    public h3.a<ColorFilter, ColorFilter> f6811i;

    /* renamed from: j, reason: collision with root package name */
    public final e3.f f6812j;

    /* renamed from: k, reason: collision with root package name */
    public h3.a<Float, Float> f6813k;

    /* renamed from: l, reason: collision with root package name */
    public float f6814l;

    /* renamed from: m, reason: collision with root package name */
    public h3.c f6815m;

    public g(e3.f fVar, m3.a aVar, l3.n nVar) {
        Path path = new Path();
        this.f6803a = path;
        this.f6804b = new f3.a(1);
        this.f6808f = new ArrayList();
        this.f6805c = aVar;
        this.f6806d = nVar.d();
        this.f6807e = nVar.f();
        this.f6812j = fVar;
        if (aVar.v() != null) {
            h3.a<Float, Float> a10 = aVar.v().a().a();
            this.f6813k = a10;
            a10.a(this);
            aVar.i(this.f6813k);
        }
        if (aVar.x() != null) {
            this.f6815m = new h3.c(this, aVar, aVar.x());
        }
        if (nVar.b() != null && nVar.e() != null) {
            path.setFillType(nVar.c());
            h3.a<Integer, Integer> a11 = nVar.b().a();
            this.f6809g = a11;
            a11.a(this);
            aVar.i(a11);
            h3.a<Integer, Integer> a12 = nVar.e().a();
            this.f6810h = a12;
            a12.a(this);
            aVar.i(a12);
            return;
        }
        this.f6809g = null;
        this.f6810h = null;
    }

    @Override // g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        this.f6803a.reset();
        for (int i10 = 0; i10 < this.f6808f.size(); i10++) {
            this.f6803a.addPath(this.f6808f.get(i10).getPath(), matrix);
        }
        this.f6803a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // h3.a.b
    public void b() {
        this.f6812j.invalidateSelf();
    }

    @Override // g3.c
    public void c(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = list2.get(i10);
            if (cVar instanceof m) {
                this.f6808f.add((m) cVar);
            }
        }
    }

    @Override // j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        h3.c cVar2;
        h3.c cVar3;
        h3.c cVar4;
        h3.c cVar5;
        h3.c cVar6;
        if (t10 == e3.k.f6105a) {
            this.f6809g.n(cVar);
            return;
        }
        if (t10 == e3.k.f6108d) {
            this.f6810h.n(cVar);
            return;
        }
        if (t10 == e3.k.K) {
            h3.a<ColorFilter, ColorFilter> aVar = this.f6811i;
            if (aVar != null) {
                this.f6805c.F(aVar);
            }
            if (cVar == null) {
                this.f6811i = null;
                return;
            }
            h3.q qVar = new h3.q(cVar);
            this.f6811i = qVar;
            qVar.a(this);
            this.f6805c.i(this.f6811i);
            return;
        }
        if (t10 == e3.k.f6114j) {
            h3.a<Float, Float> aVar2 = this.f6813k;
            if (aVar2 != null) {
                aVar2.n(cVar);
                return;
            }
            h3.q qVar2 = new h3.q(cVar);
            this.f6813k = qVar2;
            qVar2.a(this);
            this.f6805c.i(this.f6813k);
            return;
        }
        if (t10 == e3.k.f6109e && (cVar6 = this.f6815m) != null) {
            cVar6.c(cVar);
            return;
        }
        if (t10 == e3.k.G && (cVar5 = this.f6815m) != null) {
            cVar5.f(cVar);
            return;
        }
        if (t10 == e3.k.H && (cVar4 = this.f6815m) != null) {
            cVar4.d(cVar);
            return;
        }
        if (t10 == e3.k.I && (cVar3 = this.f6815m) != null) {
            cVar3.e(cVar);
        } else {
            if (t10 != e3.k.J || (cVar2 = this.f6815m) == null) {
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
        if (this.f6807e) {
            return;
        }
        e3.c.a("FillContent#draw");
        this.f6804b.setColor(((h3.b) this.f6809g).p());
        this.f6804b.setAlpha(q3.g.d((int) ((((i10 / 255.0f) * this.f6810h.h().intValue()) / 100.0f) * 255.0f), 0, BaseProgressIndicator.MAX_ALPHA));
        h3.a<ColorFilter, ColorFilter> aVar = this.f6811i;
        if (aVar != null) {
            this.f6804b.setColorFilter(aVar.h());
        }
        h3.a<Float, Float> aVar2 = this.f6813k;
        if (aVar2 != null) {
            float floatValue = aVar2.h().floatValue();
            if (floatValue == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.f6804b.setMaskFilter(null);
            } else if (floatValue != this.f6814l) {
                this.f6804b.setMaskFilter(this.f6805c.w(floatValue));
            }
            this.f6814l = floatValue;
        }
        h3.c cVar = this.f6815m;
        if (cVar != null) {
            cVar.a(this.f6804b);
        }
        this.f6803a.reset();
        for (int i11 = 0; i11 < this.f6808f.size(); i11++) {
            this.f6803a.addPath(this.f6808f.get(i11).getPath(), matrix);
        }
        canvas.drawPath(this.f6803a, this.f6804b);
        e3.c.b("FillContent#draw");
    }

    @Override // g3.c
    public String getName() {
        return this.f6806d;
    }
}
