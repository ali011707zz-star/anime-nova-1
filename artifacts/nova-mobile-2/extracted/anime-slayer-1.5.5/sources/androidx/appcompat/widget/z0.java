package androidx.appcompat.widget;

import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import com.google.android.gms.common.api.Api;

/* compiled from: TooltipCompatHandler.java */
/* loaded from: classes.dex */
public class z0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: o, reason: collision with root package name */
    public static z0 f1585o;

    /* renamed from: p, reason: collision with root package name */
    public static z0 f1586p;

    /* renamed from: f, reason: collision with root package name */
    public final View f1587f;

    /* renamed from: g, reason: collision with root package name */
    public final CharSequence f1588g;

    /* renamed from: h, reason: collision with root package name */
    public final int f1589h;

    /* renamed from: i, reason: collision with root package name */
    public final Runnable f1590i = new a();

    /* renamed from: j, reason: collision with root package name */
    public final Runnable f1591j = new b();

    /* renamed from: k, reason: collision with root package name */
    public int f1592k;

    /* renamed from: l, reason: collision with root package name */
    public int f1593l;

    /* renamed from: m, reason: collision with root package name */
    public a1 f1594m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1595n;

    /* compiled from: TooltipCompatHandler.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z0.this.g(false);
        }
    }

    /* compiled from: TooltipCompatHandler.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z0.this.c();
        }
    }

    public z0(View view, CharSequence charSequence) {
        this.f1587f = view;
        this.f1588g = charSequence;
        this.f1589h = q0.d0.c(ViewConfiguration.get(view.getContext()));
        b();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void e(z0 z0Var) {
        z0 z0Var2 = f1585o;
        if (z0Var2 != null) {
            z0Var2.a();
        }
        f1585o = z0Var;
        if (z0Var != null) {
            z0Var.d();
        }
    }

    public static void f(View view, CharSequence charSequence) {
        z0 z0Var = f1585o;
        if (z0Var != null && z0Var.f1587f == view) {
            e(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            z0 z0Var2 = f1586p;
            if (z0Var2 != null && z0Var2.f1587f == view) {
                z0Var2.c();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new z0(view, charSequence);
    }

    public final void a() {
        this.f1587f.removeCallbacks(this.f1590i);
    }

    public final void b() {
        this.f1592k = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f1593l = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public void c() {
        if (f1586p == this) {
            f1586p = null;
            a1 a1Var = this.f1594m;
            if (a1Var != null) {
                a1Var.c();
                this.f1594m = null;
                b();
                this.f1587f.removeOnAttachStateChangeListener(this);
            }
        }
        if (f1585o == this) {
            e(null);
        }
        this.f1587f.removeCallbacks(this.f1591j);
    }

    public final void d() {
        this.f1587f.postDelayed(this.f1590i, ViewConfiguration.getLongPressTimeout());
    }

    public void g(boolean z10) {
        long j10;
        int longPressTimeout;
        long j11;
        if (q0.b0.W(this.f1587f)) {
            e(null);
            z0 z0Var = f1586p;
            if (z0Var != null) {
                z0Var.c();
            }
            f1586p = this;
            this.f1595n = z10;
            a1 a1Var = new a1(this.f1587f.getContext());
            this.f1594m = a1Var;
            a1Var.e(this.f1587f, this.f1592k, this.f1593l, this.f1595n, this.f1588g);
            this.f1587f.addOnAttachStateChangeListener(this);
            if (this.f1595n) {
                j11 = 2500;
            } else {
                if ((q0.b0.Q(this.f1587f) & 1) == 1) {
                    j10 = 3000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                } else {
                    j10 = 15000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                }
                j11 = j10 - longPressTimeout;
            }
            this.f1587f.removeCallbacks(this.f1591j);
            this.f1587f.postDelayed(this.f1591j, j11);
        }
    }

    public final boolean h(MotionEvent motionEvent) {
        int x10 = (int) motionEvent.getX();
        int y10 = (int) motionEvent.getY();
        if (Math.abs(x10 - this.f1592k) <= this.f1589h && Math.abs(y10 - this.f1593l) <= this.f1589h) {
            return false;
        }
        this.f1592k = x10;
        this.f1593l = y10;
        return true;
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1594m != null && this.f1595n) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1587f.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                b();
                c();
            }
        } else if (this.f1587f.isEnabled() && this.f1594m == null && h(motionEvent)) {
            e(this);
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f1592k = view.getWidth() / 2;
        this.f1593l = view.getHeight() / 2;
        g(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        c();
    }
}
