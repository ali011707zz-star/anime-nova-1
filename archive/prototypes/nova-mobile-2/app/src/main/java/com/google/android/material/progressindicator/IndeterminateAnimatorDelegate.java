package com.google.android.material.progressindicator;

import android.animation.Animator;
import y1.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class IndeterminateAnimatorDelegate<T extends Animator> {
    public IndeterminateDrawable drawable;
    public final int[] segmentColors;
    public final float[] segmentPositions;

    public IndeterminateAnimatorDelegate(int i10) {
        this.segmentPositions = new float[i10 * 2];
        this.segmentColors = new int[i10];
    }

    public abstract void cancelAnimatorImmediately();

    public float getFractionInRange(int i10, int i11, int i12) {
        return (i10 - i11) / i12;
    }

    public abstract void invalidateSpecValues();

    public abstract void registerAnimatorsCompleteCallback(b bVar);

    public void registerDrawable(IndeterminateDrawable indeterminateDrawable) {
        this.drawable = indeterminateDrawable;
    }

    public abstract void requestCancelAnimatorAfterCurrentCycle();

    public abstract void startAnimator();

    public abstract void unregisterAnimatorsCompleteCallback();
}
