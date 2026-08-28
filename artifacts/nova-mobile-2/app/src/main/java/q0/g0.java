package q0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* compiled from: ViewPropertyAnimatorCompat.java */
/* loaded from: classes.dex */
public final class g0 {

    /* renamed from: a, reason: collision with root package name */
    public WeakReference<View> f12316a;

    /* renamed from: b, reason: collision with root package name */
    public Runnable f12317b = null;

    /* renamed from: c, reason: collision with root package name */
    public Runnable f12318c = null;

    /* renamed from: d, reason: collision with root package name */
    public int f12319d = -1;

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ h0 f12320a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f12321b;

        public a(h0 h0Var, View view) {
            this.f12320a = h0Var;
            this.f12321b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f12320a.a(this.f12321b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f12320a.b(this.f12321b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f12320a.c(this.f12321b);
        }
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ j0 f12323a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f12324b;

        public b(j0 j0Var, View view) {
            this.f12323a = j0Var;
            this.f12324b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f12323a.a(this.f12324b);
        }
    }

    /* compiled from: ViewPropertyAnimatorCompat.java */
    /* loaded from: classes.dex */
    public static class c implements h0 {

        /* renamed from: a, reason: collision with root package name */
        public g0 f12326a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f12327b;

        public c(g0 g0Var) {
            this.f12326a = g0Var;
        }

        @Override // q0.h0
        public void a(View view) {
            Object tag = view.getTag(2113929216);
            h0 h0Var = tag instanceof h0 ? (h0) tag : null;
            if (h0Var != null) {
                h0Var.a(view);
            }
        }

        @Override // q0.h0
        @SuppressLint({"WrongConstant"})
        public void b(View view) {
            int i10 = this.f12326a.f12319d;
            if (i10 > -1) {
                view.setLayerType(i10, null);
                this.f12326a.f12319d = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f12327b) {
                g0 g0Var = this.f12326a;
                Runnable runnable = g0Var.f12318c;
                if (runnable != null) {
                    g0Var.f12318c = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                h0 h0Var = tag instanceof h0 ? (h0) tag : null;
                if (h0Var != null) {
                    h0Var.b(view);
                }
                this.f12327b = true;
            }
        }

        @Override // q0.h0
        public void c(View view) {
            this.f12327b = false;
            if (this.f12326a.f12319d > -1) {
                view.setLayerType(2, null);
            }
            g0 g0Var = this.f12326a;
            Runnable runnable = g0Var.f12317b;
            if (runnable != null) {
                g0Var.f12317b = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            h0 h0Var = tag instanceof h0 ? (h0) tag : null;
            if (h0Var != null) {
                h0Var.c(view);
            }
        }
    }

    public g0(View view) {
        this.f12316a = new WeakReference<>(view);
    }

    public g0 a(float f10) {
        View view = this.f12316a.get();
        if (view != null) {
            view.animate().alpha(f10);
        }
        return this;
    }

    public void b() {
        View view = this.f12316a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long c() {
        View view = this.f12316a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public g0 d(long j10) {
        View view = this.f12316a.get();
        if (view != null) {
            view.animate().setDuration(j10);
        }
        return this;
    }

    public g0 e(Interpolator interpolator) {
        View view = this.f12316a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public g0 f(h0 h0Var) {
        View view = this.f12316a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                g(view, h0Var);
            } else {
                view.setTag(2113929216, h0Var);
                g(view, new c(this));
            }
        }
        return this;
    }

    public final void g(View view, h0 h0Var) {
        if (h0Var != null) {
            view.animate().setListener(new a(h0Var, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public g0 h(long j10) {
        View view = this.f12316a.get();
        if (view != null) {
            view.animate().setStartDelay(j10);
        }
        return this;
    }

    public g0 i(j0 j0Var) {
        View view = this.f12316a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            view.animate().setUpdateListener(j0Var != null ? new b(j0Var, view) : null);
        }
        return this;
    }

    public void j() {
        View view = this.f12316a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public g0 k(float f10) {
        View view = this.f12316a.get();
        if (view != null) {
            view.animate().translationY(f10);
        }
        return this;
    }
}
