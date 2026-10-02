package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.google.android.material.R;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import q0.b0;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ClockHandView extends View {
    private static final int ANIMATION_DURATION = 200;
    private boolean animatingOnTouchUp;
    private final float centerDotRadius;
    private boolean changedDuringTouch;
    private int circleRadius;
    private double degRad;
    private float downX;
    private float downY;
    private boolean isInTapRegion;
    private final List<OnRotateListener> listeners;
    private OnActionUpListener onActionUpListener;
    private float originalDeg;
    private final Paint paint;
    private ValueAnimator rotationAnimator;
    private int scaledTouchSlop;
    private final RectF selectorBox;
    private final int selectorRadius;
    private final int selectorStrokeWidth;

    /* loaded from: classes.dex */
    public interface OnActionUpListener {
        void onActionUp(float f10, boolean z10);
    }

    /* loaded from: classes.dex */
    public interface OnRotateListener {
        void onRotate(float f10, boolean z10);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    private void drawSelector(Canvas canvas) {
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float cos = (this.circleRadius * ((float) Math.cos(this.degRad))) + width;
        float f10 = height;
        float sin = (this.circleRadius * ((float) Math.sin(this.degRad))) + f10;
        this.paint.setStrokeWidth(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        canvas.drawCircle(cos, sin, this.selectorRadius, this.paint);
        double sin2 = Math.sin(this.degRad);
        double cos2 = Math.cos(this.degRad);
        Double.isNaN(r6);
        Double.isNaN(r6);
        this.paint.setStrokeWidth(this.selectorStrokeWidth);
        canvas.drawLine(width, f10, r1 + ((int) (cos2 * r6)), height + ((int) (r6 * sin2)), this.paint);
        canvas.drawCircle(width, f10, this.centerDotRadius, this.paint);
    }

    private int getDegreesFromXY(float f10, float f11) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f11 - (getHeight() / 2), f10 - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    private Pair<Float, Float> getValuesForAnimation(float f10) {
        float handRotation = getHandRotation();
        if (Math.abs(handRotation - f10) > 180.0f) {
            if (handRotation > 180.0f && f10 < 180.0f) {
                f10 += 360.0f;
            }
            if (handRotation < 180.0f && f10 > 180.0f) {
                handRotation += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(handRotation), Float.valueOf(f10));
    }

    private boolean handleTouchInput(float f10, float f11, boolean z10, boolean z11, boolean z12) {
        float degreesFromXY = getDegreesFromXY(f10, f11);
        boolean z13 = false;
        boolean z14 = getHandRotation() != degreesFromXY;
        if (z11 && z14) {
            return true;
        }
        if (!z14 && !z10) {
            return false;
        }
        if (z12 && this.animatingOnTouchUp) {
            z13 = true;
        }
        setHandRotation(degreesFromXY, z13);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHandRotationInternal(float f10, boolean z10) {
        float f11 = f10 % 360.0f;
        this.originalDeg = f11;
        this.degRad = Math.toRadians(f11 - 90.0f);
        int height = getHeight() / 2;
        float width = (getWidth() / 2) + (this.circleRadius * ((float) Math.cos(this.degRad)));
        float sin = height + (this.circleRadius * ((float) Math.sin(this.degRad)));
        RectF rectF = this.selectorBox;
        int i10 = this.selectorRadius;
        rectF.set(width - i10, sin - i10, width + i10, sin + i10);
        Iterator<OnRotateListener> it2 = this.listeners.iterator();
        while (it2.hasNext()) {
            it2.next().onRotate(f11, z10);
        }
        invalidate();
    }

    public void addOnRotateListener(OnRotateListener onRotateListener) {
        this.listeners.add(onRotateListener);
    }

    public RectF getCurrentSelectorBox() {
        return this.selectorBox;
    }

    public float getHandRotation() {
        return this.originalDeg;
    }

    public int getSelectorRadius() {
        return this.selectorRadius;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawSelector(canvas);
    }

    @Override // android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        setHandRotation(getHandRotation());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean z11;
        boolean z12;
        OnActionUpListener onActionUpListener;
        int actionMasked = motionEvent.getActionMasked();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i10 = (int) (x10 - this.downX);
                int i11 = (int) (y10 - this.downY);
                this.isInTapRegion = (i10 * i10) + (i11 * i11) > this.scaledTouchSlop;
                boolean z13 = this.changedDuringTouch;
                z10 = actionMasked == 1;
                z11 = z13;
            } else {
                z10 = false;
                z11 = false;
            }
            z12 = false;
        } else {
            this.downX = x10;
            this.downY = y10;
            this.isInTapRegion = true;
            this.changedDuringTouch = false;
            z10 = false;
            z11 = false;
            z12 = true;
        }
        boolean handleTouchInput = handleTouchInput(x10, y10, z11, z12, z10) | this.changedDuringTouch;
        this.changedDuringTouch = handleTouchInput;
        if (handleTouchInput && z10 && (onActionUpListener = this.onActionUpListener) != null) {
            onActionUpListener.onActionUp(getDegreesFromXY(x10, y10), this.isInTapRegion);
        }
        return true;
    }

    public void setAnimateOnTouchUp(boolean z10) {
        this.animatingOnTouchUp = z10;
    }

    public void setCircleRadius(int i10) {
        this.circleRadius = i10;
        invalidate();
    }

    public void setHandRotation(float f10) {
        setHandRotation(f10, false);
    }

    public void setOnActionUpListener(OnActionUpListener onActionUpListener) {
        this.onActionUpListener = onActionUpListener;
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public void setHandRotation(float f10, boolean z10) {
        ValueAnimator valueAnimator = this.rotationAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z10) {
            setHandRotationInternal(f10, false);
            return;
        }
        Pair<Float, Float> valuesForAnimation = getValuesForAnimation(f10);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(((Float) valuesForAnimation.first).floatValue(), ((Float) valuesForAnimation.second).floatValue());
        this.rotationAnimator = ofFloat;
        ofFloat.setDuration(200L);
        this.rotationAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.ClockHandView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ClockHandView.this.setHandRotationInternal(((Float) valueAnimator2.getAnimatedValue()).floatValue(), true);
            }
        });
        this.rotationAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.timepicker.ClockHandView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                animator.end();
            }
        });
        this.rotationAnimator.start();
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.listeners = new ArrayList();
        Paint paint = new Paint();
        this.paint = paint;
        this.selectorBox = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockHandView, i10, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.circleRadius = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_materialCircleRadius, 0);
        this.selectorRadius = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_selectorSize, 0);
        this.selectorStrokeWidth = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.centerDotRadius = r6.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(R.styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        setHandRotation(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        b0.E0(this, 2);
        obtainStyledAttributes.recycle();
    }
}
