package o3;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.IOException;
import java.lang.ref.WeakReference;
import p3.c;

/* compiled from: KeyframeParser.java */
/* loaded from: classes.dex */
public class t {

    /* renamed from: b, reason: collision with root package name */
    public static s.h<WeakReference<Interpolator>> f11727b;

    /* renamed from: a, reason: collision with root package name */
    public static final Interpolator f11726a = new LinearInterpolator();

    /* renamed from: c, reason: collision with root package name */
    public static c.a f11728c = c.a.a("t", "s", o7.e.f11821u, "o", "i", "h", "to", "ti");

    /* renamed from: d, reason: collision with root package name */
    public static c.a f11729d = c.a.a("x", "y");

    public static WeakReference<Interpolator> a(int i10) {
        WeakReference<Interpolator> e10;
        synchronized (t.class) {
            e10 = g().e(i10);
        }
        return e10;
    }

    public static Interpolator b(PointF pointF, PointF pointF2) {
        Interpolator linearInterpolator;
        pointF.x = q3.g.c(pointF.x, -1.0f, 1.0f);
        pointF.y = q3.g.c(pointF.y, -100.0f, 100.0f);
        pointF2.x = q3.g.c(pointF2.x, -1.0f, 1.0f);
        float c10 = q3.g.c(pointF2.y, -100.0f, 100.0f);
        pointF2.y = c10;
        int i10 = q3.h.i(pointF.x, pointF.y, pointF2.x, c10);
        WeakReference<Interpolator> a10 = a(i10);
        Interpolator interpolator = a10 != null ? a10.get() : null;
        if (a10 == null || interpolator == null) {
            try {
                linearInterpolator = s0.b.a(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e10) {
                if ("The Path cannot loop back on itself.".equals(e10.getMessage())) {
                    linearInterpolator = s0.b.a(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD), pointF2.y);
                } else {
                    linearInterpolator = new LinearInterpolator();
                }
            }
            interpolator = linearInterpolator;
            try {
                h(i10, new WeakReference(interpolator));
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
        }
        return interpolator;
    }

    public static <T> r3.a<T> c(p3.c cVar, e3.d dVar, float f10, m0<T> m0Var, boolean z10, boolean z11) throws IOException {
        if (z10 && z11) {
            return e(dVar, cVar, f10, m0Var);
        }
        if (z10) {
            return d(dVar, cVar, f10, m0Var);
        }
        return f(cVar, f10, m0Var);
    }

    public static <T> r3.a<T> d(e3.d dVar, p3.c cVar, float f10, m0<T> m0Var) throws IOException {
        Interpolator interpolator;
        Interpolator interpolator2;
        T t10;
        cVar.h();
        PointF pointF = null;
        PointF pointF2 = null;
        T t11 = null;
        T t12 = null;
        PointF pointF3 = null;
        PointF pointF4 = null;
        boolean z10 = false;
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        while (cVar.z()) {
            switch (cVar.c0(f11728c)) {
                case 0:
                    f11 = (float) cVar.G();
                    break;
                case 1:
                    t12 = m0Var.a(cVar, f10);
                    break;
                case 2:
                    t11 = m0Var.a(cVar, f10);
                    break;
                case 3:
                    pointF = s.e(cVar, 1.0f);
                    break;
                case 4:
                    pointF2 = s.e(cVar, 1.0f);
                    break;
                case 5:
                    if (cVar.L() != 1) {
                        z10 = false;
                        break;
                    } else {
                        z10 = true;
                        break;
                    }
                case 6:
                    pointF3 = s.e(cVar, f10);
                    break;
                case 7:
                    pointF4 = s.e(cVar, f10);
                    break;
                default:
                    cVar.k0();
                    break;
            }
        }
        cVar.x();
        if (z10) {
            interpolator2 = f11726a;
            t10 = t12;
        } else {
            if (pointF != null && pointF2 != null) {
                interpolator = b(pointF, pointF2);
            } else {
                interpolator = f11726a;
            }
            interpolator2 = interpolator;
            t10 = t11;
        }
        r3.a<T> aVar = new r3.a<>(dVar, t12, t10, interpolator2, f11, null);
        aVar.f12843o = pointF3;
        aVar.f12844p = pointF4;
        return aVar;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0023. Please report as an issue. */
    public static <T> r3.a<T> e(e3.d dVar, p3.c cVar, float f10, m0<T> m0Var) throws IOException {
        Interpolator interpolator;
        Interpolator b10;
        Interpolator b11;
        T t10;
        PointF pointF;
        r3.a<T> aVar;
        PointF pointF2;
        float f11;
        PointF pointF3;
        cVar.h();
        PointF pointF4 = null;
        boolean z10 = false;
        PointF pointF5 = null;
        PointF pointF6 = null;
        PointF pointF7 = null;
        T t11 = null;
        PointF pointF8 = null;
        PointF pointF9 = null;
        PointF pointF10 = null;
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        PointF pointF11 = null;
        T t12 = null;
        while (cVar.z()) {
            switch (cVar.c0(f11728c)) {
                case 0:
                    pointF2 = pointF4;
                    f12 = (float) cVar.G();
                    pointF4 = pointF2;
                    break;
                case 1:
                    pointF2 = pointF4;
                    t11 = m0Var.a(cVar, f10);
                    pointF4 = pointF2;
                    break;
                case 2:
                    pointF2 = pointF4;
                    t12 = m0Var.a(cVar, f10);
                    pointF4 = pointF2;
                    break;
                case 3:
                    pointF2 = pointF4;
                    f11 = f12;
                    PointF pointF12 = pointF11;
                    if (cVar.V() == c.b.BEGIN_OBJECT) {
                        cVar.h();
                        float f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        float f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        float f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        float f16 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        while (cVar.z()) {
                            int c02 = cVar.c0(f11729d);
                            if (c02 == 0) {
                                c.b V = cVar.V();
                                c.b bVar = c.b.NUMBER;
                                if (V == bVar) {
                                    f15 = (float) cVar.G();
                                    f13 = f15;
                                } else {
                                    cVar.d();
                                    f13 = (float) cVar.G();
                                    f15 = cVar.V() == bVar ? (float) cVar.G() : f13;
                                    cVar.k();
                                }
                            } else if (c02 != 1) {
                                cVar.k0();
                            } else {
                                c.b V2 = cVar.V();
                                c.b bVar2 = c.b.NUMBER;
                                if (V2 == bVar2) {
                                    f16 = (float) cVar.G();
                                    f14 = f16;
                                } else {
                                    cVar.d();
                                    f14 = (float) cVar.G();
                                    f16 = cVar.V() == bVar2 ? (float) cVar.G() : f14;
                                    cVar.k();
                                }
                            }
                        }
                        PointF pointF13 = new PointF(f13, f14);
                        PointF pointF14 = new PointF(f15, f16);
                        cVar.x();
                        pointF8 = pointF14;
                        pointF7 = pointF13;
                        pointF11 = pointF12;
                        f12 = f11;
                        pointF4 = pointF2;
                        break;
                    } else {
                        pointF5 = s.e(cVar, f10);
                        f12 = f11;
                        pointF11 = pointF12;
                        pointF4 = pointF2;
                    }
                case 4:
                    if (cVar.V() == c.b.BEGIN_OBJECT) {
                        cVar.h();
                        float f17 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        float f18 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        float f19 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        float f20 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        while (cVar.z()) {
                            PointF pointF15 = pointF11;
                            int c03 = cVar.c0(f11729d);
                            if (c03 != 0) {
                                pointF3 = pointF4;
                                if (c03 != 1) {
                                    cVar.k0();
                                } else {
                                    c.b V3 = cVar.V();
                                    c.b bVar3 = c.b.NUMBER;
                                    if (V3 == bVar3) {
                                        f20 = (float) cVar.G();
                                        f12 = f12;
                                        f18 = f20;
                                    } else {
                                        float f21 = f12;
                                        cVar.d();
                                        float G = (float) cVar.G();
                                        float G2 = cVar.V() == bVar3 ? (float) cVar.G() : G;
                                        cVar.k();
                                        f12 = f21;
                                        pointF11 = pointF15;
                                        pointF4 = pointF3;
                                        f20 = G2;
                                        f18 = G;
                                    }
                                }
                            } else {
                                pointF3 = pointF4;
                                float f22 = f12;
                                c.b V4 = cVar.V();
                                c.b bVar4 = c.b.NUMBER;
                                if (V4 == bVar4) {
                                    f19 = (float) cVar.G();
                                    f12 = f22;
                                    f17 = f19;
                                } else {
                                    cVar.d();
                                    f17 = (float) cVar.G();
                                    f19 = cVar.V() == bVar4 ? (float) cVar.G() : f17;
                                    cVar.k();
                                    f12 = f22;
                                }
                            }
                            pointF11 = pointF15;
                            pointF4 = pointF3;
                        }
                        pointF2 = pointF4;
                        f11 = f12;
                        PointF pointF16 = new PointF(f17, f18);
                        PointF pointF17 = new PointF(f19, f20);
                        cVar.x();
                        pointF10 = pointF17;
                        pointF9 = pointF16;
                        f12 = f11;
                        pointF4 = pointF2;
                        break;
                    } else {
                        pointF2 = pointF4;
                        pointF6 = s.e(cVar, f10);
                        pointF4 = pointF2;
                    }
                case 5:
                    if (cVar.L() != 1) {
                        z10 = false;
                        break;
                    } else {
                        z10 = true;
                        break;
                    }
                case 6:
                    pointF11 = s.e(cVar, f10);
                    break;
                case 7:
                    pointF4 = s.e(cVar, f10);
                    break;
                default:
                    pointF2 = pointF4;
                    cVar.k0();
                    pointF4 = pointF2;
                    break;
            }
        }
        PointF pointF18 = pointF4;
        float f23 = f12;
        PointF pointF19 = pointF11;
        cVar.x();
        if (z10) {
            interpolator = f11726a;
            t10 = t11;
        } else {
            if (pointF5 != null && pointF6 != null) {
                interpolator = b(pointF5, pointF6);
            } else {
                if (pointF7 != null && pointF8 != null && pointF9 != null && pointF10 != null) {
                    b10 = b(pointF7, pointF9);
                    b11 = b(pointF8, pointF10);
                    t10 = t12;
                    interpolator = null;
                    if (b10 == null && b11 != null) {
                        pointF = pointF19;
                        aVar = new r3.a<>(dVar, t11, t10, b10, b11, f23, null);
                    } else {
                        pointF = pointF19;
                        aVar = new r3.a<>(dVar, t11, t10, interpolator, f23, null);
                    }
                    aVar.f12843o = pointF;
                    aVar.f12844p = pointF18;
                    return aVar;
                }
                interpolator = f11726a;
            }
            t10 = t12;
        }
        b10 = null;
        b11 = null;
        if (b10 == null) {
        }
        pointF = pointF19;
        aVar = new r3.a<>(dVar, t11, t10, interpolator, f23, null);
        aVar.f12843o = pointF;
        aVar.f12844p = pointF18;
        return aVar;
    }

    public static <T> r3.a<T> f(p3.c cVar, float f10, m0<T> m0Var) throws IOException {
        return new r3.a<>(m0Var.a(cVar, f10));
    }

    public static s.h<WeakReference<Interpolator>> g() {
        if (f11727b == null) {
            f11727b = new s.h<>();
        }
        return f11727b;
    }

    public static void h(int i10, WeakReference<Interpolator> weakReference) {
        synchronized (t.class) {
            f11727b.i(i10, weakReference);
        }
    }
}
