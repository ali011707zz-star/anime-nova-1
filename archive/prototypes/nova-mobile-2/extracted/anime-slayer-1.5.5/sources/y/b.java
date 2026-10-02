package y;

import android.os.Build;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import z.p;

/* compiled from: ViewOscillator.java */
/* loaded from: classes.dex */
public abstract class b extends u.f {

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class a extends b {
        @Override // y.b
        public void i(View view, float f10) {
            view.setAlpha(a(f10));
        }
    }

    /* compiled from: ViewOscillator.java */
    /* renamed from: y.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0419b extends b {

        /* renamed from: h, reason: collision with root package name */
        public float[] f16256h = new float[1];

        /* renamed from: i, reason: collision with root package name */
        public androidx.constraintlayout.widget.a f16257i;

        @Override // u.f
        public void b(Object obj) {
            this.f16257i = (androidx.constraintlayout.widget.a) obj;
        }

        @Override // y.b
        public void i(View view, float f10) {
            this.f16256h[0] = a(f10);
            this.f16257i.j(view, this.f16256h);
        }
    }

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class c extends b {
        @Override // y.b
        public void i(View view, float f10) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(a(f10));
            }
        }
    }

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class d extends b {
        @Override // y.b
        public void i(View view, float f10) {
        }

        public void j(View view, float f10, double d10, double d11) {
            view.setRotation(a(f10) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
        }
    }

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class e extends b {

        /* renamed from: h, reason: collision with root package name */
        public boolean f16258h = false;

        @Override // y.b
        public void i(View view, float f10) {
            if (view instanceof p) {
                ((p) view).setProgress(a(f10));
                return;
            }
            if (this.f16258h) {
                return;
            }
            Method method = null;
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f16258h = true;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f10)));
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
            }
        }
    }

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class f extends b {
        @Override // y.b
        public void i(View view, float f10) {
            view.setRotation(a(f10));
        }
    }

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class g extends b {
        @Override // y.b
        public void i(View view, float f10) {
            view.setRotationX(a(f10));
        }
    }

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class h extends b {
        @Override // y.b
        public void i(View view, float f10) {
            view.setRotationY(a(f10));
        }
    }

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class i extends b {
        @Override // y.b
        public void i(View view, float f10) {
            view.setScaleX(a(f10));
        }
    }

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class j extends b {
        @Override // y.b
        public void i(View view, float f10) {
            view.setScaleY(a(f10));
        }
    }

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class k extends b {
        @Override // y.b
        public void i(View view, float f10) {
            view.setTranslationX(a(f10));
        }
    }

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class l extends b {
        @Override // y.b
        public void i(View view, float f10) {
            view.setTranslationY(a(f10));
        }
    }

    /* compiled from: ViewOscillator.java */
    /* loaded from: classes.dex */
    public static class m extends b {
        @Override // y.b
        public void i(View view, float f10) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(a(f10));
            }
        }
    }

    public static b h(String str) {
        if (str.startsWith("CUSTOM")) {
            return new C0419b();
        }
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
            case -40300674:
                if (str.equals("rotation")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c10 = 11;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c10 = '\r';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return new g();
            case 1:
                return new h();
            case 2:
                return new k();
            case 3:
                return new l();
            case 4:
                return new m();
            case 5:
                return new e();
            case 6:
                return new i();
            case 7:
                return new j();
            case '\b':
                return new a();
            case '\t':
                return new f();
            case '\n':
                return new c();
            case 11:
                return new d();
            case '\f':
                return new a();
            case '\r':
                return new a();
            default:
                return null;
        }
    }

    public abstract void i(View view, float f10);
}
