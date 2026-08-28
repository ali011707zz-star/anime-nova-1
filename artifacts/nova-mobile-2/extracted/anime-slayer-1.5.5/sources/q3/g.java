package q3;

import android.graphics.Path;
import android.graphics.PointF;
import g3.k;
import java.util.List;
import l3.m;

/* compiled from: MiscUtils.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public static PointF f12457a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static double b(double d10, double d11, double d12) {
        return Math.max(d11, Math.min(d12, d10));
    }

    public static float c(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f12, f10));
    }

    public static int d(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i12, i10));
    }

    public static boolean e(float f10, float f11, float f12) {
        return f10 >= f11 && f10 <= f12;
    }

    public static int f(int i10, int i11) {
        int i12 = i10 / i11;
        return (((i10 ^ i11) >= 0) || i10 % i11 == 0) ? i12 : i12 - 1;
    }

    public static int g(float f10, float f11) {
        return h((int) f10, (int) f11);
    }

    public static int h(int i10, int i11) {
        return i10 - (i11 * f(i10, i11));
    }

    public static void i(m mVar, Path path) {
        path.reset();
        PointF b10 = mVar.b();
        path.moveTo(b10.x, b10.y);
        f12457a.set(b10.x, b10.y);
        for (int i10 = 0; i10 < mVar.a().size(); i10++) {
            j3.a aVar = mVar.a().get(i10);
            PointF a10 = aVar.a();
            PointF b11 = aVar.b();
            PointF c10 = aVar.c();
            if (a10.equals(f12457a) && b11.equals(c10)) {
                path.lineTo(c10.x, c10.y);
            } else {
                path.cubicTo(a10.x, a10.y, b11.x, b11.y, c10.x, c10.y);
            }
            f12457a.set(c10.x, c10.y);
        }
        if (mVar.d()) {
            path.close();
        }
    }

    public static double j(double d10, double d11, double d12) {
        return d10 + (d12 * (d11 - d10));
    }

    public static float k(float f10, float f11, float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    public static int l(int i10, int i11, float f10) {
        return (int) (i10 + (f10 * (i11 - i10)));
    }

    public static void m(j3.e eVar, int i10, List<j3.e> list, j3.e eVar2, k kVar) {
        if (eVar.c(kVar.getName(), i10)) {
            list.add(eVar2.a(kVar.getName()).i(kVar));
        }
    }
}
