package com.google.android.material.tooltip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.MarkerEdgeTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.OffsetEdgeTreatment;
import h0.d;

/* loaded from: classes.dex */
public class TooltipDrawable extends MaterialShapeDrawable implements TextDrawableHelper.TextDrawableDelegate {
    private static final int DEFAULT_STYLE = R.style.Widget_MaterialComponents_Tooltip;
    private static final int DEFAULT_THEME_ATTR = R.attr.tooltipStyle;
    private int arrowSize;
    private final View.OnLayoutChangeListener attachedViewLayoutChangeListener;
    private final Context context;
    private final Rect displayFrame;
    private final Paint.FontMetrics fontMetrics;
    private float labelOpacity;
    private int layoutMargin;
    private int locationOnScreenX;
    private int minHeight;
    private int minWidth;
    private int padding;
    private CharSequence text;
    private final TextDrawableHelper textDrawableHelper;
    private final float tooltipPivotX;
    private float tooltipPivotY;
    private float tooltipScaleX;
    private float tooltipScaleY;

    private TooltipDrawable(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.fontMetrics = new Paint.FontMetrics();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.textDrawableHelper = textDrawableHelper;
        this.attachedViewLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.google.android.material.tooltip.TooltipDrawable.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                TooltipDrawable.this.updateLocationOnScreen(view);
            }
        };
        this.displayFrame = new Rect();
        this.tooltipScaleX = 1.0f;
        this.tooltipScaleY = 1.0f;
        this.tooltipPivotX = 0.5f;
        this.tooltipPivotY = 0.5f;
        this.labelOpacity = 1.0f;
        this.context = context;
        textDrawableHelper.getTextPaint().density = context.getResources().getDisplayMetrics().density;
        textDrawableHelper.getTextPaint().setTextAlign(Paint.Align.CENTER);
    }

    private float calculatePointerOffset() {
        int i10;
        if (((this.displayFrame.right - getBounds().right) - this.locationOnScreenX) - this.layoutMargin < 0) {
            i10 = ((this.displayFrame.right - getBounds().right) - this.locationOnScreenX) - this.layoutMargin;
        } else {
            if (((this.displayFrame.left - getBounds().left) - this.locationOnScreenX) + this.layoutMargin <= 0) {
                return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
            i10 = ((this.displayFrame.left - getBounds().left) - this.locationOnScreenX) + this.layoutMargin;
        }
        return i10;
    }

    private float calculateTextCenterFromBaseline() {
        this.textDrawableHelper.getTextPaint().getFontMetrics(this.fontMetrics);
        Paint.FontMetrics fontMetrics = this.fontMetrics;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private float calculateTextOriginAndAlignment(Rect rect) {
        return rect.centerY() - calculateTextCenterFromBaseline();
    }

    public static TooltipDrawable create(Context context) {
        return createFromAttributes(context, null, DEFAULT_THEME_ATTR, DEFAULT_STYLE);
    }

    public static TooltipDrawable createFromAttributes(Context context, AttributeSet attributeSet, int i10, int i11) {
        TooltipDrawable tooltipDrawable = new TooltipDrawable(context, attributeSet, i10, i11);
        tooltipDrawable.loadFromAttributes(attributeSet, i10, i11);
        return tooltipDrawable;
    }

    private EdgeTreatment createMarkerEdge() {
        float f10 = -calculatePointerOffset();
        double width = getBounds().width();
        double d10 = this.arrowSize;
        double sqrt = Math.sqrt(2.0d);
        Double.isNaN(d10);
        Double.isNaN(width);
        float f11 = ((float) (width - (d10 * sqrt))) / 2.0f;
        return new OffsetEdgeTreatment(new MarkerEdgeTreatment(this.arrowSize), Math.min(Math.max(f10, -f11), f11));
    }

    private void drawText(Canvas canvas) {
        if (this.text == null) {
            return;
        }
        int calculateTextOriginAndAlignment = (int) calculateTextOriginAndAlignment(getBounds());
        if (this.textDrawableHelper.getTextAppearance() != null) {
            this.textDrawableHelper.getTextPaint().drawableState = getState();
            this.textDrawableHelper.updateTextPaintDrawState(this.context);
            this.textDrawableHelper.getTextPaint().setAlpha((int) (this.labelOpacity * 255.0f));
        }
        CharSequence charSequence = this.text;
        canvas.drawText(charSequence, 0, charSequence.length(), r0.centerX(), calculateTextOriginAndAlignment, this.textDrawableHelper.getTextPaint());
    }

    private float getTextWidth() {
        CharSequence charSequence = this.text;
        return charSequence == null ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : this.textDrawableHelper.getTextWidth(charSequence.toString());
    }

    private void loadFromAttributes(AttributeSet attributeSet, int i10, int i11) {
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(this.context, attributeSet, R.styleable.Tooltip, i10, i11, new int[0]);
        this.arrowSize = this.context.getResources().getDimensionPixelSize(R.dimen.mtrl_tooltip_arrowSize);
        setShapeAppearanceModel(getShapeAppearanceModel().toBuilder().setBottomEdge(createMarkerEdge()).build());
        setText(obtainStyledAttributes.getText(R.styleable.Tooltip_android_text));
        setTextAppearance(MaterialResources.getTextAppearance(this.context, obtainStyledAttributes, R.styleable.Tooltip_android_textAppearance));
        setFillColor(ColorStateList.valueOf(obtainStyledAttributes.getColor(R.styleable.Tooltip_backgroundTint, MaterialColors.layer(d.j(MaterialColors.getColor(this.context, android.R.attr.colorBackground, TooltipDrawable.class.getCanonicalName()), 229), d.j(MaterialColors.getColor(this.context, R.attr.colorOnBackground, TooltipDrawable.class.getCanonicalName()), 153)))));
        setStrokeColor(ColorStateList.valueOf(MaterialColors.getColor(this.context, R.attr.colorSurface, TooltipDrawable.class.getCanonicalName())));
        this.padding = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_padding, 0);
        this.minWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_minWidth, 0);
        this.minHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_minHeight, 0);
        this.layoutMargin = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_layout_margin, 0);
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLocationOnScreen(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.locationOnScreenX = iArr[0];
        view.getWindowVisibleDisplayFrame(this.displayFrame);
    }

    public void detachView(View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.attachedViewLayoutChangeListener);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.save();
        float calculatePointerOffset = calculatePointerOffset();
        double d10 = this.arrowSize;
        double sqrt = Math.sqrt(2.0d);
        Double.isNaN(d10);
        double d11 = d10 * sqrt;
        double d12 = this.arrowSize;
        Double.isNaN(d12);
        canvas.scale(this.tooltipScaleX, this.tooltipScaleY, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.tooltipPivotY));
        canvas.translate(calculatePointerOffset, (float) (-(d11 - d12)));
        super.draw(canvas);
        drawText(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.textDrawableHelper.getTextPaint().getTextSize(), this.minHeight);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.padding * 2) + getTextWidth(), this.minWidth);
    }

    public int getLayoutMargin() {
        return this.layoutMargin;
    }

    public int getMinHeight() {
        return this.minHeight;
    }

    public int getMinWidth() {
        return this.minWidth;
    }

    public CharSequence getText() {
        return this.text;
    }

    public TextAppearance getTextAppearance() {
        return this.textDrawableHelper.getTextAppearance();
    }

    public int getTextPadding() {
        return this.padding;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setShapeAppearanceModel(getShapeAppearanceModel().toBuilder().setBottomEdge(createMarkerEdge()).build());
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        invalidateSelf();
    }

    public void setLayoutMargin(int i10) {
        this.layoutMargin = i10;
        invalidateSelf();
    }

    public void setMinHeight(int i10) {
        this.minHeight = i10;
        invalidateSelf();
    }

    public void setMinWidth(int i10) {
        this.minWidth = i10;
        invalidateSelf();
    }

    public void setRelativeToView(View view) {
        if (view == null) {
            return;
        }
        updateLocationOnScreen(view);
        view.addOnLayoutChangeListener(this.attachedViewLayoutChangeListener);
    }

    public void setRevealFraction(float f10) {
        this.tooltipPivotY = 1.2f;
        this.tooltipScaleX = f10;
        this.tooltipScaleY = f10;
        this.labelOpacity = AnimationUtils.lerp(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f, 0.19f, 1.0f, f10);
        invalidateSelf();
    }

    public void setText(CharSequence charSequence) {
        if (TextUtils.equals(this.text, charSequence)) {
            return;
        }
        this.text = charSequence;
        this.textDrawableHelper.setTextWidthDirty(true);
        invalidateSelf();
    }

    public void setTextAppearance(TextAppearance textAppearance) {
        this.textDrawableHelper.setTextAppearance(textAppearance, this.context);
    }

    public void setTextAppearanceResource(int i10) {
        setTextAppearance(new TextAppearance(this.context, i10));
    }

    public void setTextPadding(int i10) {
        this.padding = i10;
        invalidateSelf();
    }

    public void setTextResource(int i10) {
        setText(this.context.getResources().getString(i10));
    }

    public static TooltipDrawable createFromAttributes(Context context, AttributeSet attributeSet) {
        return createFromAttributes(context, attributeSet, DEFAULT_THEME_ATTR, DEFAULT_STYLE);
    }
}
