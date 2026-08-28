package x1;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;

/* compiled from: ViewUtils.java */
/* loaded from: classes.dex */
public class e0 {

    /* renamed from: a, reason: collision with root package name */
    public static final k0 f15741a;

    /* renamed from: b, reason: collision with root package name */
    public static final Property<View, Float> f15742b;

    /* renamed from: c, reason: collision with root package name */
    public static final Property<View, Rect> f15743c;

    /* compiled from: ViewUtils.java */
    /* loaded from: classes.dex */
    public static class a extends Property<View, Float> {
        public a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(e0.c(view));
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f10) {
            e0.g(view, f10.floatValue());
        }
    }

    /* compiled from: ViewUtils.java */
    /* loaded from: classes.dex */
    public static class b extends Property<View, Rect> {
        public b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Rect get(View view) {
            return q0.b0.w(view);
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Rect rect) {
            q0.b0.A0(view, rect);
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            f15741a = new j0();
        } else if (i10 >= 23) {
            f15741a = new i0();
        } else if (i10 >= 22) {
            f15741a = new h0();
        } else if (i10 >= 21) {
            f15741a = new g0();
        } else if (i10 >= 19) {
            f15741a = new f0();
        } else {
            f15741a = new k0();
        }
        f15742b = new a(Float.class, "translationAlpha");
        f15743c = new b(Rect.class, "clipBounds");
    }

    public static void a(View view) {
        f15741a.a(view);
    }

    public static d0 b(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new c0(view);
        }
        return b0.a(view);
    }

    public static float c(View view) {
        return f15741a.c(view);
    }

    public static o0 d(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new n0(view);
        }
        return new m0(view.getWindowToken());
    }

    public static void e(View view) {
        f15741a.d(view);
    }

    public static void f(View view, int i10, int i11, int i12, int i13) {
        f15741a.e(view, i10, i11, i12, i13);
    }

    public static void g(View view, float f10) {
        f15741a.f(view, f10);
    }

    public static void h(View view, int i10) {
        f15741a.g(view, i10);
    }

    public static void i(View view, Matrix matrix) {
        f15741a.h(view, matrix);
    }

    public static void j(View view, Matrix matrix) {
        f15741a.i(view, matrix);
    }
}
