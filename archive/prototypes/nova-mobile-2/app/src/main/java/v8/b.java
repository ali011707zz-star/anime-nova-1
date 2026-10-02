package v8;

import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: BarBuffer.java */
/* loaded from: classes.dex */
public class b extends a<c9.a> {

    /* renamed from: g, reason: collision with root package name */
    public int f14965g;

    /* renamed from: h, reason: collision with root package name */
    public int f14966h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f14967i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14968j;

    /* renamed from: k, reason: collision with root package name */
    public float f14969k;

    public b(int i10, int i11, boolean z10) {
        super(i10);
        this.f14965g = 0;
        this.f14966h = 1;
        this.f14967i = false;
        this.f14968j = false;
        this.f14969k = 1.0f;
        this.f14966h = i11;
        this.f14967i = z10;
    }

    public void d(float f10, float f11, float f12, float f13) {
        float[] fArr = this.f14960b;
        int i10 = this.f14959a;
        int i11 = i10 + 1;
        this.f14959a = i11;
        fArr[i10] = f10;
        int i12 = i11 + 1;
        this.f14959a = i12;
        fArr[i11] = f11;
        int i13 = i12 + 1;
        this.f14959a = i13;
        fArr[i12] = f12;
        this.f14959a = i13 + 1;
        fArr[i13] = f13;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void e(c9.a aVar) {
        float f10;
        float abs;
        float abs2;
        float f11;
        float e02 = aVar.e0() * this.f14961c;
        float f12 = this.f14969k / 2.0f;
        for (int i10 = 0; i10 < e02; i10++) {
            y8.c cVar = (y8.c) aVar.l0(i10);
            if (cVar != null) {
                float i11 = cVar.i();
                float e10 = cVar.e();
                float[] n10 = cVar.n();
                if (this.f14967i && n10 != null) {
                    float f13 = -cVar.j();
                    int i12 = 0;
                    float f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    while (i12 < n10.length) {
                        float f15 = n10[i12];
                        if (f15 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && (f14 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f13 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD)) {
                            abs = f15;
                            abs2 = f13;
                            f13 = abs;
                        } else if (f15 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            abs = f15 + f14;
                            abs2 = f13;
                            f13 = f14;
                            f14 = abs;
                        } else {
                            abs = Math.abs(f15) + f13;
                            abs2 = Math.abs(f15) + f13;
                        }
                        float f16 = i11 - f12;
                        float f17 = i11 + f12;
                        if (this.f14968j) {
                            f11 = f13 >= abs ? f13 : abs;
                            if (f13 > abs) {
                                f13 = abs;
                            }
                        } else {
                            float f18 = f13 >= abs ? f13 : abs;
                            if (f13 > abs) {
                                f13 = abs;
                            }
                            float f19 = f13;
                            f13 = f18;
                            f11 = f19;
                        }
                        float f20 = this.f14962d;
                        d(f16, f13 * f20, f17, f11 * f20);
                        i12++;
                        f13 = abs2;
                    }
                } else {
                    float f21 = i11 - f12;
                    float f22 = i11 + f12;
                    if (this.f14968j) {
                        f10 = e10 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? e10 : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        if (e10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            e10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        }
                    } else {
                        float f23 = e10 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? e10 : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        if (e10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            e10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        }
                        float f24 = e10;
                        e10 = f23;
                        f10 = f24;
                    }
                    if (e10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        e10 *= this.f14962d;
                    } else {
                        f10 *= this.f14962d;
                    }
                    d(f21, e10, f22, f10);
                }
            }
        }
        a();
    }

    public void f(float f10) {
        this.f14969k = f10;
    }

    public void g(int i10) {
        this.f14965g = i10;
    }

    public void h(boolean z10) {
        this.f14968j = z10;
    }
}
