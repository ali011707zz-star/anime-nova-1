package com.google.android.material.elevation;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.google.android.material.resources.MaterialAttributes;
import h0.d;

/* loaded from: classes.dex */
public class ElevationOverlayProvider {
    private static final float FORMULA_MULTIPLIER = 4.5f;
    private static final float FORMULA_OFFSET = 2.0f;
    private final int colorSurface;
    private final float displayDensity;
    private final int elevationOverlayColor;
    private final boolean elevationOverlayEnabled;

    public ElevationOverlayProvider(Context context) {
        this.elevationOverlayEnabled = MaterialAttributes.resolveBoolean(context, R.attr.elevationOverlayEnabled, false);
        this.elevationOverlayColor = MaterialColors.getColor(context, R.attr.elevationOverlayColor, 0);
        this.colorSurface = MaterialColors.getColor(context, R.attr.colorSurface, 0);
        this.displayDensity = context.getResources().getDisplayMetrics().density;
    }

    private boolean isThemeSurfaceColor(int i10) {
        return d.j(i10, BaseProgressIndicator.MAX_ALPHA) == this.colorSurface;
    }

    public int calculateOverlayAlpha(float f10) {
        return Math.round(calculateOverlayAlphaFraction(f10) * 255.0f);
    }

    public float calculateOverlayAlphaFraction(float f10) {
        return (this.displayDensity <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : Math.min(((((float) Math.log1p(f10 / r0)) * FORMULA_MULTIPLIER) + FORMULA_OFFSET) / 100.0f, 1.0f);
    }

    public int compositeOverlay(int i10, float f10, View view) {
        return compositeOverlay(i10, f10 + getParentAbsoluteElevation(view));
    }

    public int compositeOverlayIfNeeded(int i10, float f10, View view) {
        return compositeOverlayIfNeeded(i10, f10 + getParentAbsoluteElevation(view));
    }

    public int compositeOverlayWithThemeSurfaceColorIfNeeded(float f10, View view) {
        return compositeOverlayWithThemeSurfaceColorIfNeeded(f10 + getParentAbsoluteElevation(view));
    }

    public float getParentAbsoluteElevation(View view) {
        return ViewUtils.getParentAbsoluteElevation(view);
    }

    public int getThemeElevationOverlayColor() {
        return this.elevationOverlayColor;
    }

    public int getThemeSurfaceColor() {
        return this.colorSurface;
    }

    public boolean isThemeElevationOverlayEnabled() {
        return this.elevationOverlayEnabled;
    }

    public int compositeOverlay(int i10, float f10) {
        float calculateOverlayAlphaFraction = calculateOverlayAlphaFraction(f10);
        return d.j(MaterialColors.layer(d.j(i10, BaseProgressIndicator.MAX_ALPHA), this.elevationOverlayColor, calculateOverlayAlphaFraction), Color.alpha(i10));
    }

    public int compositeOverlayIfNeeded(int i10, float f10) {
        return (this.elevationOverlayEnabled && isThemeSurfaceColor(i10)) ? compositeOverlay(i10, f10) : i10;
    }

    public int compositeOverlayWithThemeSurfaceColorIfNeeded(float f10) {
        return compositeOverlayIfNeeded(this.colorSurface, f10);
    }
}
