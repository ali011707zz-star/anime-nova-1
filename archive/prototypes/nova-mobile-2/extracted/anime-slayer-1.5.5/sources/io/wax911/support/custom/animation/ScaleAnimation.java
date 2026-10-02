package io.wax911.support.custom.animation;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.LinearInterpolator;
import io.wax911.support.base.animation.SupportAnimation;
import jc.l;

/* compiled from: ScaleAnimation.kt */
/* loaded from: classes.dex */
public final class ScaleAnimation implements SupportAnimation {
    private final float FROM;
    private final float TO;
    private final LinearInterpolator interpolator;

    public ScaleAnimation() {
        this.interpolator = new LinearInterpolator();
        this.FROM = 0.85f;
        this.TO = 1.0f;
    }

    @Override // io.wax911.support.base.animation.SupportAnimation
    public int getAnimationDuration() {
        return 250;
    }

    @Override // io.wax911.support.base.animation.SupportAnimation
    public Animator[] getAnimators(View view) {
        l.f(view, "view");
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", this.FROM, this.TO);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", this.FROM, this.TO);
        l.e(ofFloat, "scaleX");
        l.e(ofFloat2, "scaleY");
        return new Animator[]{ofFloat, ofFloat2};
    }

    @Override // io.wax911.support.base.animation.SupportAnimation
    public LinearInterpolator getInterpolator() {
        return this.interpolator;
    }

    public ScaleAnimation(float f10, float f11) {
        this.interpolator = new LinearInterpolator();
        this.FROM = f10;
        this.TO = f11;
    }
}
