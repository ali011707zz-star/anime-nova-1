package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import x1.l0;
import x1.u;

/* loaded from: classes.dex */
public final class Hold extends l0 {
    @Override // x1.l0
    public Animator onAppear(ViewGroup viewGroup, View view, u uVar, u uVar2) {
        return ValueAnimator.ofFloat(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    @Override // x1.l0
    public Animator onDisappear(ViewGroup viewGroup, View view, u uVar, u uVar2) {
        return ValueAnimator.ofFloat(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }
}
