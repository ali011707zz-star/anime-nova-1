package t;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.Arrays;
import t.b;

/* compiled from: ArrayLinkedVariables.java */
/* loaded from: classes.dex */
public class a implements b.a {

    /* renamed from: l, reason: collision with root package name */
    public static float f13900l = 0.001f;

    /* renamed from: b, reason: collision with root package name */
    public final b f13902b;

    /* renamed from: c, reason: collision with root package name */
    public final c f13903c;

    /* renamed from: a, reason: collision with root package name */
    public int f13901a = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f13904d = 8;

    /* renamed from: e, reason: collision with root package name */
    public i f13905e = null;

    /* renamed from: f, reason: collision with root package name */
    public int[] f13906f = new int[8];

    /* renamed from: g, reason: collision with root package name */
    public int[] f13907g = new int[8];

    /* renamed from: h, reason: collision with root package name */
    public float[] f13908h = new float[8];

    /* renamed from: i, reason: collision with root package name */
    public int f13909i = -1;

    /* renamed from: j, reason: collision with root package name */
    public int f13910j = -1;

    /* renamed from: k, reason: collision with root package name */
    public boolean f13911k = false;

    public a(b bVar, c cVar) {
        this.f13902b = bVar;
        this.f13903c = cVar;
    }

    @Override // t.b.a
    public float a(int i10) {
        int i11 = this.f13909i;
        for (int i12 = 0; i11 != -1 && i12 < this.f13901a; i12++) {
            if (i12 == i10) {
                return this.f13908h[i11];
            }
            i11 = this.f13907g[i11];
        }
        return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // t.b.a
    public float b(b bVar, boolean z10) {
        float e10 = e(bVar.f13912a);
        c(bVar.f13912a, z10);
        b.a aVar = bVar.f13916e;
        int f10 = aVar.f();
        for (int i10 = 0; i10 < f10; i10++) {
            i h10 = aVar.h(i10);
            j(h10, aVar.e(h10) * e10, z10);
        }
        return e10;
    }

    @Override // t.b.a
    public final float c(i iVar, boolean z10) {
        if (this.f13905e == iVar) {
            this.f13905e = null;
        }
        int i10 = this.f13909i;
        if (i10 == -1) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        int i11 = 0;
        int i12 = -1;
        while (i10 != -1 && i11 < this.f13901a) {
            if (this.f13906f[i10] == iVar.f13964h) {
                if (i10 == this.f13909i) {
                    this.f13909i = this.f13907g[i10];
                } else {
                    int[] iArr = this.f13907g;
                    iArr[i12] = iArr[i10];
                }
                if (z10) {
                    iVar.d(this.f13902b);
                }
                iVar.f13974r--;
                this.f13901a--;
                this.f13906f[i10] = -1;
                if (this.f13911k) {
                    this.f13910j = i10;
                }
                return this.f13908h[i10];
            }
            i11++;
            i12 = i10;
            i10 = this.f13907g[i10];
        }
        return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // t.b.a
    public final void clear() {
        int i10 = this.f13909i;
        for (int i11 = 0; i10 != -1 && i11 < this.f13901a; i11++) {
            i iVar = this.f13903c.f13921d[this.f13906f[i10]];
            if (iVar != null) {
                iVar.d(this.f13902b);
            }
            i10 = this.f13907g[i10];
        }
        this.f13909i = -1;
        this.f13910j = -1;
        this.f13911k = false;
        this.f13901a = 0;
    }

    @Override // t.b.a
    public final void d(i iVar, float f10) {
        if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            c(iVar, true);
            return;
        }
        int i10 = this.f13909i;
        if (i10 == -1) {
            this.f13909i = 0;
            this.f13908h[0] = f10;
            this.f13906f[0] = iVar.f13964h;
            this.f13907g[0] = -1;
            iVar.f13974r++;
            iVar.a(this.f13902b);
            this.f13901a++;
            if (this.f13911k) {
                return;
            }
            int i11 = this.f13910j + 1;
            this.f13910j = i11;
            int[] iArr = this.f13906f;
            if (i11 >= iArr.length) {
                this.f13911k = true;
                this.f13910j = iArr.length - 1;
                return;
            }
            return;
        }
        int i12 = -1;
        for (int i13 = 0; i10 != -1 && i13 < this.f13901a; i13++) {
            int[] iArr2 = this.f13906f;
            int i14 = iArr2[i10];
            int i15 = iVar.f13964h;
            if (i14 == i15) {
                this.f13908h[i10] = f10;
                return;
            }
            if (iArr2[i10] < i15) {
                i12 = i10;
            }
            i10 = this.f13907g[i10];
        }
        int i16 = this.f13910j;
        int i17 = i16 + 1;
        if (this.f13911k) {
            int[] iArr3 = this.f13906f;
            if (iArr3[i16] != -1) {
                i16 = iArr3.length;
            }
        } else {
            i16 = i17;
        }
        int[] iArr4 = this.f13906f;
        if (i16 >= iArr4.length && this.f13901a < iArr4.length) {
            int i18 = 0;
            while (true) {
                int[] iArr5 = this.f13906f;
                if (i18 >= iArr5.length) {
                    break;
                }
                if (iArr5[i18] == -1) {
                    i16 = i18;
                    break;
                }
                i18++;
            }
        }
        int[] iArr6 = this.f13906f;
        if (i16 >= iArr6.length) {
            i16 = iArr6.length;
            int i19 = this.f13904d * 2;
            this.f13904d = i19;
            this.f13911k = false;
            this.f13910j = i16 - 1;
            this.f13908h = Arrays.copyOf(this.f13908h, i19);
            this.f13906f = Arrays.copyOf(this.f13906f, this.f13904d);
            this.f13907g = Arrays.copyOf(this.f13907g, this.f13904d);
        }
        this.f13906f[i16] = iVar.f13964h;
        this.f13908h[i16] = f10;
        if (i12 != -1) {
            int[] iArr7 = this.f13907g;
            iArr7[i16] = iArr7[i12];
            iArr7[i12] = i16;
        } else {
            this.f13907g[i16] = this.f13909i;
            this.f13909i = i16;
        }
        iVar.f13974r++;
        iVar.a(this.f13902b);
        int i20 = this.f13901a + 1;
        this.f13901a = i20;
        if (!this.f13911k) {
            this.f13910j++;
        }
        int[] iArr8 = this.f13906f;
        if (i20 >= iArr8.length) {
            this.f13911k = true;
        }
        if (this.f13910j >= iArr8.length) {
            this.f13911k = true;
            this.f13910j = iArr8.length - 1;
        }
    }

    @Override // t.b.a
    public final float e(i iVar) {
        int i10 = this.f13909i;
        for (int i11 = 0; i10 != -1 && i11 < this.f13901a; i11++) {
            if (this.f13906f[i10] == iVar.f13964h) {
                return this.f13908h[i10];
            }
            i10 = this.f13907g[i10];
        }
        return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // t.b.a
    public int f() {
        return this.f13901a;
    }

    @Override // t.b.a
    public boolean g(i iVar) {
        int i10 = this.f13909i;
        if (i10 == -1) {
            return false;
        }
        for (int i11 = 0; i10 != -1 && i11 < this.f13901a; i11++) {
            if (this.f13906f[i10] == iVar.f13964h) {
                return true;
            }
            i10 = this.f13907g[i10];
        }
        return false;
    }

    @Override // t.b.a
    public i h(int i10) {
        int i11 = this.f13909i;
        for (int i12 = 0; i11 != -1 && i12 < this.f13901a; i12++) {
            if (i12 == i10) {
                return this.f13903c.f13921d[this.f13906f[i11]];
            }
            i11 = this.f13907g[i11];
        }
        return null;
    }

    @Override // t.b.a
    public void i(float f10) {
        int i10 = this.f13909i;
        for (int i11 = 0; i10 != -1 && i11 < this.f13901a; i11++) {
            float[] fArr = this.f13908h;
            fArr[i10] = fArr[i10] / f10;
            i10 = this.f13907g[i10];
        }
    }

    @Override // t.b.a
    public void j(i iVar, float f10, boolean z10) {
        float f11 = f13900l;
        if (f10 <= (-f11) || f10 >= f11) {
            int i10 = this.f13909i;
            if (i10 == -1) {
                this.f13909i = 0;
                this.f13908h[0] = f10;
                this.f13906f[0] = iVar.f13964h;
                this.f13907g[0] = -1;
                iVar.f13974r++;
                iVar.a(this.f13902b);
                this.f13901a++;
                if (this.f13911k) {
                    return;
                }
                int i11 = this.f13910j + 1;
                this.f13910j = i11;
                int[] iArr = this.f13906f;
                if (i11 >= iArr.length) {
                    this.f13911k = true;
                    this.f13910j = iArr.length - 1;
                    return;
                }
                return;
            }
            int i12 = -1;
            for (int i13 = 0; i10 != -1 && i13 < this.f13901a; i13++) {
                int[] iArr2 = this.f13906f;
                int i14 = iArr2[i10];
                int i15 = iVar.f13964h;
                if (i14 == i15) {
                    float[] fArr = this.f13908h;
                    float f12 = fArr[i10] + f10;
                    float f13 = f13900l;
                    if (f12 > (-f13) && f12 < f13) {
                        f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    }
                    fArr[i10] = f12;
                    if (f12 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        if (i10 == this.f13909i) {
                            this.f13909i = this.f13907g[i10];
                        } else {
                            int[] iArr3 = this.f13907g;
                            iArr3[i12] = iArr3[i10];
                        }
                        if (z10) {
                            iVar.d(this.f13902b);
                        }
                        if (this.f13911k) {
                            this.f13910j = i10;
                        }
                        iVar.f13974r--;
                        this.f13901a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i10] < i15) {
                    i12 = i10;
                }
                i10 = this.f13907g[i10];
            }
            int i16 = this.f13910j;
            int i17 = i16 + 1;
            if (this.f13911k) {
                int[] iArr4 = this.f13906f;
                if (iArr4[i16] != -1) {
                    i16 = iArr4.length;
                }
            } else {
                i16 = i17;
            }
            int[] iArr5 = this.f13906f;
            if (i16 >= iArr5.length && this.f13901a < iArr5.length) {
                int i18 = 0;
                while (true) {
                    int[] iArr6 = this.f13906f;
                    if (i18 >= iArr6.length) {
                        break;
                    }
                    if (iArr6[i18] == -1) {
                        i16 = i18;
                        break;
                    }
                    i18++;
                }
            }
            int[] iArr7 = this.f13906f;
            if (i16 >= iArr7.length) {
                i16 = iArr7.length;
                int i19 = this.f13904d * 2;
                this.f13904d = i19;
                this.f13911k = false;
                this.f13910j = i16 - 1;
                this.f13908h = Arrays.copyOf(this.f13908h, i19);
                this.f13906f = Arrays.copyOf(this.f13906f, this.f13904d);
                this.f13907g = Arrays.copyOf(this.f13907g, this.f13904d);
            }
            this.f13906f[i16] = iVar.f13964h;
            this.f13908h[i16] = f10;
            if (i12 != -1) {
                int[] iArr8 = this.f13907g;
                iArr8[i16] = iArr8[i12];
                iArr8[i12] = i16;
            } else {
                this.f13907g[i16] = this.f13909i;
                this.f13909i = i16;
            }
            iVar.f13974r++;
            iVar.a(this.f13902b);
            this.f13901a++;
            if (!this.f13911k) {
                this.f13910j++;
            }
            int i20 = this.f13910j;
            int[] iArr9 = this.f13906f;
            if (i20 >= iArr9.length) {
                this.f13911k = true;
                this.f13910j = iArr9.length - 1;
            }
        }
    }

    @Override // t.b.a
    public void k() {
        int i10 = this.f13909i;
        for (int i11 = 0; i10 != -1 && i11 < this.f13901a; i11++) {
            float[] fArr = this.f13908h;
            fArr[i10] = fArr[i10] * (-1.0f);
            i10 = this.f13907g[i10];
        }
    }

    public String toString() {
        int i10 = this.f13909i;
        String str = "";
        for (int i11 = 0; i10 != -1 && i11 < this.f13901a; i11++) {
            str = ((str + " -> ") + this.f13908h[i10] + " : ") + this.f13903c.f13921d[this.f13906f[i10]];
            i10 = this.f13907g[i10];
        }
        return str;
    }
}
