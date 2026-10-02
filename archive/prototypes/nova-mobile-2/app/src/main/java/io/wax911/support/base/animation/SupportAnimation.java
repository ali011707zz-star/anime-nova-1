package io.wax911.support.base.animation;

import android.animation.Animator;
import android.view.View;
import android.view.animation.Interpolator;

/* compiled from: SupportAnimation.kt */
/* loaded from: classes.dex */
public interface SupportAnimation {
    int getAnimationDuration();

    Animator[] getAnimators(View view);

    Interpolator getInterpolator();
}
