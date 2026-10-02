package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* loaded from: classes.dex */
public final class Hold extends Visibility {
    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return ValueAnimator.ofFloat(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    @Override // android.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return ValueAnimator.ofFloat(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }
}
