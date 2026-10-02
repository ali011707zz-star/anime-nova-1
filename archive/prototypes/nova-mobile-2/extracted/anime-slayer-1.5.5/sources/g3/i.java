package g3;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;

/* compiled from: GradientStrokeContent.java */
/* loaded from: classes.dex */
public class i extends a {
    public final h3.a<PointF, PointF> A;
    public h3.q B;

    /* renamed from: r, reason: collision with root package name */
    public final String f6837r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f6838s;

    /* renamed from: t, reason: collision with root package name */
    public final s.d<LinearGradient> f6839t;

    /* renamed from: u, reason: collision with root package name */
    public final s.d<RadialGradient> f6840u;

    /* renamed from: v, reason: collision with root package name */
    public final RectF f6841v;

    /* renamed from: w, reason: collision with root package name */
    public final l3.g f6842w;

    /* renamed from: x, reason: collision with root package name */
    public final int f6843x;

    /* renamed from: y, reason: collision with root package name */
    public final h3.a<l3.d, l3.d> f6844y;

    /* renamed from: z, reason: collision with root package name */
    public final h3.a<PointF, PointF> f6845z;

    public i(e3.f fVar, m3.a aVar, l3.f fVar2) {
        super(fVar, aVar, fVar2.b().a(), fVar2.g().a(), fVar2.i(), fVar2.k(), fVar2.m(), fVar2.h(), fVar2.c());
        this.f6839t = new s.d<>();
        this.f6840u = new s.d<>();
        this.f6841v = new RectF();
        this.f6837r = fVar2.j();
        this.f6842w = fVar2.f();
        this.f6838s = fVar2.n();
        this.f6843x = (int) (fVar.p().d() / 32.0f);
        h3.a<l3.d, l3.d> a10 = fVar2.e().a();
        this.f6844y = a10;
        a10.a(this);
        aVar.i(a10);
        h3.a<PointF, PointF> a11 = fVar2.l().a();
        this.f6845z = a11;
        a11.a(this);
        aVar.i(a11);
        h3.a<PointF, PointF> a12 = fVar2.d().a();
        this.A = a12;
        a12.a(this);
        aVar.i(a12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g3.a, j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        super.e(t10, cVar);
        if (t10 == e3.k.L) {
            h3.q qVar = this.B;
            if (qVar != null) {
                this.f6769f.F(qVar);
            }
            if (cVar == null) {
                this.B = null;
                return;
            }
            h3.q qVar2 = new h3.q(cVar);
            this.B = qVar2;
            qVar2.a(this);
            this.f6769f.i(this.B);
        }
    }

    @Override // g3.a, g3.e
    public void g(Canvas canvas, Matrix matrix, int i10) {
        Shader l10;
        if (this.f6838s) {
            return;
        }
        a(this.f6841v, matrix, false);
        if (this.f6842w == l3.g.LINEAR) {
            l10 = k();
        } else {
            l10 = l();
        }
        l10.setLocalMatrix(matrix);
        this.f6772i.setShader(l10);
        super.g(canvas, matrix, i10);
    }

    @Override // g3.c
    public String getName() {
        return this.f6837r;
    }

    public final int[] i(int[] iArr) {
        h3.q qVar = this.B;
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

    public final int j() {
        int round = Math.round(this.f6845z.f() * this.f6843x);
        int round2 = Math.round(this.A.f() * this.f6843x);
        int round3 = Math.round(this.f6844y.f() * this.f6843x);
        int i10 = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i10 = i10 * 31 * round2;
        }
        return round3 != 0 ? i10 * 31 * round3 : i10;
    }

    public final LinearGradient k() {
        long j10 = j();
        LinearGradient f10 = this.f6839t.f(j10);
        if (f10 != null) {
            return f10;
        }
        PointF h10 = this.f6845z.h();
        PointF h11 = this.A.h();
        l3.d h12 = this.f6844y.h();
        LinearGradient linearGradient = new LinearGradient(h10.x, h10.y, h11.x, h11.y, i(h12.a()), h12.b(), Shader.TileMode.CLAMP);
        this.f6839t.j(j10, linearGradient);
        return linearGradient;
    }

    public final RadialGradient l() {
        long j10 = j();
        RadialGradient f10 = this.f6840u.f(j10);
        if (f10 != null) {
            return f10;
        }
        PointF h10 = this.f6845z.h();
        PointF h11 = this.A.h();
        l3.d h12 = this.f6844y.h();
        int[] i10 = i(h12.a());
        float[] b10 = h12.b();
        RadialGradient radialGradient = new RadialGradient(h10.x, h10.y, (float) Math.hypot(h11.x - r7, h11.y - r8), i10, b10, Shader.TileMode.CLAMP);
        this.f6840u.j(j10, radialGradient);
        return radialGradient;
    }
}
