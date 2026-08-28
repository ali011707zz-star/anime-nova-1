package f9;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.List;

/* compiled from: BarChartRenderer.java */
/* loaded from: classes.dex */
public class b extends c {

    /* renamed from: h, reason: collision with root package name */
    public b9.a f6465h;

    /* renamed from: i, reason: collision with root package name */
    public RectF f6466i;

    /* renamed from: j, reason: collision with root package name */
    public v8.b[] f6467j;

    /* renamed from: k, reason: collision with root package name */
    public Paint f6468k;

    /* renamed from: l, reason: collision with root package name */
    public Paint f6469l;

    /* renamed from: m, reason: collision with root package name */
    public RectF f6470m;

    public b(b9.a aVar, u8.a aVar2, g9.j jVar) {
        super(aVar2, jVar);
        this.f6466i = new RectF();
        this.f6470m = new RectF();
        this.f6465h = aVar;
        Paint paint = new Paint(1);
        this.f6475d = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f6475d.setColor(Color.rgb(0, 0, 0));
        this.f6475d.setAlpha(120);
        Paint paint2 = new Paint(1);
        this.f6468k = paint2;
        paint2.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.f6469l = paint3;
        paint3.setStyle(Paint.Style.STROKE);
    }

    @Override // f9.d
    public void b(Canvas canvas) {
        y8.a barData = this.f6465h.getBarData();
        for (int i10 = 0; i10 < barData.f(); i10++) {
            c9.a aVar = (c9.a) barData.e(i10);
            if (aVar.isVisible()) {
                j(canvas, aVar, i10);
            }
        }
    }

    @Override // f9.d
    public void c(Canvas canvas) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.d
    public void d(Canvas canvas, a9.c[] cVarArr) {
        float e10;
        float f10;
        y8.a barData = this.f6465h.getBarData();
        for (a9.c cVar : cVarArr) {
            c9.a aVar = (c9.a) barData.e(cVar.c());
            if (aVar != null && aVar.i0()) {
                y8.c cVar2 = (y8.c) aVar.A(cVar.g(), cVar.i());
                if (h(cVar2, aVar)) {
                    g9.g b10 = this.f6465h.b(aVar.a0());
                    this.f6475d.setColor(aVar.X());
                    this.f6475d.setAlpha(aVar.J());
                    if (cVar.f() >= 0 && cVar2.o()) {
                        if (this.f6465h.e()) {
                            float l10 = cVar2.l();
                            f10 = -cVar2.j();
                            e10 = l10;
                        } else {
                            a9.i iVar = cVar2.m()[cVar.f()];
                            throw null;
                        }
                    } else {
                        e10 = cVar2.e();
                        f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    }
                    l(cVar2.i(), e10, f10, barData.u() / 2.0f, b10);
                    m(cVar, this.f6466i);
                    canvas.drawRect(this.f6466i, this.f6475d);
                } else {
                    continue;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.d
    public void e(Canvas canvas) {
        List list;
        g9.e eVar;
        int i10;
        float f10;
        boolean z10;
        float[] fArr;
        g9.g gVar;
        int i11;
        float f11;
        int i12;
        y8.c cVar;
        float[] fArr2;
        float f12;
        float f13;
        float f14;
        y8.c cVar2;
        float f15;
        boolean z11;
        int i13;
        z8.c cVar3;
        List list2;
        g9.e eVar2;
        y8.c cVar4;
        float f16;
        if (g(this.f6465h)) {
            List g10 = this.f6465h.getBarData().g();
            float e10 = g9.i.e(4.5f);
            boolean d10 = this.f6465h.d();
            int i14 = 0;
            while (i14 < this.f6465h.getBarData().f()) {
                c9.a aVar = (c9.a) g10.get(i14);
                if (i(aVar)) {
                    a(aVar);
                    boolean a10 = this.f6465h.a(aVar.a0());
                    float a11 = g9.i.a(this.f6477f, "8");
                    float f17 = d10 ? -e10 : a11 + e10;
                    float f18 = d10 ? a11 + e10 : -e10;
                    if (a10) {
                        f17 = (-f17) - a11;
                        f18 = (-f18) - a11;
                    }
                    float f19 = f17;
                    float f20 = f18;
                    v8.b bVar = this.f6467j[i14];
                    float b10 = this.f6473b.b();
                    z8.c d02 = aVar.d0();
                    g9.e d11 = g9.e.d(aVar.f0());
                    d11.f7055c = g9.i.e(d11.f7055c);
                    d11.f7056d = g9.i.e(d11.f7056d);
                    if (aVar.T()) {
                        list = g10;
                        eVar = d11;
                        g9.g b11 = this.f6465h.b(aVar.a0());
                        int i15 = 0;
                        int i16 = 0;
                        while (i15 < aVar.e0() * this.f6473b.a()) {
                            y8.c cVar5 = (y8.c) aVar.l0(i15);
                            float[] n10 = cVar5.n();
                            float[] fArr3 = bVar.f14960b;
                            float f21 = (fArr3[i16] + fArr3[i16 + 2]) / 2.0f;
                            int p10 = aVar.p(i15);
                            if (n10 == null) {
                                if (!this.f6512a.A(f21)) {
                                    break;
                                }
                                int i17 = i16 + 1;
                                if (this.f6512a.D(bVar.f14960b[i17]) && this.f6512a.z(f21)) {
                                    if (aVar.U()) {
                                        f14 = f21;
                                        f10 = e10;
                                        fArr = n10;
                                        cVar2 = cVar5;
                                        i10 = i15;
                                        z10 = d10;
                                        gVar = b11;
                                        k(canvas, d02.b(cVar5), f14, bVar.f14960b[i17] + (cVar5.e() >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? f19 : f20), p10);
                                    } else {
                                        f14 = f21;
                                        i10 = i15;
                                        f10 = e10;
                                        z10 = d10;
                                        fArr = n10;
                                        cVar2 = cVar5;
                                        gVar = b11;
                                    }
                                    if (cVar2.c() != null && aVar.F()) {
                                        Drawable c10 = cVar2.c();
                                        g9.i.f(canvas, c10, (int) (eVar.f7055c + f14), (int) (bVar.f14960b[i17] + (cVar2.e() >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? f19 : f20) + eVar.f7056d), c10.getIntrinsicWidth(), c10.getIntrinsicHeight());
                                    }
                                } else {
                                    b11 = b11;
                                    d10 = d10;
                                    e10 = e10;
                                    i15 = i15;
                                }
                            } else {
                                y8.c cVar6 = cVar5;
                                i10 = i15;
                                f10 = e10;
                                z10 = d10;
                                fArr = n10;
                                gVar = b11;
                                float f22 = f21;
                                int length = fArr.length * 2;
                                float[] fArr4 = new float[length];
                                float f23 = -cVar6.j();
                                int i18 = 0;
                                int i19 = 0;
                                float f24 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                while (i18 < length) {
                                    float f25 = fArr[i19];
                                    if (f25 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && (f24 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f23 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD)) {
                                        float f26 = f23;
                                        f23 = f25;
                                        f13 = f26;
                                    } else if (f25 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                        f24 += f25;
                                        f13 = f23;
                                        f23 = f24;
                                    } else {
                                        f13 = f23 - f25;
                                    }
                                    fArr4[i18 + 1] = f23 * b10;
                                    i18 += 2;
                                    i19++;
                                    f23 = f13;
                                }
                                gVar.e(fArr4);
                                int i20 = 0;
                                while (i20 < length) {
                                    float f27 = fArr[i20 / 2];
                                    float f28 = fArr4[i20 + 1] + (((f27 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 1 : (f27 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 0 : -1)) == 0 && (f23 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 1 : (f23 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 0 : -1)) == 0 && (f24 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 1 : (f24 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 0 : -1)) > 0) || (f27 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 1 : (f27 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 0 : -1)) < 0 ? f20 : f19);
                                    int i21 = i20;
                                    if (!this.f6512a.A(f22)) {
                                        break;
                                    }
                                    if (this.f6512a.D(f28) && this.f6512a.z(f22)) {
                                        if (aVar.U()) {
                                            y8.c cVar7 = cVar6;
                                            f12 = f28;
                                            i12 = i21;
                                            cVar = cVar7;
                                            fArr2 = fArr4;
                                            i11 = length;
                                            f11 = f22;
                                            k(canvas, d02.c(f27, cVar7), f22, f12, p10);
                                        } else {
                                            f12 = f28;
                                            i11 = length;
                                            f11 = f22;
                                            i12 = i21;
                                            cVar = cVar6;
                                            fArr2 = fArr4;
                                        }
                                        if (cVar.c() != null && aVar.F()) {
                                            Drawable c11 = cVar.c();
                                            g9.i.f(canvas, c11, (int) (f11 + eVar.f7055c), (int) (f12 + eVar.f7056d), c11.getIntrinsicWidth(), c11.getIntrinsicHeight());
                                        }
                                    } else {
                                        i11 = length;
                                        f11 = f22;
                                        i12 = i21;
                                        cVar = cVar6;
                                        fArr2 = fArr4;
                                    }
                                    i20 = i12 + 2;
                                    fArr4 = fArr2;
                                    cVar6 = cVar;
                                    length = i11;
                                    f22 = f11;
                                }
                            }
                            i16 = fArr == null ? i16 + 4 : i16 + (fArr.length * 4);
                            i15 = i10 + 1;
                            b11 = gVar;
                            d10 = z10;
                            e10 = f10;
                        }
                    } else {
                        int i22 = 0;
                        while (i22 < bVar.f14960b.length * this.f6473b.a()) {
                            float[] fArr5 = bVar.f14960b;
                            float f29 = (fArr5[i22] + fArr5[i22 + 2]) / 2.0f;
                            if (!this.f6512a.A(f29)) {
                                break;
                            }
                            int i23 = i22 + 1;
                            if (this.f6512a.D(bVar.f14960b[i23]) && this.f6512a.z(f29)) {
                                int i24 = i22 / 4;
                                y8.c cVar8 = (y8.c) aVar.l0(i24);
                                float e11 = cVar8.e();
                                if (aVar.U()) {
                                    String b12 = d02.b(cVar8);
                                    float[] fArr6 = bVar.f14960b;
                                    cVar4 = cVar8;
                                    f16 = f29;
                                    i13 = i22;
                                    list2 = g10;
                                    eVar2 = d11;
                                    float f30 = e11 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? fArr6[i23] + f19 : fArr6[i22 + 3] + f20;
                                    cVar3 = d02;
                                    k(canvas, b12, f16, f30, aVar.p(i24));
                                } else {
                                    cVar4 = cVar8;
                                    f16 = f29;
                                    i13 = i22;
                                    cVar3 = d02;
                                    list2 = g10;
                                    eVar2 = d11;
                                }
                                if (cVar4.c() != null && aVar.F()) {
                                    Drawable c12 = cVar4.c();
                                    g9.i.f(canvas, c12, (int) (f16 + eVar2.f7055c), (int) ((e11 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? bVar.f14960b[i23] + f19 : bVar.f14960b[i13 + 3] + f20) + eVar2.f7056d), c12.getIntrinsicWidth(), c12.getIntrinsicHeight());
                                }
                            } else {
                                i13 = i22;
                                cVar3 = d02;
                                list2 = g10;
                                eVar2 = d11;
                            }
                            i22 = i13 + 4;
                            d11 = eVar2;
                            d02 = cVar3;
                            g10 = list2;
                        }
                        list = g10;
                        eVar = d11;
                    }
                    f15 = e10;
                    z11 = d10;
                    g9.e.f(eVar);
                } else {
                    list = g10;
                    f15 = e10;
                    z11 = d10;
                }
                i14++;
                d10 = z11;
                g10 = list;
                e10 = f15;
            }
        }
    }

    @Override // f9.d
    public void f() {
        y8.a barData = this.f6465h.getBarData();
        this.f6467j = new v8.b[barData.f()];
        for (int i10 = 0; i10 < this.f6467j.length; i10++) {
            c9.a aVar = (c9.a) barData.e(i10);
            this.f6467j[i10] = new v8.b(aVar.e0() * 4 * (aVar.T() ? aVar.w() : 1), barData.f(), aVar.T());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void j(Canvas canvas, c9.a aVar, int i10) {
        g9.g b10 = this.f6465h.b(aVar.a0());
        this.f6469l.setColor(aVar.y());
        this.f6469l.setStrokeWidth(g9.i.e(aVar.L()));
        boolean z10 = aVar.L() > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float a10 = this.f6473b.a();
        float b11 = this.f6473b.b();
        if (this.f6465h.c()) {
            this.f6468k.setColor(aVar.g());
            float u10 = this.f6465h.getBarData().u() / 2.0f;
            int min = Math.min((int) Math.ceil(aVar.e0() * a10), aVar.e0());
            for (int i11 = 0; i11 < min; i11++) {
                float i12 = ((y8.c) aVar.l0(i11)).i();
                RectF rectF = this.f6470m;
                rectF.left = i12 - u10;
                rectF.right = i12 + u10;
                b10.j(rectF);
                if (this.f6512a.z(this.f6470m.right)) {
                    if (!this.f6512a.A(this.f6470m.left)) {
                        break;
                    }
                    this.f6470m.top = this.f6512a.j();
                    this.f6470m.bottom = this.f6512a.f();
                    canvas.drawRect(this.f6470m, this.f6468k);
                }
            }
        }
        v8.b bVar = this.f6467j[i10];
        bVar.b(a10, b11);
        bVar.g(i10);
        bVar.h(this.f6465h.a(aVar.a0()));
        bVar.f(this.f6465h.getBarData().u());
        bVar.e(aVar);
        b10.e(bVar.f14960b);
        boolean z11 = aVar.u().size() == 1;
        if (z11) {
            this.f6474c.setColor(aVar.h0());
        }
        for (int i13 = 0; i13 < bVar.c(); i13 += 4) {
            int i14 = i13 + 2;
            if (this.f6512a.z(bVar.f14960b[i14])) {
                if (!this.f6512a.A(bVar.f14960b[i13])) {
                    return;
                }
                if (!z11) {
                    this.f6474c.setColor(aVar.t0(i13 / 4));
                }
                if (aVar.Y() != null) {
                    e9.a Y = aVar.Y();
                    Paint paint = this.f6474c;
                    float[] fArr = bVar.f14960b;
                    paint.setShader(new LinearGradient(fArr[i13], fArr[i13 + 3], fArr[i13], fArr[i13 + 1], Y.b(), Y.a(), Shader.TileMode.MIRROR));
                }
                if (aVar.K() != null) {
                    Paint paint2 = this.f6474c;
                    float[] fArr2 = bVar.f14960b;
                    float f10 = fArr2[i13];
                    float f11 = fArr2[i13 + 3];
                    float f12 = fArr2[i13];
                    float f13 = fArr2[i13 + 1];
                    int i15 = i13 / 4;
                    paint2.setShader(new LinearGradient(f10, f11, f12, f13, aVar.m0(i15).b(), aVar.m0(i15).a(), Shader.TileMode.MIRROR));
                }
                float[] fArr3 = bVar.f14960b;
                int i16 = i13 + 1;
                int i17 = i13 + 3;
                canvas.drawRect(fArr3[i13], fArr3[i16], fArr3[i14], fArr3[i17], this.f6474c);
                if (z10) {
                    float[] fArr4 = bVar.f14960b;
                    canvas.drawRect(fArr4[i13], fArr4[i16], fArr4[i14], fArr4[i17], this.f6469l);
                }
            }
        }
    }

    public void k(Canvas canvas, String str, float f10, float f11, int i10) {
        this.f6477f.setColor(i10);
        canvas.drawText(str, f10, f11, this.f6477f);
    }

    public void l(float f10, float f11, float f12, float f13, g9.g gVar) {
        this.f6466i.set(f10 - f13, f11, f10 + f13, f12);
        gVar.h(this.f6466i, this.f6473b.b());
    }

    public void m(a9.c cVar, RectF rectF) {
        cVar.k(rectF.centerX(), rectF.top);
    }
}
