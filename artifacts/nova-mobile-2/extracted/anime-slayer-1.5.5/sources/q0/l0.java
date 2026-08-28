package q0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import q0.m0;

/* compiled from: WindowInsetsAnimationCompat.java */
/* loaded from: classes.dex */
public final class l0 {

    /* renamed from: a, reason: collision with root package name */
    public e f12338a;

    /* compiled from: WindowInsetsAnimationCompat.java */
    /* loaded from: classes.dex */
    public static abstract class b {

        /* renamed from: a, reason: collision with root package name */
        public WindowInsets f12341a;

        /* renamed from: b, reason: collision with root package name */
        public final int f12342b;

        public b(int i10) {
            this.f12342b = i10;
        }

        public final int a() {
            return this.f12342b;
        }

        public abstract void b(l0 l0Var);

        public abstract void c(l0 l0Var);

        public abstract m0 d(m0 m0Var, List<l0> list);

        public a e(l0 l0Var, a aVar) {
            return aVar;
        }
    }

    /* compiled from: WindowInsetsAnimationCompat.java */
    /* loaded from: classes.dex */
    public static class c extends e {

        /* compiled from: WindowInsetsAnimationCompat.java */
        /* loaded from: classes.dex */
        public static class a implements View.OnApplyWindowInsetsListener {

            /* renamed from: a, reason: collision with root package name */
            public final b f12343a;

            /* renamed from: b, reason: collision with root package name */
            public m0 f12344b;

            /* compiled from: WindowInsetsAnimationCompat.java */
            /* renamed from: q0.l0$c$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public class C0304a implements ValueAnimator.AnimatorUpdateListener {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ l0 f12345a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ m0 f12346b;

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ m0 f12347c;

                /* renamed from: d, reason: collision with root package name */
                public final /* synthetic */ int f12348d;

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ View f12349e;

                public C0304a(l0 l0Var, m0 m0Var, m0 m0Var2, int i10, View view) {
                    this.f12345a = l0Var;
                    this.f12346b = m0Var;
                    this.f12347c = m0Var2;
                    this.f12348d = i10;
                    this.f12349e = view;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f12345a.e(valueAnimator.getAnimatedFraction());
                    c.j(this.f12349e, c.n(this.f12346b, this.f12347c, this.f12345a.b(), this.f12348d), Collections.singletonList(this.f12345a));
                }
            }

            /* compiled from: WindowInsetsAnimationCompat.java */
            /* loaded from: classes.dex */
            public class b extends AnimatorListenerAdapter {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ l0 f12351a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ View f12352b;

                public b(l0 l0Var, View view) {
                    this.f12351a = l0Var;
                    this.f12352b = view;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    this.f12351a.e(1.0f);
                    c.h(this.f12352b, this.f12351a);
                }
            }

            /* compiled from: WindowInsetsAnimationCompat.java */
            /* renamed from: q0.l0$c$a$c, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public class RunnableC0305c implements Runnable {

                /* renamed from: f, reason: collision with root package name */
                public final /* synthetic */ View f12354f;

                /* renamed from: g, reason: collision with root package name */
                public final /* synthetic */ l0 f12355g;

                /* renamed from: h, reason: collision with root package name */
                public final /* synthetic */ a f12356h;

                /* renamed from: i, reason: collision with root package name */
                public final /* synthetic */ ValueAnimator f12357i;

                public RunnableC0305c(View view, l0 l0Var, a aVar, ValueAnimator valueAnimator) {
                    this.f12354f = view;
                    this.f12355g = l0Var;
                    this.f12356h = aVar;
                    this.f12357i = valueAnimator;
                }

                @Override // java.lang.Runnable
                public void run() {
                    c.k(this.f12354f, this.f12355g, this.f12356h);
                    this.f12357i.start();
                }
            }

            public a(View view, b bVar) {
                this.f12343a = bVar;
                m0 L = b0.L(view);
                this.f12344b = L != null ? new m0.b(L).a() : null;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                if (!view.isLaidOut()) {
                    this.f12344b = m0.x(windowInsets, view);
                    return c.l(view, windowInsets);
                }
                m0 x10 = m0.x(windowInsets, view);
                if (this.f12344b == null) {
                    this.f12344b = b0.L(view);
                }
                if (this.f12344b == null) {
                    this.f12344b = x10;
                    return c.l(view, windowInsets);
                }
                b m10 = c.m(view);
                if (m10 != null && p0.c.a(m10.f12341a, windowInsets)) {
                    return c.l(view, windowInsets);
                }
                int e10 = c.e(x10, this.f12344b);
                if (e10 == 0) {
                    return c.l(view, windowInsets);
                }
                m0 m0Var = this.f12344b;
                l0 l0Var = new l0(e10, new DecelerateInterpolator(), 160L);
                l0Var.e(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                ValueAnimator duration = ValueAnimator.ofFloat(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f).setDuration(l0Var.a());
                a f10 = c.f(x10, m0Var, e10);
                c.i(view, l0Var, windowInsets, false);
                duration.addUpdateListener(new C0304a(l0Var, x10, m0Var, e10, view));
                duration.addListener(new b(l0Var, view));
                x.a(view, new RunnableC0305c(view, l0Var, f10, duration));
                this.f12344b = x10;
                return c.l(view, windowInsets);
            }
        }

        public c(int i10, Interpolator interpolator, long j10) {
            super(i10, interpolator, j10);
        }

        @SuppressLint({"WrongConstant"})
        public static int e(m0 m0Var, m0 m0Var2) {
            int i10 = 0;
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if (!m0Var.f(i11).equals(m0Var2.f(i11))) {
                    i10 |= i11;
                }
            }
            return i10;
        }

        public static a f(m0 m0Var, m0 m0Var2, int i10) {
            h0.e f10 = m0Var.f(i10);
            h0.e f11 = m0Var2.f(i10);
            return new a(h0.e.b(Math.min(f10.f7152a, f11.f7152a), Math.min(f10.f7153b, f11.f7153b), Math.min(f10.f7154c, f11.f7154c), Math.min(f10.f7155d, f11.f7155d)), h0.e.b(Math.max(f10.f7152a, f11.f7152a), Math.max(f10.f7153b, f11.f7153b), Math.max(f10.f7154c, f11.f7154c), Math.max(f10.f7155d, f11.f7155d)));
        }

        public static View.OnApplyWindowInsetsListener g(View view, b bVar) {
            return new a(view, bVar);
        }

        public static void h(View view, l0 l0Var) {
            b m10 = m(view);
            if (m10 != null) {
                m10.b(l0Var);
                if (m10.a() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    h(viewGroup.getChildAt(i10), l0Var);
                }
            }
        }

        public static void i(View view, l0 l0Var, WindowInsets windowInsets, boolean z10) {
            b m10 = m(view);
            if (m10 != null) {
                m10.f12341a = windowInsets;
                if (!z10) {
                    m10.c(l0Var);
                    z10 = m10.a() == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    i(viewGroup.getChildAt(i10), l0Var, windowInsets, z10);
                }
            }
        }

        public static void j(View view, m0 m0Var, List<l0> list) {
            b m10 = m(view);
            if (m10 != null) {
                m0Var = m10.d(m0Var, list);
                if (m10.a() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    j(viewGroup.getChildAt(i10), m0Var, list);
                }
            }
        }

        public static void k(View view, l0 l0Var, a aVar) {
            b m10 = m(view);
            if (m10 != null) {
                m10.e(l0Var, aVar);
                if (m10.a() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    k(viewGroup.getChildAt(i10), l0Var, aVar);
                }
            }
        }

        public static WindowInsets l(View view, WindowInsets windowInsets) {
            return view.getTag(d0.c.L) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }

        public static b m(View view) {
            Object tag = view.getTag(d0.c.T);
            if (tag instanceof a) {
                return ((a) tag).f12343a;
            }
            return null;
        }

        @SuppressLint({"WrongConstant"})
        public static m0 n(m0 m0Var, m0 m0Var2, float f10, int i10) {
            m0.b bVar = new m0.b(m0Var);
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) == 0) {
                    bVar.b(i11, m0Var.f(i11));
                } else {
                    h0.e f11 = m0Var.f(i11);
                    h0.e f12 = m0Var2.f(i11);
                    float f13 = 1.0f - f10;
                    double d10 = (f11.f7152a - f12.f7152a) * f13;
                    Double.isNaN(d10);
                    int i12 = (int) (d10 + 0.5d);
                    double d11 = (f11.f7153b - f12.f7153b) * f13;
                    Double.isNaN(d11);
                    double d12 = (f11.f7154c - f12.f7154c) * f13;
                    Double.isNaN(d12);
                    int i13 = (int) (d12 + 0.5d);
                    double d13 = (f11.f7155d - f12.f7155d) * f13;
                    Double.isNaN(d13);
                    bVar.b(i11, m0.o(f11, i12, (int) (d11 + 0.5d), i13, (int) (d13 + 0.5d)));
                }
            }
            return bVar.a();
        }

        public static void o(View view, b bVar) {
            Object tag = view.getTag(d0.c.L);
            if (bVar == null) {
                view.setTag(d0.c.T, null);
                if (tag == null) {
                    view.setOnApplyWindowInsetsListener(null);
                    return;
                }
                return;
            }
            View.OnApplyWindowInsetsListener g10 = g(view, bVar);
            view.setTag(d0.c.T, g10);
            if (tag == null) {
                view.setOnApplyWindowInsetsListener(g10);
            }
        }
    }

    /* compiled from: WindowInsetsAnimationCompat.java */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public final int f12364a;

        /* renamed from: b, reason: collision with root package name */
        public float f12365b;

        /* renamed from: c, reason: collision with root package name */
        public final Interpolator f12366c;

        /* renamed from: d, reason: collision with root package name */
        public final long f12367d;

        public e(int i10, Interpolator interpolator, long j10) {
            this.f12364a = i10;
            this.f12366c = interpolator;
            this.f12367d = j10;
        }

        public long a() {
            return this.f12367d;
        }

        public float b() {
            Interpolator interpolator = this.f12366c;
            if (interpolator != null) {
                return interpolator.getInterpolation(this.f12365b);
            }
            return this.f12365b;
        }

        public int c() {
            return this.f12364a;
        }

        public void d(float f10) {
            this.f12365b = f10;
        }
    }

    public l0(int i10, Interpolator interpolator, long j10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 30) {
            this.f12338a = new d(i10, interpolator, j10);
        } else if (i11 >= 21) {
            this.f12338a = new c(i10, interpolator, j10);
        } else {
            this.f12338a = new e(0, interpolator, j10);
        }
    }

    public static void d(View view, b bVar) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            d.h(view, bVar);
        } else if (i10 >= 21) {
            c.o(view, bVar);
        }
    }

    public static l0 f(WindowInsetsAnimation windowInsetsAnimation) {
        return new l0(windowInsetsAnimation);
    }

    public long a() {
        return this.f12338a.a();
    }

    public float b() {
        return this.f12338a.b();
    }

    public int c() {
        return this.f12338a.c();
    }

    public void e(float f10) {
        this.f12338a.d(f10);
    }

    /* compiled from: WindowInsetsAnimationCompat.java */
    /* loaded from: classes.dex */
    public static class d extends e {

        /* renamed from: e, reason: collision with root package name */
        public final WindowInsetsAnimation f12359e;

        /* compiled from: WindowInsetsAnimationCompat.java */
        /* loaded from: classes.dex */
        public static class a extends WindowInsetsAnimation.Callback {

            /* renamed from: a, reason: collision with root package name */
            public final b f12360a;

            /* renamed from: b, reason: collision with root package name */
            public List<l0> f12361b;

            /* renamed from: c, reason: collision with root package name */
            public ArrayList<l0> f12362c;

            /* renamed from: d, reason: collision with root package name */
            public final HashMap<WindowInsetsAnimation, l0> f12363d;

            public a(b bVar) {
                super(bVar.a());
                this.f12363d = new HashMap<>();
                this.f12360a = bVar;
            }

            public final l0 a(WindowInsetsAnimation windowInsetsAnimation) {
                l0 l0Var = this.f12363d.get(windowInsetsAnimation);
                if (l0Var != null) {
                    return l0Var;
                }
                l0 f10 = l0.f(windowInsetsAnimation);
                this.f12363d.put(windowInsetsAnimation, f10);
                return f10;
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                this.f12360a.b(a(windowInsetsAnimation));
                this.f12363d.remove(windowInsetsAnimation);
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                this.f12360a.c(a(windowInsetsAnimation));
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public WindowInsets onProgress(WindowInsets windowInsets, List<WindowInsetsAnimation> list) {
                ArrayList<l0> arrayList = this.f12362c;
                if (arrayList == null) {
                    ArrayList<l0> arrayList2 = new ArrayList<>(list.size());
                    this.f12362c = arrayList2;
                    this.f12361b = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimation = list.get(size);
                    l0 a10 = a(windowInsetsAnimation);
                    a10.e(windowInsetsAnimation.getFraction());
                    this.f12362c.add(a10);
                }
                return this.f12360a.d(m0.w(windowInsets), this.f12361b).v();
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                return this.f12360a.e(a(windowInsetsAnimation), a.d(bounds)).c();
            }
        }

        public d(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.f12359e = windowInsetsAnimation;
        }

        public static WindowInsetsAnimation.Bounds e(a aVar) {
            return new WindowInsetsAnimation.Bounds(aVar.a().f(), aVar.b().f());
        }

        public static h0.e f(WindowInsetsAnimation.Bounds bounds) {
            return h0.e.e(bounds.getUpperBound());
        }

        public static h0.e g(WindowInsetsAnimation.Bounds bounds) {
            return h0.e.e(bounds.getLowerBound());
        }

        public static void h(View view, b bVar) {
            view.setWindowInsetsAnimationCallback(bVar != null ? new a(bVar) : null);
        }

        @Override // q0.l0.e
        public long a() {
            return this.f12359e.getDurationMillis();
        }

        @Override // q0.l0.e
        public float b() {
            return this.f12359e.getInterpolatedFraction();
        }

        @Override // q0.l0.e
        public int c() {
            return this.f12359e.getTypeMask();
        }

        @Override // q0.l0.e
        public void d(float f10) {
            this.f12359e.setFraction(f10);
        }

        public d(int i10, Interpolator interpolator, long j10) {
            this(new WindowInsetsAnimation(i10, interpolator, j10));
        }
    }

    /* compiled from: WindowInsetsAnimationCompat.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final h0.e f12339a;

        /* renamed from: b, reason: collision with root package name */
        public final h0.e f12340b;

        public a(h0.e eVar, h0.e eVar2) {
            this.f12339a = eVar;
            this.f12340b = eVar2;
        }

        public static a d(WindowInsetsAnimation.Bounds bounds) {
            return new a(bounds);
        }

        public h0.e a() {
            return this.f12339a;
        }

        public h0.e b() {
            return this.f12340b;
        }

        public WindowInsetsAnimation.Bounds c() {
            return d.e(this);
        }

        public String toString() {
            return "Bounds{lower=" + this.f12339a + " upper=" + this.f12340b + "}";
        }

        public a(WindowInsetsAnimation.Bounds bounds) {
            this.f12339a = d.g(bounds);
            this.f12340b = d.f(bounds);
        }
    }

    public l0(WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        if (Build.VERSION.SDK_INT >= 30) {
            this.f12338a = new d(windowInsetsAnimation);
        }
    }
}
