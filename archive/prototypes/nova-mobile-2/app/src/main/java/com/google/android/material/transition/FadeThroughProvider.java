package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* loaded from: classes.dex */
public final class FadeThroughProvider implements VisibilityAnimatorProvider {
    public static final float FADE_THROUGH_THRESHOLD = 0.35f;
    private float progressThreshold = 0.35f;

    private static Animator createFadeThroughAnimator(final View view, final float f10, final float f11, final float f12, final float f13, final float f14) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transition.FadeThroughProvider.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setAlpha(TransitionUtils.lerp(f10, f11, f12, f13, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transition.FadeThroughProvider.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setAlpha(f14);
            }
        });
        return ofFloat;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    public Animator createAppear(ViewGroup viewGroup, View view) {
        float alpha = view.getAlpha() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 1.0f : view.getAlpha();
        return createFadeThroughAnimator(view, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, alpha, this.progressThreshold, 1.0f, alpha);
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    public Animator createDisappear(ViewGroup viewGroup, View view) {
        float alpha = view.getAlpha() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 1.0f : view.getAlpha();
        return createFadeThroughAnimator(view, alpha, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.progressThreshold, alpha);
    }

    public float getProgressThreshold() {
        return this.progressThreshold;
    }

    public void setProgressThreshold(float f10) {
        this.progressThreshold = f10;
    }
}
