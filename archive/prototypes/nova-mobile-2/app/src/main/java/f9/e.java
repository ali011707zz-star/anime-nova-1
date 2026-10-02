package f9;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.List;

/* compiled from: HorizontalBarChartRenderer.java */
/* loaded from: classes.dex */
public class e extends b {

    /* renamed from: n, reason: collision with root package name */
    public RectF f6478n;

    public e(b9.a aVar, u8.a aVar2, g9.j jVar) {
        super(aVar, aVar2, jVar);
        this.f6478n = new RectF();
        this.f6477f.setTextAlign(Paint.Align.LEFT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.b, f9.d
    public void e(Canvas canvas) {
        List list;
        int i10;
        g9.e eVar;
        int i11;
        float[] fArr;
        float f10;
        int i12;
        float[] fArr2;
        float f11;
        float f12;
        y8.c cVar;
        int i13;
        List list2;
        float f13;
        g9.e eVar2;
        z8.c cVar2;
        int i14;
        v8.b bVar;
        if (g(this.f6465h)) {
            List g10 = this.f6465h.getBarData().g();
            float e10 = g9.i.e(5.0f);
            boolean d10 = this.f6465h.d();
            int i15 = 0;
            while (i15 < this.f6465h.getBarData().f()) {
                c9.a aVar = (c9.a) g10.get(i15);
                if (i(aVar)) {
                    boolean a10 = this.f6465h.a(aVar.a0());
                    a(aVar);
                    float f14 = 2.0f;
                    float a11 = g9.i.a(this.f6477f, "10") / 2.0f;
                    z8.c d02 = aVar.d0();
                    v8.b bVar2 = this.f6467j[i15];
                    float b10 = this.f6473b.b();
                    g9.e d11 = g9.e.d(aVar.f0());
                    d11.f7055c = g9.i.e(d11.f7055c);
                    d11.f7056d = g9.i.e(d11.f7056d);
                    if (aVar.T()) {
                        list = g10;
                        i10 = i15;
                        eVar = d11;
                        g9.g b11 = this.f6465h.b(aVar.a0());
                        int i16 = 0;
                        int i17 = 0;
                        while (i16 < aVar.e0() * this.f6473b.a()) {
                            y8.c cVar3 = (y8.c) aVar.l0(i16);
                            int p10 = aVar.p(i16);
                            float[] n10 = cVar3.n();
                            if (n10 == null) {
                                int i18 = i17 + 1;
                                if (!this.f6512a.B(bVar2.f14960b[i18])) {
                                    break;
                                }
                                if (this.f6512a.C(bVar2.f14960b[i17]) && this.f6512a.y(bVar2.f14960b[i18])) {
                                    String b12 = d02.b(cVar3);
                                    float d12 = g9.i.d(this.f6477f, b12);
                                    float f15 = d10 ? e10 : -(d12 + e10);
                                    float f16 = d10 ? -(d12 + e10) : e10;
                                    if (a10) {
                                        f15 = (-f15) - d12;
                                        f16 = (-f16) - d12;
                                    }
                                    float f17 = f15;
                                    float f18 = f16;
                                    if (aVar.U()) {
                                        i11 = i16;
                                        fArr = n10;
                                        cVar = cVar3;
                                        k(canvas, b12, bVar2.f14960b[i17 + 2] + (cVar3.e() >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? f17 : f18), bVar2.f14960b[i18] + a11, p10);
                                    } else {
                                        cVar = cVar3;
                                        i11 = i16;
                                        fArr = n10;
                                    }
                                    if (cVar.c() != null && aVar.F()) {
                                        Drawable c10 = cVar.c();
                                        float f19 = bVar2.f14960b[i17 + 2];
                                        if (cVar.e() < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                            f17 = f18;
                                        }
                                        g9.i.f(canvas, c10, (int) (f19 + f17 + eVar.f7055c), (int) (bVar2.f14960b[i18] + eVar.f7056d), c10.getIntrinsicWidth(), c10.getIntrinsicHeight());
                                    }
                                }
                            } else {
                                i11 = i16;
                                fArr = n10;
                                int length = fArr.length * 2;
                                float[] fArr3 = new float[length];
                                float f20 = -cVar3.j();
                                int i19 = 0;
                                int i20 = 0;
                                float f21 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                while (i19 < length) {
                                    float f22 = fArr[i20];
                                    if (f22 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && (f21 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f20 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD)) {
                                        float f23 = f20;
                                        f20 = f22;
                                        f12 = f23;
                                    } else if (f22 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                        f21 += f22;
                                        f12 = f20;
                                        f20 = f21;
                                    } else {
                                        f12 = f20 - f22;
                                    }
                                    fArr3[i19] = f20 * b10;
                                    i19 += 2;
                                    i20++;
                                    f20 = f12;
                                }
                                b11.e(fArr3);
                                int i21 = 0;
                                while (i21 < length) {
                                    float f24 = fArr[i21 / 2];
                                    String c11 = d02.c(f24, cVar3);
                                    float d13 = g9.i.d(this.f6477f, c11);
                                    float f25 = d10 ? e10 : -(d13 + e10);
                                    int i22 = length;
                                    float f26 = d10 ? -(d13 + e10) : e10;
                                    if (a10) {
                                        f25 = (-f25) - d13;
                                        f26 = (-f26) - d13;
                                    }
                                    boolean z10 = (f24 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f20 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f21 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) || f24 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                    float f27 = fArr3[i21];
                                    if (z10) {
                                        f25 = f26;
                                    }
                                    float f28 = f27 + f25;
                                    float[] fArr4 = bVar2.f14960b;
                                    float f29 = (fArr4[i17 + 1] + fArr4[i17 + 3]) / 2.0f;
                                    if (!this.f6512a.B(f29)) {
                                        break;
                                    }
                                    if (this.f6512a.C(f28) && this.f6512a.y(f29)) {
                                        if (aVar.U()) {
                                            f10 = f29;
                                            i12 = i21;
                                            fArr2 = fArr3;
                                            f11 = f28;
                                            k(canvas, c11, f28, f29 + a11, p10);
                                        } else {
                                            f10 = f29;
                                            i12 = i21;
                                            fArr2 = fArr3;
                                            f11 = f28;
                                        }
                                        if (cVar3.c() != null && aVar.F()) {
                                            Drawable c12 = cVar3.c();
                                            g9.i.f(canvas, c12, (int) (f11 + eVar.f7055c), (int) (f10 + eVar.f7056d), c12.getIntrinsicWidth(), c12.getIntrinsicHeight());
                                        }
                                    } else {
                                        i12 = i21;
                                        fArr2 = fArr3;
                                    }
                                    i21 = i12 + 2;
                                    length = i22;
                                    fArr3 = fArr2;
                                }
                            }
                            i17 = fArr == null ? i17 + 4 : i17 + (fArr.length * 4);
                            i16 = i11 + 1;
                        }
                    } else {
                        int i23 = 0;
                        while (i23 < bVar2.f14960b.length * this.f6473b.a()) {
                            float[] fArr5 = bVar2.f14960b;
                            int i24 = i23 + 1;
                            float f30 = (fArr5[i24] + fArr5[i23 + 3]) / f14;
                            if (!this.f6512a.B(fArr5[i24])) {
                                break;
                            }
                            if (this.f6512a.C(bVar2.f14960b[i23]) && this.f6512a.y(bVar2.f14960b[i24])) {
                                y8.c cVar4 = (y8.c) aVar.l0(i23 / 4);
                                float e11 = cVar4.e();
                                String b13 = d02.b(cVar4);
                                float d14 = g9.i.d(this.f6477f, b13);
                                float f31 = d10 ? e10 : -(d14 + e10);
                                g9.e eVar3 = d11;
                                float f32 = d10 ? -(d14 + e10) : e10;
                                if (a10) {
                                    f31 = (-f31) - d14;
                                    f32 = (-f32) - d14;
                                }
                                float f33 = f31;
                                float f34 = f32;
                                if (aVar.U()) {
                                    i13 = i23;
                                    list2 = g10;
                                    eVar2 = eVar3;
                                    i14 = i15;
                                    bVar = bVar2;
                                    f13 = a11;
                                    cVar2 = d02;
                                    k(canvas, b13, bVar2.f14960b[i23 + 2] + (e11 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? f33 : f34), f30 + a11, aVar.p(i23 / 2));
                                } else {
                                    i13 = i23;
                                    list2 = g10;
                                    f13 = a11;
                                    eVar2 = eVar3;
                                    cVar2 = d02;
                                    i14 = i15;
                                    bVar = bVar2;
                                }
                                if (cVar4.c() != null && aVar.F()) {
                                    Drawable c13 = cVar4.c();
                                    float f35 = bVar.f14960b[i13 + 2];
                                    if (e11 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                        f33 = f34;
                                    }
                                    g9.i.f(canvas, c13, (int) (f35 + f33 + eVar2.f7055c), (int) (f30 + eVar2.f7056d), c13.getIntrinsicWidth(), c13.getIntrinsicHeight());
                                }
                            } else {
                                i13 = i23;
                                list2 = g10;
                                i14 = i15;
                                f13 = a11;
                                eVar2 = d11;
                                bVar = bVar2;
                                cVar2 = d02;
                            }
                            i23 = i13 + 4;
                            d11 = eVar2;
                            bVar2 = bVar;
                            d02 = cVar2;
                            g10 = list2;
                            i15 = i14;
                            a11 = f13;
                            f14 = 2.0f;
                        }
                        list = g10;
                        i10 = i15;
                        eVar = d11;
                    }
                    g9.e.f(eVar);
                } else {
                    list = g10;
                    i10 = i15;
                }
                i15 = i10 + 1;
                g10 = list;
            }
        }
    }

    @Override // f9.b, f9.d
    public void f() {
        y8.a barData = this.f6465h.getBarData();
        this.f6467j = new v8.c[barData.f()];
        for (int i10 = 0; i10 < this.f6467j.length; i10++) {
            c9.a aVar = (c9.a) barData.e(i10);
            this.f6467j[i10] = new v8.c(aVar.e0() * 4 * (aVar.T() ? aVar.w() : 1), barData.f(), aVar.T());
        }
    }

    @Override // f9.d
    public boolean g(b9.c cVar) {
        return ((float) cVar.getData().h()) < ((float) cVar.getMaxVisibleCount()) * this.f6512a.r();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f9.b
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
                RectF rectF = this.f6478n;
                rectF.top = i12 - u10;
                rectF.bottom = i12 + u10;
                b10.j(rectF);
                if (this.f6512a.B(this.f6478n.bottom)) {
                    if (!this.f6512a.y(this.f6478n.top)) {
                        break;
                    }
                    this.f6478n.left = this.f6512a.h();
                    this.f6478n.right = this.f6512a.i();
                    canvas.drawRect(this.f6478n, this.f6468k);
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
            int i14 = i13 + 3;
            if (!this.f6512a.B(bVar.f14960b[i14])) {
                return;
            }
            int i15 = i13 + 1;
            if (this.f6512a.y(bVar.f14960b[i15])) {
                if (!z11) {
                    this.f6474c.setColor(aVar.t0(i13 / 4));
                }
                float[] fArr = bVar.f14960b;
                int i16 = i13 + 2;
                canvas.drawRect(fArr[i13], fArr[i15], fArr[i16], fArr[i14], this.f6474c);
                if (z10) {
                    float[] fArr2 = bVar.f14960b;
                    canvas.drawRect(fArr2[i13], fArr2[i15], fArr2[i16], fArr2[i14], this.f6469l);
                }
            }
        }
    }

    @Override // f9.b
    public void k(Canvas canvas, String str, float f10, float f11, int i10) {
        this.f6477f.setColor(i10);
        canvas.drawText(str, f10, f11, this.f6477f);
    }

    @Override // f9.b
    public void l(float f10, float f11, float f12, float f13, g9.g gVar) {
        this.f6466i.set(f11, f10 - f13, f12, f10 + f13);
        gVar.i(this.f6466i, this.f6473b.b());
    }

    @Override // f9.b
    public void m(a9.c cVar, RectF rectF) {
        cVar.k(rectF.centerY(), rectF.right);
    }
}
