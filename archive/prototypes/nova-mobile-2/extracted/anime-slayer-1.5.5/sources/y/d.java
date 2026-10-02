package y;

import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import z.p;

/* compiled from: ViewTimeCycle.java */
/* loaded from: classes.dex */
public abstract class d extends u.m {

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class a extends d {
        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            view.setAlpha(f(f10, j10, view, dVar));
            return this.f14273h;
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class b extends d {

        /* renamed from: l, reason: collision with root package name */
        public String f16263l;

        /* renamed from: m, reason: collision with root package name */
        public SparseArray<androidx.constraintlayout.widget.a> f16264m;

        /* renamed from: n, reason: collision with root package name */
        public SparseArray<float[]> f16265n = new SparseArray<>();

        /* renamed from: o, reason: collision with root package name */
        public float[] f16266o;

        /* renamed from: p, reason: collision with root package name */
        public float[] f16267p;

        public b(String str, SparseArray<androidx.constraintlayout.widget.a> sparseArray) {
            this.f16263l = str.split(",")[1];
            this.f16264m = sparseArray;
        }

        @Override // u.m
        public void b(int i10, float f10, float f11, int i11, float f12) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // u.m
        public void e(int i10) {
            int size = this.f16264m.size();
            int g10 = this.f16264m.valueAt(0).g();
            double[] dArr = new double[size];
            int i11 = g10 + 2;
            this.f16266o = new float[i11];
            this.f16267p = new float[g10];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, i11);
            for (int i12 = 0; i12 < size; i12++) {
                int keyAt = this.f16264m.keyAt(i12);
                androidx.constraintlayout.widget.a valueAt = this.f16264m.valueAt(i12);
                float[] valueAt2 = this.f16265n.valueAt(i12);
                double d10 = keyAt;
                Double.isNaN(d10);
                dArr[i12] = d10 * 0.01d;
                valueAt.f(this.f16266o);
                int i13 = 0;
                while (true) {
                    if (i13 < this.f16266o.length) {
                        dArr2[i12][i13] = r8[i13];
                        i13++;
                    }
                }
                dArr2[i12][g10] = valueAt2[0];
                dArr2[i12][g10 + 1] = valueAt2[1];
            }
            this.f14266a = u.b.a(i10, dArr, dArr2);
        }

        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            this.f14266a.e(f10, this.f16266o);
            float[] fArr = this.f16266o;
            float f11 = fArr[fArr.length - 2];
            float f12 = fArr[fArr.length - 1];
            long j11 = j10 - this.f14274i;
            if (Float.isNaN(this.f14275j)) {
                float a10 = dVar.a(view, this.f16263l, 0);
                this.f14275j = a10;
                if (Float.isNaN(a10)) {
                    this.f14275j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                }
            }
            double d10 = this.f14275j;
            double d11 = j11;
            Double.isNaN(d11);
            double d12 = f11;
            Double.isNaN(d12);
            Double.isNaN(d10);
            float f13 = (float) ((d10 + ((d11 * 1.0E-9d) * d12)) % 1.0d);
            this.f14275j = f13;
            this.f14274i = j10;
            float a11 = a(f13);
            this.f14273h = false;
            int i10 = 0;
            while (true) {
                float[] fArr2 = this.f16267p;
                if (i10 >= fArr2.length) {
                    break;
                }
                boolean z10 = this.f14273h;
                float[] fArr3 = this.f16266o;
                this.f14273h = z10 | (((double) fArr3[i10]) != ShadowDrawableWrapper.COS_45);
                fArr2[i10] = (fArr3[i10] * a11) + f12;
                i10++;
            }
            this.f16264m.valueAt(0).j(view, this.f16267p);
            if (f11 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.f14273h = true;
            }
            return this.f14273h;
        }

        public void j(int i10, androidx.constraintlayout.widget.a aVar, float f10, int i11, float f11) {
            this.f16264m.append(i10, aVar);
            this.f16265n.append(i10, new float[]{f10, f11});
            this.f14267b = Math.max(this.f14267b, i11);
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class c extends d {
        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(f(f10, j10, view, dVar));
            }
            return this.f14273h;
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* renamed from: y.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0421d extends d {
        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            return this.f14273h;
        }

        public boolean j(View view, u.d dVar, float f10, long j10, double d10, double d11) {
            view.setRotation(f(f10, j10, view, dVar) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
            return this.f14273h;
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class e extends d {

        /* renamed from: l, reason: collision with root package name */
        public boolean f16268l = false;

        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            if (view instanceof p) {
                ((p) view).setProgress(f(f10, j10, view, dVar));
            } else {
                if (this.f16268l) {
                    return false;
                }
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.f16268l = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(f(f10, j10, view, dVar)));
                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                    }
                }
            }
            return this.f14273h;
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class f extends d {
        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            view.setRotation(f(f10, j10, view, dVar));
            return this.f14273h;
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class g extends d {
        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            view.setRotationX(f(f10, j10, view, dVar));
            return this.f14273h;
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class h extends d {
        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            view.setRotationY(f(f10, j10, view, dVar));
            return this.f14273h;
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class i extends d {
        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            view.setScaleX(f(f10, j10, view, dVar));
            return this.f14273h;
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class j extends d {
        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            view.setScaleY(f(f10, j10, view, dVar));
            return this.f14273h;
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class k extends d {
        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            view.setTranslationX(f(f10, j10, view, dVar));
            return this.f14273h;
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class l extends d {
        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            view.setTranslationY(f(f10, j10, view, dVar));
            return this.f14273h;
        }
    }

    /* compiled from: ViewTimeCycle.java */
    /* loaded from: classes.dex */
    public static class m extends d {
        @Override // y.d
        public boolean i(View view, float f10, long j10, u.d dVar) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(f(f10, j10, view, dVar));
            }
            return this.f14273h;
        }
    }

    public static d g(String str, SparseArray<androidx.constraintlayout.widget.a> sparseArray) {
        return new b(str, sparseArray);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:39:0x009c. Please report as an issue. */
    public static d h(String str, long j10) {
        d gVar;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c10 = 5;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c10 = 6;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c10 = 7;
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c10 = 11;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                gVar = new g();
                gVar.c(j10);
                return gVar;
            case 1:
                gVar = new h();
                gVar.c(j10);
                return gVar;
            case 2:
                gVar = new k();
                gVar.c(j10);
                return gVar;
            case 3:
                gVar = new l();
                gVar.c(j10);
                return gVar;
            case 4:
                gVar = new m();
                gVar.c(j10);
                return gVar;
            case 5:
                gVar = new e();
                gVar.c(j10);
                return gVar;
            case 6:
                gVar = new i();
                gVar.c(j10);
                return gVar;
            case 7:
                gVar = new j();
                gVar.c(j10);
                return gVar;
            case '\b':
                gVar = new f();
                gVar.c(j10);
                return gVar;
            case '\t':
                gVar = new c();
                gVar.c(j10);
                return gVar;
            case '\n':
                gVar = new C0421d();
                gVar.c(j10);
                return gVar;
            case 11:
                gVar = new a();
                gVar.c(j10);
                return gVar;
            default:
                return null;
        }
    }

    public float f(float f10, long j10, View view, u.d dVar) {
        this.f14266a.e(f10, this.f14272g);
        float[] fArr = this.f14272g;
        boolean z10 = true;
        float f11 = fArr[1];
        if (f11 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f14273h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f14275j)) {
            float a10 = dVar.a(view, this.f14271f, 0);
            this.f14275j = a10;
            if (Float.isNaN(a10)) {
                this.f14275j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
        }
        long j11 = j10 - this.f14274i;
        double d10 = this.f14275j;
        double d11 = j11;
        Double.isNaN(d11);
        double d12 = f11;
        Double.isNaN(d12);
        Double.isNaN(d10);
        float f12 = (float) ((d10 + ((d11 * 1.0E-9d) * d12)) % 1.0d);
        this.f14275j = f12;
        dVar.b(view, this.f14271f, 0, f12);
        this.f14274i = j10;
        float f13 = this.f14272g[0];
        float a11 = (a(this.f14275j) * f13) + this.f14272g[2];
        if (f13 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f11 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            z10 = false;
        }
        this.f14273h = z10;
        return a11;
    }

    public abstract boolean i(View view, float f10, long j10, u.d dVar);
}
