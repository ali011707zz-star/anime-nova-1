package x1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: Fade.java */
/* loaded from: classes.dex */
public class d extends l0 {

    /* compiled from: Fade.java */
    /* loaded from: classes.dex */
    public class a extends p {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f15723a;

        public a(View view) {
            this.f15723a = view;
        }

        @Override // x1.o.g
        public void onTransitionEnd(o oVar) {
            e0.g(this.f15723a, 1.0f);
            e0.a(this.f15723a);
            oVar.removeListener(this);
        }
    }

    /* compiled from: Fade.java */
    /* loaded from: classes.dex */
    public static class b extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final View f15725a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f15726b = false;

        public b(View view) {
            this.f15725a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e0.g(this.f15725a, 1.0f);
            if (this.f15726b) {
                this.f15725a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (q0.b0.T(this.f15725a) && this.f15725a.getLayerType() == 0) {
                this.f15726b = true;
                this.f15725a.setLayerType(2, null);
            }
        }
    }

    public d(int i10) {
        setMode(i10);
    }

    public static float b(u uVar, float f10) {
        Float f11;
        return (uVar == null || (f11 = (Float) uVar.f15824a.get("android:fade:transitionAlpha")) == null) ? f10 : f11.floatValue();
    }

    public final Animator a(View view, float f10, float f11) {
        if (f10 == f11) {
            return null;
        }
        e0.g(view, f10);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, e0.f15742b, f11);
        ofFloat.addListener(new b(view));
        addListener(new a(view));
        return ofFloat;
    }

    @Override // x1.l0, x1.o
    public void captureStartValues(u uVar) {
        super.captureStartValues(uVar);
        uVar.f15824a.put("android:fade:transitionAlpha", Float.valueOf(e0.c(uVar.f15825b)));
    }

    @Override // x1.l0
    public Animator onAppear(ViewGroup viewGroup, View view, u uVar, u uVar2) {
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float b10 = b(uVar, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        if (b10 != 1.0f) {
            f10 = b10;
        }
        return a(view, f10, 1.0f);
    }

    @Override // x1.l0
    public Animator onDisappear(ViewGroup viewGroup, View view, u uVar, u uVar2) {
        e0.e(view);
        return a(view, b(uVar, 1.0f), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }
}
