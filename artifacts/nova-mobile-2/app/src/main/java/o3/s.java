package o3;

import android.graphics.Color;
import android.graphics.PointF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p3.c;

/* compiled from: JsonUtils.java */
/* loaded from: classes.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f11724a = c.a.a("x", "y");

    /* compiled from: JsonUtils.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11725a;

        static {
            int[] iArr = new int[c.b.values().length];
            f11725a = iArr;
            try {
                iArr[c.b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11725a[c.b.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11725a[c.b.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static PointF a(p3.c cVar, float f10) throws IOException {
        cVar.d();
        float G = (float) cVar.G();
        float G2 = (float) cVar.G();
        while (cVar.V() != c.b.END_ARRAY) {
            cVar.k0();
        }
        cVar.k();
        return new PointF(G * f10, G2 * f10);
    }

    public static PointF b(p3.c cVar, float f10) throws IOException {
        float G = (float) cVar.G();
        float G2 = (float) cVar.G();
        while (cVar.z()) {
            cVar.k0();
        }
        return new PointF(G * f10, G2 * f10);
    }

    public static PointF c(p3.c cVar, float f10) throws IOException {
        cVar.h();
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        while (cVar.z()) {
            int c02 = cVar.c0(f11724a);
            if (c02 == 0) {
                f11 = g(cVar);
            } else if (c02 != 1) {
                cVar.h0();
                cVar.k0();
            } else {
                f12 = g(cVar);
            }
        }
        cVar.x();
        return new PointF(f11 * f10, f12 * f10);
    }

    public static int d(p3.c cVar) throws IOException {
        cVar.d();
        int G = (int) (cVar.G() * 255.0d);
        int G2 = (int) (cVar.G() * 255.0d);
        int G3 = (int) (cVar.G() * 255.0d);
        while (cVar.z()) {
            cVar.k0();
        }
        cVar.k();
        return Color.argb(BaseProgressIndicator.MAX_ALPHA, G, G2, G3);
    }

    public static PointF e(p3.c cVar, float f10) throws IOException {
        int i10 = a.f11725a[cVar.V().ordinal()];
        if (i10 == 1) {
            return b(cVar, f10);
        }
        if (i10 == 2) {
            return a(cVar, f10);
        }
        if (i10 == 3) {
            return c(cVar, f10);
        }
        throw new IllegalArgumentException("Unknown point starts with " + cVar.V());
    }

    public static List<PointF> f(p3.c cVar, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        cVar.d();
        while (cVar.V() == c.b.BEGIN_ARRAY) {
            cVar.d();
            arrayList.add(e(cVar, f10));
            cVar.k();
        }
        cVar.k();
        return arrayList;
    }

    public static float g(p3.c cVar) throws IOException {
        c.b V = cVar.V();
        int i10 = a.f11725a[V.ordinal()];
        if (i10 == 1) {
            return (float) cVar.G();
        }
        if (i10 == 2) {
            cVar.d();
            float G = (float) cVar.G();
            while (cVar.z()) {
                cVar.k0();
            }
            cVar.k();
            return G;
        }
        throw new IllegalArgumentException("Unknown value for token of type " + V);
    }
}
