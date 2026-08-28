package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.fragment.app.y;
import m0.c;

/* compiled from: FragmentAnim.java */
/* loaded from: classes.dex */
public class f {

    /* compiled from: FragmentAnim.java */
    /* loaded from: classes.dex */
    public class a implements c.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f2226a;

        public a(Fragment fragment) {
            this.f2226a = fragment;
        }

        @Override // m0.c.a
        public void onCancel() {
            if (this.f2226a.getAnimatingAway() != null) {
                View animatingAway = this.f2226a.getAnimatingAway();
                this.f2226a.setAnimatingAway(null);
                animatingAway.clearAnimation();
            }
            this.f2226a.setAnimator(null);
        }
    }

    /* compiled from: FragmentAnim.java */
    /* loaded from: classes.dex */
    public class b implements Animation.AnimationListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f2227a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Fragment f2228b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ y.g f2229c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ m0.c f2230d;

        /* compiled from: FragmentAnim.java */
        /* loaded from: classes.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f2228b.getAnimatingAway() != null) {
                    b.this.f2228b.setAnimatingAway(null);
                    b bVar = b.this;
                    bVar.f2229c.b(bVar.f2228b, bVar.f2230d);
                }
            }
        }

        public b(ViewGroup viewGroup, Fragment fragment, y.g gVar, m0.c cVar) {
            this.f2227a = viewGroup;
            this.f2228b = fragment;
            this.f2229c = gVar;
            this.f2230d = cVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f2227a.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* compiled from: FragmentAnim.java */
    /* loaded from: classes.dex */
    public class c extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f2232a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f2233b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Fragment f2234c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ y.g f2235d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ m0.c f2236e;

        public c(ViewGroup viewGroup, View view, Fragment fragment, y.g gVar, m0.c cVar) {
            this.f2232a = viewGroup;
            this.f2233b = view;
            this.f2234c = fragment;
            this.f2235d = gVar;
            this.f2236e = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2232a.endViewTransition(this.f2233b);
            Animator animator2 = this.f2234c.getAnimator();
            this.f2234c.setAnimator(null);
            if (animator2 == null || this.f2232a.indexOfChild(this.f2233b) >= 0) {
                return;
            }
            this.f2235d.b(this.f2234c, this.f2236e);
        }
    }

    public static void a(Fragment fragment, d dVar, y.g gVar) {
        View view = fragment.mView;
        ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        m0.c cVar = new m0.c();
        cVar.c(new a(fragment));
        gVar.a(fragment, cVar);
        if (dVar.f2237a != null) {
            e eVar = new e(dVar.f2237a, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            eVar.setAnimationListener(new b(viewGroup, fragment, gVar, cVar));
            fragment.mView.startAnimation(eVar);
            return;
        }
        Animator animator = dVar.f2238b;
        fragment.setAnimator(animator);
        animator.addListener(new c(viewGroup, view, fragment, gVar, cVar));
        animator.setTarget(fragment.mView);
        animator.start();
    }

    public static int b(Fragment fragment, boolean z10, boolean z11) {
        if (z11) {
            if (z10) {
                return fragment.getPopEnterAnim();
            }
            return fragment.getPopExitAnim();
        }
        if (z10) {
            return fragment.getEnterAnim();
        }
        return fragment.getExitAnim();
    }

    public static d c(Context context, Fragment fragment, boolean z10, boolean z11) {
        int nextTransition = fragment.getNextTransition();
        int b10 = b(fragment, z10, z11);
        boolean z12 = false;
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            int i10 = c1.b.f3636c;
            if (viewGroup.getTag(i10) != null) {
                fragment.mContainer.setTag(i10, null);
            }
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z10, b10);
        if (onCreateAnimation != null) {
            return new d(onCreateAnimation);
        }
        Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z10, b10);
        if (onCreateAnimator != null) {
            return new d(onCreateAnimator);
        }
        if (b10 == 0 && nextTransition != 0) {
            b10 = d(nextTransition, z10);
        }
        if (b10 != 0) {
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(b10));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, b10);
                    if (loadAnimation != null) {
                        return new d(loadAnimation);
                    }
                    z12 = true;
                } catch (Resources.NotFoundException e10) {
                    throw e10;
                } catch (RuntimeException unused) {
                }
            }
            if (!z12) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(context, b10);
                    if (loadAnimator != null) {
                        return new d(loadAnimator);
                    }
                } catch (RuntimeException e11) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(context, b10);
                        if (loadAnimation2 != null) {
                            return new d(loadAnimation2);
                        }
                    } else {
                        throw e11;
                    }
                }
            }
        }
        return null;
    }

    public static int d(int i10, boolean z10) {
        if (i10 == 4097) {
            return z10 ? c1.a.f3632e : c1.a.f3633f;
        }
        if (i10 == 4099) {
            return z10 ? c1.a.f3630c : c1.a.f3631d;
        }
        if (i10 != 8194) {
            return -1;
        }
        return z10 ? c1.a.f3628a : c1.a.f3629b;
    }

    /* compiled from: FragmentAnim.java */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final Animation f2237a;

        /* renamed from: b, reason: collision with root package name */
        public final Animator f2238b;

        public d(Animation animation) {
            this.f2237a = animation;
            this.f2238b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        public d(Animator animator) {
            this.f2237a = null;
            this.f2238b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* compiled from: FragmentAnim.java */
    /* loaded from: classes.dex */
    public static class e extends AnimationSet implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final ViewGroup f2239f;

        /* renamed from: g, reason: collision with root package name */
        public final View f2240g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f2241h;

        /* renamed from: i, reason: collision with root package name */
        public boolean f2242i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f2243j;

        public e(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f2243j = true;
            this.f2239f = viewGroup;
            this.f2240g = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j10, Transformation transformation) {
            this.f2243j = true;
            if (this.f2241h) {
                return !this.f2242i;
            }
            if (!super.getTransformation(j10, transformation)) {
                this.f2241h = true;
                q0.x.a(this.f2239f, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f2241h && this.f2243j) {
                this.f2243j = false;
                this.f2239f.post(this);
            } else {
                this.f2239f.endViewTransition(this.f2240g);
                this.f2242i = true;
            }
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j10, Transformation transformation, float f10) {
            this.f2243j = true;
            if (this.f2241h) {
                return !this.f2242i;
            }
            if (!super.getTransformation(j10, transformation, f10)) {
                this.f2241h = true;
                q0.x.a(this.f2239f, this);
            }
            return true;
        }
    }
}
