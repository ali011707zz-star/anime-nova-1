package g3;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import h3.a;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GradientFillContent.java */
/* loaded from: classes.dex */
public class h implements e, a.b, k {

    /* renamed from: a, reason: collision with root package name */
    public final String f6816a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6817b;

    /* renamed from: c, reason: collision with root package name */
    public final m3.a f6818c;

    /* renamed from: d, reason: collision with root package name */
    public final s.d<LinearGradient> f6819d = new s.d<>();

    /* renamed from: e, reason: collision with root package name */
    public final s.d<RadialGradient> f6820e = new s.d<>();

    /* renamed from: f, reason: collision with root package name */
    public final Path f6821f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f6822g;

    /* renamed from: h, reason: collision with root package name */
    public final RectF f6823h;

    /* renamed from: i, reason: collision with root package name */
    public final List<m> f6824i;

    /* renamed from: j, reason: collision with root package name */
    public final l3.g f6825j;

    /* renamed from: k, reason: collision with root package name */
    public final h3.a<l3.d, l3.d> f6826k;

    /* renamed from: l, reason: collision with root package name */
    public final h3.a<Integer, Integer> f6827l;

    /* renamed from: m, reason: collision with root package name */
    public final h3.a<PointF, PointF> f6828m;

    /* renamed from: n, reason: collision with root package name */
    public final h3.a<PointF, PointF> f6829n;

    /* renamed from: o, reason: collision with root package name */
    public h3.a<ColorFilter, ColorFilter> f6830o;

    /* renamed from: p, reason: collision with root package name */
    public h3.q f6831p;

    /* renamed from: q, reason: collision with root package name */
    public final e3.f f6832q;

    /* renamed from: r, reason: collision with root package name */
    public final int f6833r;

    /* renamed from: s, reason: collision with root package name */
    public h3.a<Float, Float> f6834s;

    /* renamed from: t, reason: collision with root package name */
    public float f6835t;

    /* renamed from: u, reason: collision with root package name */
    public h3.c f6836u;

    public h(e3.f fVar, m3.a aVar, l3.e eVar) {
        Path path = new Path();
        this.f6821f = path;
        this.f6822g = new f3.a(1);
        this.f6823h = new RectF();
        this.f6824i = new ArrayList();
        this.f6835t = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f6818c = aVar;
        this.f6816a = eVar.f();
        this.f6817b = eVar.i();
        this.f6832q = fVar;
        this.f6825j = eVar.e();
        path.setFillType(eVar.c());
        this.f6833r = (int) (fVar.p().d() / 32.0f);
        h3.a<l3.d, l3.d> a10 = eVar.d().a();
        this.f6826k = a10;
        a10.a(this);
        aVar.i(a10);
        h3.a<Integer, Integer> a11 = eVar.g().a();
        this.f6827l = a11;
        a11.a(this);
        aVar.i(a11);
        h3.a<PointF, PointF> a12 = eVar.h().a();
        this.f6828m = a12;
        a12.a(this);
        aVar.i(a12);
        h3.a<PointF, PointF> a13 = eVar.b().a();
        this.f6829n = a13;
        a13.a(this);
        aVar.i(a13);
        if (aVar.v() != null) {
            h3.a<Float, Float> a14 = aVar.v().a().a();
            this.f6834s = a14;
            a14.a(this);
            aVar.i(this.f6834s);
        }
        if (aVar.x() != null) {
            this.f6836u = new h3.c(this, aVar, aVar.x());
        }
    }

    @Override // g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        this.f6821f.reset();
        for (int i10 = 0; i10 < this.f6824i.size(); i10++) {
            this.f6821f.addPath(this.f6824i.get(i10).getPath(), matrix);
        }
        this.f6821f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // h3.a.b
    public void b() {
        this.f6832q.invalidateSelf();
    }

    @Override // g3.c
    public void c(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = list2.get(i10);
            if (cVar instanceof m) {
                this.f6824i.add((m) cVar);
            }
        }
    }

    public final int[] d(int[] iArr) {
        h3.q qVar = this.f6831p;
        if (qVar != null) {
            Integer[] numArr = (Integer[]) qVar.h();
            int i10 = 0;
            if (iArr.length == numArr.length) {
                while (i10 < iArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i10 < numArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            }
        }
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        h3.c cVar2;
        h3.c cVar3;
        h3.c cVar4;
        h3.c cVar5;
        h3.c cVar6;
        if (t10 == e3.k.f6108d) {
            this.f6827l.n(cVar);
            return;
        }
        if (t10 == e3.k.K) {
            h3.a<ColorFilter, ColorFilter> aVar = this.f6830o;
            if (aVar != null) {
                this.f6818c.F(aVar);
            }
            if (cVar == null) {
                this.f6830o = null;
                return;
            }
            h3.q qVar = new h3.q(cVar);
            this.f6830o = qVar;
            qVar.a(this);
            this.f6818c.i(this.f6830o);
            return;
        }
        if (t10 == e3.k.L) {
            h3.q qVar2 = this.f6831p;
            if (qVar2 != null) {
                this.f6818c.F(qVar2);
            }
            if (cVar == null) {
                this.f6831p = null;
                return;
            }
            this.f6819d.b();
            this.f6820e.b();
            h3.q qVar3 = new h3.q(cVar);
            this.f6831p = qVar3;
            qVar3.a(this);
            this.f6818c.i(this.f6831p);
            return;
        }
        if (t10 == e3.k.f6114j) {
            h3.a<Float, Float> aVar2 = this.f6834s;
            if (aVar2 != null) {
                aVar2.n(cVar);
                return;
            }
            h3.q qVar4 = new h3.q(cVar);
            this.f6834s = qVar4;
            qVar4.a(this);
            this.f6818c.i(this.f6834s);
            return;
        }
        if (t10 == e3.k.f6109e && (cVar6 = this.f6836u) != null) {
            cVar6.c(cVar);
            return;
        }
        if (t10 == e3.k.G && (cVar5 = this.f6836u) != null) {
            cVar5.f(cVar);
            return;
        }
        if (t10 == e3.k.H && (cVar4 = this.f6836u) != null) {
            cVar4.d(cVar);
            return;
        }
        if (t10 == e3.k.I && (cVar3 = this.f6836u) != null) {
            cVar3.e(cVar);
        } else {
            if (t10 != e3.k.J || (cVar2 = this.f6836u) == null) {
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
        Shader j10;
        if (this.f6817b) {
            return;
        }
        e3.c.a("GradientFillContent#draw");
        this.f6821f.reset();
        for (int i11 = 0; i11 < this.f6824i.size(); i11++) {
            this.f6821f.addPath(this.f6824i.get(i11).getPath(), matrix);
        }
        this.f6821f.computeBounds(this.f6823h, false);
        if (this.f6825j == l3.g.LINEAR) {
            j10 = i();
        } else {
            j10 = j();
        }
        j10.setLocalMatrix(matrix);
        this.f6822g.setShader(j10);
        h3.a<ColorFilter, ColorFilter> aVar = this.f6830o;
        if (aVar != null) {
            this.f6822g.setColorFilter(aVar.h());
        }
        h3.a<Float, Float> aVar2 = this.f6834s;
        if (aVar2 != null) {
            float floatValue = aVar2.h().floatValue();
            if (floatValue == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.f6822g.setMaskFilter(null);
            } else if (floatValue != this.f6835t) {
                this.f6822g.setMaskFilter(new BlurMaskFilter(floatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.f6835t = floatValue;
        }
        h3.c cVar = this.f6836u;
        if (cVar != null) {
            cVar.a(this.f6822g);
        }
        this.f6822g.setAlpha(q3.g.d((int) ((((i10 / 255.0f) * this.f6827l.h().intValue()) / 100.0f) * 255.0f), 0, BaseProgressIndicator.MAX_ALPHA));
        canvas.drawPath(this.f6821f, this.f6822g);
        e3.c.b("GradientFillContent#draw");
    }

    @Override // g3.c
    public String getName() {
        return this.f6816a;
    }

    public final int h() {
        int round = Math.round(this.f6828m.f() * this.f6833r);
        int round2 = Math.round(this.f6829n.f() * this.f6833r);
        int round3 = Math.round(this.f6826k.f() * this.f6833r);
        int i10 = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i10 = i10 * 31 * round2;
        }
        return round3 != 0 ? i10 * 31 * round3 : i10;
    }

    public final LinearGradient i() {
        long h10 = h();
        LinearGradient f10 = this.f6819d.f(h10);
        if (f10 != null) {
            return f10;
        }
        PointF h11 = this.f6828m.h();
        PointF h12 = this.f6829n.h();
        l3.d h13 = this.f6826k.h();
        LinearGradient linearGradient = new LinearGradient(h11.x, h11.y, h12.x, h12.y, d(h13.a()), h13.b(), Shader.TileMode.CLAMP);
        this.f6819d.j(h10, linearGradient);
        return linearGradient;
    }

    public final RadialGradient j() {
        long h10 = h();
        RadialGradient f10 = this.f6820e.f(h10);
        if (f10 != null) {
            return f10;
        }
        PointF h11 = this.f6828m.h();
        PointF h12 = this.f6829n.h();
        l3.d h13 = this.f6826k.h();
        int[] d10 = d(h13.a());
        float[] b10 = h13.b();
        float f11 = h11.x;
        float f12 = h11.y;
        float hypot = (float) Math.hypot(h12.x - f11, h12.y - f12);
        RadialGradient radialGradient = new RadialGradient(f11, f12, hypot <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 0.001f : hypot, d10, b10, Shader.TileMode.CLAMP);
        this.f6820e.j(h10, radialGradient);
        return radialGradient;
    }
}
