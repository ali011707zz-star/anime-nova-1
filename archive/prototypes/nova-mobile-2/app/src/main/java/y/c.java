package y;

import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import z.p;

/* compiled from: ViewSpline.java */
/* loaded from: classes.dex */
public abstract class c extends u.k {

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class a extends c {
        @Override // y.c
        public void g(View view, float f10) {
            view.setAlpha(a(f10));
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class b extends c {

        /* renamed from: f, reason: collision with root package name */
        public String f16259f;

        /* renamed from: g, reason: collision with root package name */
        public SparseArray<androidx.constraintlayout.widget.a> f16260g;

        /* renamed from: h, reason: collision with root package name */
        public float[] f16261h;

        public b(String str, SparseArray<androidx.constraintlayout.widget.a> sparseArray) {
            this.f16259f = str.split(",")[1];
            this.f16260g = sparseArray;
        }

        @Override // u.k
        public void b(int i10, float f10) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // u.k
        public void d(int i10) {
            int size = this.f16260g.size();
            int g10 = this.f16260g.valueAt(0).g();
            double[] dArr = new double[size];
            this.f16261h = new float[g10];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, g10);
            for (int i11 = 0; i11 < size; i11++) {
                int keyAt = this.f16260g.keyAt(i11);
                androidx.constraintlayout.widget.a valueAt = this.f16260g.valueAt(i11);
                double d10 = keyAt;
                Double.isNaN(d10);
                dArr[i11] = d10 * 0.01d;
                valueAt.f(this.f16261h);
                int i12 = 0;
                while (true) {
                    if (i12 < this.f16261h.length) {
                        dArr2[i11][i12] = r6[i12];
                        i12++;
                    }
                }
            }
            this.f14259a = u.b.a(i10, dArr, dArr2);
        }

        @Override // y.c
        public void g(View view, float f10) {
            this.f14259a.e(f10, this.f16261h);
            this.f16260g.valueAt(0).j(view, this.f16261h);
        }

        public void h(int i10, androidx.constraintlayout.widget.a aVar) {
            this.f16260g.append(i10, aVar);
        }
    }

    /* compiled from: ViewSpline.java */
    /* renamed from: y.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0420c extends c {
        @Override // y.c
        public void g(View view, float f10) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(a(f10));
            }
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class d extends c {
        @Override // y.c
        public void g(View view, float f10) {
        }

        public void h(View view, float f10, double d10, double d11) {
            view.setRotation(a(f10) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class e extends c {
        @Override // y.c
        public void g(View view, float f10) {
            view.setPivotX(a(f10));
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class f extends c {
        @Override // y.c
        public void g(View view, float f10) {
            view.setPivotY(a(f10));
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class g extends c {

        /* renamed from: f, reason: collision with root package name */
        public boolean f16262f = false;

        @Override // y.c
        public void g(View view, float f10) {
            if (view instanceof p) {
                ((p) view).setProgress(a(f10));
                return;
            }
            if (this.f16262f) {
                return;
            }
            Method method = null;
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f16262f = true;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f10)));
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
            }
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class h extends c {
        @Override // y.c
        public void g(View view, float f10) {
            view.setRotation(a(f10));
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class i extends c {
        @Override // y.c
        public void g(View view, float f10) {
            view.setRotationX(a(f10));
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class j extends c {
        @Override // y.c
        public void g(View view, float f10) {
            view.setRotationY(a(f10));
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class k extends c {
        @Override // y.c
        public void g(View view, float f10) {
            view.setScaleX(a(f10));
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class l extends c {
        @Override // y.c
        public void g(View view, float f10) {
            view.setScaleY(a(f10));
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class m extends c {
        @Override // y.c
        public void g(View view, float f10) {
            view.setTranslationX(a(f10));
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class n extends c {
        @Override // y.c
        public void g(View view, float f10) {
            view.setTranslationY(a(f10));
        }
    }

    /* compiled from: ViewSpline.java */
    /* loaded from: classes.dex */
    public static class o extends c {
        @Override // y.c
        public void g(View view, float f10) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(a(f10));
            }
        }
    }

    public static c e(String str, SparseArray<androidx.constraintlayout.widget.a> sparseArray) {
        return new b(str, sparseArray);
    }

    public static c f(String str) {
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
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -760884510:
                if (str.equals("transformPivotX")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -760884509:
                if (str.equals("transformPivotY")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c10 = 11;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c10 = 14;
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c10 = 15;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return new i();
            case 1:
                return new j();
            case 2:
                return new m();
            case 3:
                return new n();
            case 4:
                return new o();
            case 5:
                return new g();
            case 6:
                return new k();
            case 7:
                return new l();
            case '\b':
                return new a();
            case '\t':
                return new e();
            case '\n':
                return new f();
            case 11:
                return new h();
            case '\f':
                return new C0420c();
            case '\r':
                return new d();
            case 14:
                return new a();
            case 15:
                return new a();
            default:
                return null;
        }
    }

    public abstract void g(View view, float f10);
}
