package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import x1.u;

/* loaded from: classes.dex */
public final class MaterialSharedAxis extends MaterialVisibility<VisibilityAnimatorProvider> {
    private static final int DEFAULT_THEMED_DURATION_ATTR = R.attr.motionDurationLong1;
    private static final int DEFAULT_THEMED_EASING_ATTR = R.attr.motionEasingStandard;
    public static final int X = 0;
    public static final int Y = 1;
    public static final int Z = 2;
    private final int axis;
    private final boolean forward;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Axis {
    }

    public MaterialSharedAxis(int i10, boolean z10) {
        super(createPrimaryAnimatorProvider(i10, z10), createSecondaryAnimatorProvider());
        this.axis = i10;
        this.forward = z10;
    }

    private static VisibilityAnimatorProvider createPrimaryAnimatorProvider(int i10, boolean z10) {
        if (i10 == 0) {
            return new SlideDistanceProvider(z10 ? 8388613 : 8388611);
        }
        if (i10 == 1) {
            return new SlideDistanceProvider(z10 ? 80 : 48);
        }
        if (i10 == 2) {
            return new ScaleProvider(z10);
        }
        throw new IllegalArgumentException("Invalid axis: " + i10);
    }

    private static VisibilityAnimatorProvider createSecondaryAnimatorProvider() {
        return new FadeThroughProvider();
    }

    @Override // com.google.android.material.transition.MaterialVisibility
    public /* bridge */ /* synthetic */ void addAdditionalAnimatorProvider(VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.addAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.MaterialVisibility
    public /* bridge */ /* synthetic */ void clearAdditionalAnimatorProvider() {
        super.clearAdditionalAnimatorProvider();
    }

    public int getAxis() {
        return this.axis;
    }

    @Override // com.google.android.material.transition.MaterialVisibility
    public int getDurationThemeAttrResId(boolean z10) {
        return DEFAULT_THEMED_DURATION_ATTR;
    }

    @Override // com.google.android.material.transition.MaterialVisibility
    public int getEasingThemeAttrResId(boolean z10) {
        return DEFAULT_THEMED_EASING_ATTR;
    }

    @Override // com.google.android.material.transition.MaterialVisibility
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getPrimaryAnimatorProvider() {
        return super.getPrimaryAnimatorProvider();
    }

    @Override // com.google.android.material.transition.MaterialVisibility
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return super.getSecondaryAnimatorProvider();
    }

    public boolean isForward() {
        return this.forward;
    }

    @Override // com.google.android.material.transition.MaterialVisibility, x1.l0
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, u uVar, u uVar2) {
        return super.onAppear(viewGroup, view, uVar, uVar2);
    }

    @Override // com.google.android.material.transition.MaterialVisibility, x1.l0
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, u uVar, u uVar2) {
        return super.onDisappear(viewGroup, view, uVar, uVar2);
    }

    @Override // com.google.android.material.transition.MaterialVisibility
    public /* bridge */ /* synthetic */ boolean removeAdditionalAnimatorProvider(VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.removeAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.MaterialVisibility
    public /* bridge */ /* synthetic */ void setSecondaryAnimatorProvider(VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.setSecondaryAnimatorProvider(visibilityAnimatorProvider);
    }
}
