package q0;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* compiled from: WindowInsetsCompat.java */
/* loaded from: classes.dex */
public class m0 {

    /* renamed from: b, reason: collision with root package name */
    public static final m0 f12368b;

    /* renamed from: a, reason: collision with root package name */
    public final l f12369a;

    /* compiled from: WindowInsetsCompat.java */
    @SuppressLint({"SoonBlockedPrivateApi"})
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static Field f12370a;

        /* renamed from: b, reason: collision with root package name */
        public static Field f12371b;

        /* renamed from: c, reason: collision with root package name */
        public static Field f12372c;

        /* renamed from: d, reason: collision with root package name */
        public static boolean f12373d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f12370a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f12371b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f12372c = declaredField3;
                declaredField3.setAccessible(true);
                f12373d = true;
            } catch (ReflectiveOperationException e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Failed to get visible insets from AttachInfo ");
                sb2.append(e10.getMessage());
            }
        }

        public static m0 a(View view) {
            if (f12373d && view.isAttachedToWindow()) {
                try {
                    Object obj = f12370a.get(view.getRootView());
                    if (obj != null) {
                        Rect rect = (Rect) f12371b.get(obj);
                        Rect rect2 = (Rect) f12372c.get(obj);
                        if (rect != null && rect2 != null) {
                            m0 a10 = new b().c(h0.e.c(rect)).d(h0.e.c(rect2)).a();
                            a10.t(a10);
                            a10.d(view.getRootView());
                            return a10;
                        }
                    }
                } catch (IllegalAccessException e10) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Failed to get insets from AttachInfo. ");
                    sb2.append(e10.getMessage());
                }
            }
            return null;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class e extends d {
        public e() {
        }

        @Override // q0.m0.f
        public void c(int i10, h0.e eVar) {
            this.f12381c.setInsets(n.a(i10), eVar.f());
        }

        public e(m0 m0Var) {
            super(m0Var);
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class f {

        /* renamed from: a, reason: collision with root package name */
        public final m0 f12382a;

        /* renamed from: b, reason: collision with root package name */
        public h0.e[] f12383b;

        public f() {
            this(new m0((m0) null));
        }

        public final void a() {
            h0.e[] eVarArr = this.f12383b;
            if (eVarArr != null) {
                h0.e eVar = eVarArr[m.d(1)];
                h0.e eVar2 = this.f12383b[m.d(2)];
                if (eVar2 == null) {
                    eVar2 = this.f12382a.f(2);
                }
                if (eVar == null) {
                    eVar = this.f12382a.f(1);
                }
                g(h0.e.a(eVar, eVar2));
                h0.e eVar3 = this.f12383b[m.d(16)];
                if (eVar3 != null) {
                    f(eVar3);
                }
                h0.e eVar4 = this.f12383b[m.d(32)];
                if (eVar4 != null) {
                    d(eVar4);
                }
                h0.e eVar5 = this.f12383b[m.d(64)];
                if (eVar5 != null) {
                    h(eVar5);
                }
            }
        }

        public m0 b() {
            a();
            return this.f12382a;
        }

        public void c(int i10, h0.e eVar) {
            if (this.f12383b == null) {
                this.f12383b = new h0.e[9];
            }
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    this.f12383b[m.d(i11)] = eVar;
                }
            }
        }

        public void d(h0.e eVar) {
        }

        public void e(h0.e eVar) {
        }

        public void f(h0.e eVar) {
        }

        public void g(h0.e eVar) {
        }

        public void h(h0.e eVar) {
        }

        public f(m0 m0Var) {
            this.f12382a = m0Var;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class i extends h {
        public i(m0 m0Var, WindowInsets windowInsets) {
            super(m0Var, windowInsets);
        }

        @Override // q0.m0.l
        public m0 a() {
            return m0.w(this.f12389c.consumeDisplayCutout());
        }

        @Override // q0.m0.g, q0.m0.l
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return p0.c.a(this.f12389c, iVar.f12389c) && p0.c.a(this.f12393g, iVar.f12393g);
        }

        @Override // q0.m0.l
        public q0.d f() {
            return q0.d.e(this.f12389c.getDisplayCutout());
        }

        @Override // q0.m0.l
        public int hashCode() {
            return this.f12389c.hashCode();
        }

        public i(m0 m0Var, i iVar) {
            super(m0Var, iVar);
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class k extends j {

        /* renamed from: q, reason: collision with root package name */
        public static final m0 f12398q = m0.w(WindowInsets.CONSUMED);

        public k(m0 m0Var, WindowInsets windowInsets) {
            super(m0Var, windowInsets);
        }

        @Override // q0.m0.g, q0.m0.l
        public final void d(View view) {
        }

        @Override // q0.m0.g, q0.m0.l
        public h0.e g(int i10) {
            return h0.e.e(this.f12389c.getInsets(n.a(i10)));
        }

        public k(m0 m0Var, k kVar) {
            super(m0Var, kVar);
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class l {

        /* renamed from: b, reason: collision with root package name */
        public static final m0 f12399b = new b().a().a().b().c();

        /* renamed from: a, reason: collision with root package name */
        public final m0 f12400a;

        public l(m0 m0Var) {
            this.f12400a = m0Var;
        }

        public m0 a() {
            return this.f12400a;
        }

        public m0 b() {
            return this.f12400a;
        }

        public m0 c() {
            return this.f12400a;
        }

        public void d(View view) {
        }

        public void e(m0 m0Var) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return o() == lVar.o() && n() == lVar.n() && p0.d.a(k(), lVar.k()) && p0.d.a(i(), lVar.i()) && p0.d.a(f(), lVar.f());
        }

        public q0.d f() {
            return null;
        }

        public h0.e g(int i10) {
            return h0.e.f7151e;
        }

        public h0.e h() {
            return k();
        }

        public int hashCode() {
            return p0.d.b(Boolean.valueOf(o()), Boolean.valueOf(n()), k(), i(), f());
        }

        public h0.e i() {
            return h0.e.f7151e;
        }

        public h0.e j() {
            return k();
        }

        public h0.e k() {
            return h0.e.f7151e;
        }

        public h0.e l() {
            return k();
        }

        public m0 m(int i10, int i11, int i12, int i13) {
            return f12399b;
        }

        public boolean n() {
            return false;
        }

        public boolean o() {
            return false;
        }

        public void p(h0.e[] eVarArr) {
        }

        public void q(h0.e eVar) {
        }

        public void r(m0 m0Var) {
        }

        public void s(h0.e eVar) {
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static final class m {
        public static int a() {
            return 4;
        }

        public static int b() {
            return 128;
        }

        public static int c() {
            return 8;
        }

        public static int d(int i10) {
            if (i10 == 1) {
                return 0;
            }
            if (i10 == 2) {
                return 1;
            }
            if (i10 == 4) {
                return 2;
            }
            if (i10 == 8) {
                return 3;
            }
            if (i10 == 16) {
                return 4;
            }
            if (i10 == 32) {
                return 5;
            }
            if (i10 == 64) {
                return 6;
            }
            if (i10 == 128) {
                return 7;
            }
            if (i10 == 256) {
                return 8;
            }
            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i10);
        }

        public static int e() {
            return 32;
        }

        public static int f() {
            return 2;
        }

        public static int g() {
            return 1;
        }

        public static int h() {
            return 16;
        }

        public static int i() {
            return 64;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static final class n {
        public static int a(int i10) {
            int statusBars;
            int i11 = 0;
            for (int i12 = 1; i12 <= 256; i12 <<= 1) {
                if ((i10 & i12) != 0) {
                    if (i12 == 1) {
                        statusBars = WindowInsets.Type.statusBars();
                    } else if (i12 == 2) {
                        statusBars = WindowInsets.Type.navigationBars();
                    } else if (i12 == 4) {
                        statusBars = WindowInsets.Type.captionBar();
                    } else if (i12 == 8) {
                        statusBars = WindowInsets.Type.ime();
                    } else if (i12 == 16) {
                        statusBars = WindowInsets.Type.systemGestures();
                    } else if (i12 == 32) {
                        statusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i12 == 64) {
                        statusBars = WindowInsets.Type.tappableElement();
                    } else if (i12 == 128) {
                        statusBars = WindowInsets.Type.displayCutout();
                    }
                    i11 |= statusBars;
                }
            }
            return i11;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f12368b = k.f12398q;
        } else {
            f12368b = l.f12399b;
        }
    }

    public m0(WindowInsets windowInsets) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            this.f12369a = new k(this, windowInsets);
            return;
        }
        if (i10 >= 29) {
            this.f12369a = new j(this, windowInsets);
            return;
        }
        if (i10 >= 28) {
            this.f12369a = new i(this, windowInsets);
            return;
        }
        if (i10 >= 21) {
            this.f12369a = new h(this, windowInsets);
        } else if (i10 >= 20) {
            this.f12369a = new g(this, windowInsets);
        } else {
            this.f12369a = new l(this);
        }
    }

    public static h0.e o(h0.e eVar, int i10, int i11, int i12, int i13) {
        int max = Math.max(0, eVar.f7152a - i10);
        int max2 = Math.max(0, eVar.f7153b - i11);
        int max3 = Math.max(0, eVar.f7154c - i12);
        int max4 = Math.max(0, eVar.f7155d - i13);
        return (max == i10 && max2 == i11 && max3 == i12 && max4 == i13) ? eVar : h0.e.b(max, max2, max3, max4);
    }

    public static m0 w(WindowInsets windowInsets) {
        return x(windowInsets, null);
    }

    public static m0 x(WindowInsets windowInsets, View view) {
        m0 m0Var = new m0((WindowInsets) p0.i.g(windowInsets));
        if (view != null && b0.W(view)) {
            m0Var.t(b0.L(view));
            m0Var.d(view.getRootView());
        }
        return m0Var;
    }

    @Deprecated
    public m0 a() {
        return this.f12369a.a();
    }

    @Deprecated
    public m0 b() {
        return this.f12369a.b();
    }

    @Deprecated
    public m0 c() {
        return this.f12369a.c();
    }

    public void d(View view) {
        this.f12369a.d(view);
    }

    public q0.d e() {
        return this.f12369a.f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m0) {
            return p0.d.a(this.f12369a, ((m0) obj).f12369a);
        }
        return false;
    }

    public h0.e f(int i10) {
        return this.f12369a.g(i10);
    }

    @Deprecated
    public h0.e g() {
        return this.f12369a.h();
    }

    @Deprecated
    public h0.e h() {
        return this.f12369a.i();
    }

    public int hashCode() {
        l lVar = this.f12369a;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    @Deprecated
    public int i() {
        return this.f12369a.k().f7155d;
    }

    @Deprecated
    public int j() {
        return this.f12369a.k().f7152a;
    }

    @Deprecated
    public int k() {
        return this.f12369a.k().f7154c;
    }

    @Deprecated
    public int l() {
        return this.f12369a.k().f7153b;
    }

    @Deprecated
    public boolean m() {
        return !this.f12369a.k().equals(h0.e.f7151e);
    }

    public m0 n(int i10, int i11, int i12, int i13) {
        return this.f12369a.m(i10, i11, i12, i13);
    }

    public boolean p() {
        return this.f12369a.n();
    }

    @Deprecated
    public m0 q(int i10, int i11, int i12, int i13) {
        return new b(this).d(h0.e.b(i10, i11, i12, i13)).a();
    }

    public void r(h0.e[] eVarArr) {
        this.f12369a.p(eVarArr);
    }

    public void s(h0.e eVar) {
        this.f12369a.q(eVar);
    }

    public void t(m0 m0Var) {
        this.f12369a.r(m0Var);
    }

    public void u(h0.e eVar) {
        this.f12369a.s(eVar);
    }

    public WindowInsets v() {
        l lVar = this.f12369a;
        if (lVar instanceof g) {
            return ((g) lVar).f12389c;
        }
        return null;
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class c extends f {

        /* renamed from: e, reason: collision with root package name */
        public static Field f12375e = null;

        /* renamed from: f, reason: collision with root package name */
        public static boolean f12376f = false;

        /* renamed from: g, reason: collision with root package name */
        public static Constructor<WindowInsets> f12377g = null;

        /* renamed from: h, reason: collision with root package name */
        public static boolean f12378h = false;

        /* renamed from: c, reason: collision with root package name */
        public WindowInsets f12379c;

        /* renamed from: d, reason: collision with root package name */
        public h0.e f12380d;

        public c() {
            this.f12379c = i();
        }

        private static WindowInsets i() {
            if (!f12376f) {
                try {
                    f12375e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException unused) {
                }
                f12376f = true;
            }
            Field field = f12375e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException unused2) {
                }
            }
            if (!f12378h) {
                try {
                    f12377g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException unused3) {
                }
                f12378h = true;
            }
            Constructor<WindowInsets> constructor = f12377g;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException unused4) {
                }
            }
            return null;
        }

        @Override // q0.m0.f
        public m0 b() {
            a();
            m0 w10 = m0.w(this.f12379c);
            w10.r(this.f12383b);
            w10.u(this.f12380d);
            return w10;
        }

        @Override // q0.m0.f
        public void e(h0.e eVar) {
            this.f12380d = eVar;
        }

        @Override // q0.m0.f
        public void g(h0.e eVar) {
            WindowInsets windowInsets = this.f12379c;
            if (windowInsets != null) {
                this.f12379c = windowInsets.replaceSystemWindowInsets(eVar.f7152a, eVar.f7153b, eVar.f7154c, eVar.f7155d);
            }
        }

        public c(m0 m0Var) {
            super(m0Var);
            this.f12379c = m0Var.v();
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class d extends f {

        /* renamed from: c, reason: collision with root package name */
        public final WindowInsets.Builder f12381c;

        public d() {
            this.f12381c = new WindowInsets.Builder();
        }

        @Override // q0.m0.f
        public m0 b() {
            a();
            m0 w10 = m0.w(this.f12381c.build());
            w10.r(this.f12383b);
            return w10;
        }

        @Override // q0.m0.f
        public void d(h0.e eVar) {
            this.f12381c.setMandatorySystemGestureInsets(eVar.f());
        }

        @Override // q0.m0.f
        public void e(h0.e eVar) {
            this.f12381c.setStableInsets(eVar.f());
        }

        @Override // q0.m0.f
        public void f(h0.e eVar) {
            this.f12381c.setSystemGestureInsets(eVar.f());
        }

        @Override // q0.m0.f
        public void g(h0.e eVar) {
            this.f12381c.setSystemWindowInsets(eVar.f());
        }

        @Override // q0.m0.f
        public void h(h0.e eVar) {
            this.f12381c.setTappableElementInsets(eVar.f());
        }

        public d(m0 m0Var) {
            super(m0Var);
            WindowInsets.Builder builder;
            WindowInsets v10 = m0Var.v();
            if (v10 != null) {
                builder = new WindowInsets.Builder(v10);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.f12381c = builder;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class h extends g {

        /* renamed from: m, reason: collision with root package name */
        public h0.e f12394m;

        public h(m0 m0Var, WindowInsets windowInsets) {
            super(m0Var, windowInsets);
            this.f12394m = null;
        }

        @Override // q0.m0.l
        public m0 b() {
            return m0.w(this.f12389c.consumeStableInsets());
        }

        @Override // q0.m0.l
        public m0 c() {
            return m0.w(this.f12389c.consumeSystemWindowInsets());
        }

        @Override // q0.m0.l
        public final h0.e i() {
            if (this.f12394m == null) {
                this.f12394m = h0.e.b(this.f12389c.getStableInsetLeft(), this.f12389c.getStableInsetTop(), this.f12389c.getStableInsetRight(), this.f12389c.getStableInsetBottom());
            }
            return this.f12394m;
        }

        @Override // q0.m0.l
        public boolean n() {
            return this.f12389c.isConsumed();
        }

        @Override // q0.m0.l
        public void s(h0.e eVar) {
            this.f12394m = eVar;
        }

        public h(m0 m0Var, h hVar) {
            super(m0Var, hVar);
            this.f12394m = null;
            this.f12394m = hVar.f12394m;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class g extends l {

        /* renamed from: h, reason: collision with root package name */
        public static boolean f12384h = false;

        /* renamed from: i, reason: collision with root package name */
        public static Method f12385i;

        /* renamed from: j, reason: collision with root package name */
        public static Class<?> f12386j;

        /* renamed from: k, reason: collision with root package name */
        public static Field f12387k;

        /* renamed from: l, reason: collision with root package name */
        public static Field f12388l;

        /* renamed from: c, reason: collision with root package name */
        public final WindowInsets f12389c;

        /* renamed from: d, reason: collision with root package name */
        public h0.e[] f12390d;

        /* renamed from: e, reason: collision with root package name */
        public h0.e f12391e;

        /* renamed from: f, reason: collision with root package name */
        public m0 f12392f;

        /* renamed from: g, reason: collision with root package name */
        public h0.e f12393g;

        public g(m0 m0Var, WindowInsets windowInsets) {
            super(m0Var);
            this.f12391e = null;
            this.f12389c = windowInsets;
        }

        @SuppressLint({"WrongConstant"})
        private h0.e t(int i10, boolean z10) {
            h0.e eVar = h0.e.f7151e;
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    eVar = h0.e.a(eVar, u(i11, z10));
                }
            }
            return eVar;
        }

        private h0.e v() {
            m0 m0Var = this.f12392f;
            if (m0Var != null) {
                return m0Var.h();
            }
            return h0.e.f7151e;
        }

        private h0.e w(View view) {
            if (Build.VERSION.SDK_INT < 30) {
                if (!f12384h) {
                    x();
                }
                Method method = f12385i;
                if (method != null && f12386j != null && f12387k != null) {
                    try {
                        Object invoke = method.invoke(view, new Object[0]);
                        if (invoke == null) {
                            return null;
                        }
                        Rect rect = (Rect) f12387k.get(f12388l.get(invoke));
                        if (rect != null) {
                            return h0.e.c(rect);
                        }
                        return null;
                    } catch (ReflectiveOperationException e10) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Failed to get visible insets. (Reflection error). ");
                        sb2.append(e10.getMessage());
                    }
                }
                return null;
            }
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }

        @SuppressLint({"PrivateApi"})
        private static void x() {
            try {
                f12385i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f12386j = cls;
                f12387k = cls.getDeclaredField("mVisibleInsets");
                f12388l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                f12387k.setAccessible(true);
                f12388l.setAccessible(true);
            } catch (ReflectiveOperationException e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Failed to get visible insets. (Reflection error). ");
                sb2.append(e10.getMessage());
            }
            f12384h = true;
        }

        @Override // q0.m0.l
        public void d(View view) {
            h0.e w10 = w(view);
            if (w10 == null) {
                w10 = h0.e.f7151e;
            }
            q(w10);
        }

        @Override // q0.m0.l
        public void e(m0 m0Var) {
            m0Var.t(this.f12392f);
            m0Var.s(this.f12393g);
        }

        @Override // q0.m0.l
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return p0.c.a(this.f12393g, ((g) obj).f12393g);
            }
            return false;
        }

        @Override // q0.m0.l
        public h0.e g(int i10) {
            return t(i10, false);
        }

        @Override // q0.m0.l
        public final h0.e k() {
            if (this.f12391e == null) {
                this.f12391e = h0.e.b(this.f12389c.getSystemWindowInsetLeft(), this.f12389c.getSystemWindowInsetTop(), this.f12389c.getSystemWindowInsetRight(), this.f12389c.getSystemWindowInsetBottom());
            }
            return this.f12391e;
        }

        @Override // q0.m0.l
        public m0 m(int i10, int i11, int i12, int i13) {
            b bVar = new b(m0.w(this.f12389c));
            bVar.d(m0.o(k(), i10, i11, i12, i13));
            bVar.c(m0.o(i(), i10, i11, i12, i13));
            return bVar.a();
        }

        @Override // q0.m0.l
        public boolean o() {
            return this.f12389c.isRound();
        }

        @Override // q0.m0.l
        public void p(h0.e[] eVarArr) {
            this.f12390d = eVarArr;
        }

        @Override // q0.m0.l
        public void q(h0.e eVar) {
            this.f12393g = eVar;
        }

        @Override // q0.m0.l
        public void r(m0 m0Var) {
            this.f12392f = m0Var;
        }

        public h0.e u(int i10, boolean z10) {
            h0.e h10;
            int i11;
            q0.d f10;
            if (i10 == 1) {
                if (z10) {
                    return h0.e.b(0, Math.max(v().f7153b, k().f7153b), 0, 0);
                }
                return h0.e.b(0, k().f7153b, 0, 0);
            }
            if (i10 == 2) {
                if (z10) {
                    h0.e v10 = v();
                    h0.e i12 = i();
                    return h0.e.b(Math.max(v10.f7152a, i12.f7152a), 0, Math.max(v10.f7154c, i12.f7154c), Math.max(v10.f7155d, i12.f7155d));
                }
                h0.e k10 = k();
                m0 m0Var = this.f12392f;
                h10 = m0Var != null ? m0Var.h() : null;
                int i13 = k10.f7155d;
                if (h10 != null) {
                    i13 = Math.min(i13, h10.f7155d);
                }
                return h0.e.b(k10.f7152a, 0, k10.f7154c, i13);
            }
            if (i10 != 8) {
                if (i10 == 16) {
                    return j();
                }
                if (i10 == 32) {
                    return h();
                }
                if (i10 == 64) {
                    return l();
                }
                if (i10 != 128) {
                    return h0.e.f7151e;
                }
                m0 m0Var2 = this.f12392f;
                if (m0Var2 != null) {
                    f10 = m0Var2.e();
                } else {
                    f10 = f();
                }
                if (f10 != null) {
                    return h0.e.b(f10.b(), f10.d(), f10.c(), f10.a());
                }
                return h0.e.f7151e;
            }
            h0.e[] eVarArr = this.f12390d;
            h10 = eVarArr != null ? eVarArr[m.d(8)] : null;
            if (h10 != null) {
                return h10;
            }
            h0.e k11 = k();
            h0.e v11 = v();
            int i14 = k11.f7155d;
            if (i14 > v11.f7155d) {
                return h0.e.b(0, 0, 0, i14);
            }
            h0.e eVar = this.f12393g;
            if (eVar != null && !eVar.equals(h0.e.f7151e) && (i11 = this.f12393g.f7155d) > v11.f7155d) {
                return h0.e.b(0, 0, 0, i11);
            }
            return h0.e.f7151e;
        }

        public g(m0 m0Var, g gVar) {
            this(m0Var, new WindowInsets(gVar.f12389c));
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class j extends i {

        /* renamed from: n, reason: collision with root package name */
        public h0.e f12395n;

        /* renamed from: o, reason: collision with root package name */
        public h0.e f12396o;

        /* renamed from: p, reason: collision with root package name */
        public h0.e f12397p;

        public j(m0 m0Var, WindowInsets windowInsets) {
            super(m0Var, windowInsets);
            this.f12395n = null;
            this.f12396o = null;
            this.f12397p = null;
        }

        @Override // q0.m0.l
        public h0.e h() {
            if (this.f12396o == null) {
                this.f12396o = h0.e.e(this.f12389c.getMandatorySystemGestureInsets());
            }
            return this.f12396o;
        }

        @Override // q0.m0.l
        public h0.e j() {
            if (this.f12395n == null) {
                this.f12395n = h0.e.e(this.f12389c.getSystemGestureInsets());
            }
            return this.f12395n;
        }

        @Override // q0.m0.l
        public h0.e l() {
            if (this.f12397p == null) {
                this.f12397p = h0.e.e(this.f12389c.getTappableElementInsets());
            }
            return this.f12397p;
        }

        @Override // q0.m0.g, q0.m0.l
        public m0 m(int i10, int i11, int i12, int i13) {
            return m0.w(this.f12389c.inset(i10, i11, i12, i13));
        }

        @Override // q0.m0.h, q0.m0.l
        public void s(h0.e eVar) {
        }

        public j(m0 m0Var, j jVar) {
            super(m0Var, jVar);
            this.f12395n = null;
            this.f12396o = null;
            this.f12397p = null;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final f f12374a;

        public b() {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                this.f12374a = new e();
                return;
            }
            if (i10 >= 29) {
                this.f12374a = new d();
            } else if (i10 >= 20) {
                this.f12374a = new c();
            } else {
                this.f12374a = new f();
            }
        }

        public m0 a() {
            return this.f12374a.b();
        }

        public b b(int i10, h0.e eVar) {
            this.f12374a.c(i10, eVar);
            return this;
        }

        @Deprecated
        public b c(h0.e eVar) {
            this.f12374a.e(eVar);
            return this;
        }

        @Deprecated
        public b d(h0.e eVar) {
            this.f12374a.g(eVar);
            return this;
        }

        public b(m0 m0Var) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                this.f12374a = new e(m0Var);
                return;
            }
            if (i10 >= 29) {
                this.f12374a = new d(m0Var);
            } else if (i10 >= 20) {
                this.f12374a = new c(m0Var);
            } else {
                this.f12374a = new f(m0Var);
            }
        }
    }

    public m0(m0 m0Var) {
        if (m0Var != null) {
            l lVar = m0Var.f12369a;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30 && (lVar instanceof k)) {
                this.f12369a = new k(this, (k) lVar);
            } else if (i10 >= 29 && (lVar instanceof j)) {
                this.f12369a = new j(this, (j) lVar);
            } else if (i10 >= 28 && (lVar instanceof i)) {
                this.f12369a = new i(this, (i) lVar);
            } else if (i10 >= 21 && (lVar instanceof h)) {
                this.f12369a = new h(this, (h) lVar);
            } else if (i10 >= 20 && (lVar instanceof g)) {
                this.f12369a = new g(this, (g) lVar);
            } else {
                this.f12369a = new l(this);
            }
            lVar.e(this);
            return;
        }
        this.f12369a = new l(this);
    }
}
