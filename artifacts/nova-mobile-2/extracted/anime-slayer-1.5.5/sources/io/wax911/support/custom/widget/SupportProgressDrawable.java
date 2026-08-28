package io.wax911.support.custom.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import d1.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SupportProgressDrawable extends Drawable implements Animatable {
    private static final int ANIMATION_DURATION = 1332;
    private static final int ARROW_HEIGHT = 5;
    private static final int ARROW_HEIGHT_LARGE = 6;
    private static final float ARROW_OFFSET_ANGLE = 5.0f;
    private static final int ARROW_WIDTH = 10;
    private static final int ARROW_WIDTH_LARGE = 12;
    private static final float CENTER_RADIUS = 8.75f;
    private static final float CENTER_RADIUS_LARGE = 12.5f;
    private static final int CIRCLE_DIAMETER = 40;
    private static final int CIRCLE_DIAMETER_LARGE = 56;
    private static final float COLOR_START_DELAY_OFFSET = 0.75f;
    public static final int DEFAULT = 1;
    private static final float END_TRIM_START_DELAY_OFFSET = 0.5f;
    private static final float FULL_ROTATION = 1080.0f;
    public static final int LARGE = 0;
    private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private static final Interpolator MATERIAL_INTERPOLATOR = new b();
    private static final float MAX_PROGRESS_ARC = 0.8f;
    private static final float NUM_POINTS = 5.0f;
    private static final float START_TRIM_DURATION_OFFSET = 0.5f;
    private static final float STROKE_WIDTH = 2.5f;
    private static final float STROKE_WIDTH_LARGE = 3.0f;
    private final int[] COLORS;
    private Animation mAnimation;
    private final ArrayList<Animation> mAnimators = new ArrayList<>();
    private final Drawable.Callback mCallback;
    public boolean mFinishing;
    private double mHeight;
    private View mParent;
    private Resources mResources;
    private final Ring mRing;
    private float mRotation;
    private float mRotationCount;
    private double mWidth;

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes.dex */
    public @interface ProgressDrawableSize {
    }

    /* loaded from: classes.dex */
    public static class Ring {
        private int mAlpha;
        private Path mArrow;
        private int mArrowHeight;
        private final Paint mArrowPaint;
        private float mArrowScale;
        private int mArrowWidth;
        private int mBackgroundColor;
        private final Drawable.Callback mCallback;
        private final Paint mCirclePaint;
        private int mColorIndex;
        private int[] mColors;
        private int mCurrentColor;
        private float mEndTrim;
        private final Paint mPaint;
        private double mRingCenterRadius;
        private float mRotation;
        private boolean mShowArrow;
        private float mStartTrim;
        private float mStartingEndTrim;
        private float mStartingRotation;
        private float mStartingStartTrim;
        private float mStrokeInset;
        private float mStrokeWidth;
        private final RectF mTempBounds = new RectF();

        public Ring(Drawable.Callback callback) {
            Paint paint = new Paint();
            this.mPaint = paint;
            Paint paint2 = new Paint();
            this.mArrowPaint = paint2;
            this.mStartTrim = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.mEndTrim = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.mRotation = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.mStrokeWidth = 5.0f;
            this.mStrokeInset = SupportProgressDrawable.STROKE_WIDTH;
            this.mCirclePaint = new Paint(1);
            this.mCallback = callback;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
        }

        private void drawTriangle(Canvas canvas, float f10, float f11, Rect rect) {
            if (this.mShowArrow) {
                Path path = this.mArrow;
                if (path == null) {
                    Path path2 = new Path();
                    this.mArrow = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float f12 = (((int) this.mStrokeInset) / 2) * this.mArrowScale;
                double cos = this.mRingCenterRadius * Math.cos(ShadowDrawableWrapper.COS_45);
                double exactCenterX = rect.exactCenterX();
                Double.isNaN(exactCenterX);
                float f13 = (float) (cos + exactCenterX);
                double sin = this.mRingCenterRadius * Math.sin(ShadowDrawableWrapper.COS_45);
                double exactCenterY = rect.exactCenterY();
                Double.isNaN(exactCenterY);
                float f14 = (float) (sin + exactCenterY);
                this.mArrow.moveTo(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                this.mArrow.lineTo(this.mArrowWidth * this.mArrowScale, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                Path path3 = this.mArrow;
                float f15 = this.mArrowWidth;
                float f16 = this.mArrowScale;
                path3.lineTo((f15 * f16) / 2.0f, this.mArrowHeight * f16);
                this.mArrow.offset(f13 - f12, f14);
                this.mArrow.close();
                this.mArrowPaint.setColor(this.mCurrentColor);
                canvas.rotate((f10 + f11) - 5.0f, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.mArrow, this.mArrowPaint);
            }
        }

        private int getNextColorIndex() {
            return (this.mColorIndex + 1) % this.mColors.length;
        }

        private void invalidateSelf() {
            this.mCallback.invalidateDrawable(null);
        }

        public void draw(Canvas canvas, Rect rect) {
            RectF rectF = this.mTempBounds;
            rectF.set(rect);
            float f10 = this.mStrokeInset;
            rectF.inset(f10, f10);
            float f11 = this.mStartTrim;
            float f12 = this.mRotation;
            float f13 = (f11 + f12) * 360.0f;
            float f14 = ((this.mEndTrim + f12) * 360.0f) - f13;
            this.mPaint.setColor(this.mCurrentColor);
            canvas.drawArc(rectF, f13, f14, false, this.mPaint);
            drawTriangle(canvas, f13, f14, rect);
            if (this.mAlpha < 255) {
                this.mCirclePaint.setColor(this.mBackgroundColor);
                this.mCirclePaint.setAlpha(BaseProgressIndicator.MAX_ALPHA - this.mAlpha);
                canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), rect.width() / 2, this.mCirclePaint);
            }
        }

        public int getAlpha() {
            return this.mAlpha;
        }

        public double getCenterRadius() {
            return this.mRingCenterRadius;
        }

        public float getEndTrim() {
            return this.mEndTrim;
        }

        public float getInsets() {
            return this.mStrokeInset;
        }

        public int getNextColor() {
            return this.mColors[getNextColorIndex()];
        }

        public float getRotation() {
            return this.mRotation;
        }

        public float getStartTrim() {
            return this.mStartTrim;
        }

        public int getStartingColor() {
            return this.mColors[this.mColorIndex];
        }

        public float getStartingEndTrim() {
            return this.mStartingEndTrim;
        }

        public float getStartingRotation() {
            return this.mStartingRotation;
        }

        public float getStartingStartTrim() {
            return this.mStartingStartTrim;
        }

        public float getStrokeWidth() {
            return this.mStrokeWidth;
        }

        public void goToNextColor() {
            setColorIndex(getNextColorIndex());
        }

        public void resetOriginals() {
            this.mStartingStartTrim = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.mStartingEndTrim = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.mStartingRotation = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            setStartTrim(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            setEndTrim(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            setRotation(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }

        public void setAlpha(int i10) {
            this.mAlpha = i10;
        }

        public void setArrowDimensions(float f10, float f11) {
            this.mArrowWidth = (int) f10;
            this.mArrowHeight = (int) f11;
        }

        public void setArrowScale(float f10) {
            if (f10 != this.mArrowScale) {
                this.mArrowScale = f10;
                invalidateSelf();
            }
        }

        public void setBackgroundColor(int i10) {
            this.mBackgroundColor = i10;
        }

        public void setCenterRadius(double d10) {
            this.mRingCenterRadius = d10;
        }

        public void setColor(int i10) {
            this.mCurrentColor = i10;
        }

        public void setColorFilter(ColorFilter colorFilter) {
            this.mPaint.setColorFilter(colorFilter);
            invalidateSelf();
        }

        public void setColorIndex(int i10) {
            this.mColorIndex = i10;
            this.mCurrentColor = this.mColors[i10];
        }

        public void setColors(int[] iArr) {
            this.mColors = iArr;
            setColorIndex(0);
        }

        public void setEndTrim(float f10) {
            this.mEndTrim = f10;
            invalidateSelf();
        }

        public void setInsets(int i10, int i11) {
            double ceil;
            float min = Math.min(i10, i11);
            double d10 = this.mRingCenterRadius;
            if (d10 > ShadowDrawableWrapper.COS_45 && min >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                double d11 = min / 2.0f;
                Double.isNaN(d11);
                ceil = d11 - d10;
            } else {
                ceil = Math.ceil(this.mStrokeWidth / 2.0f);
            }
            this.mStrokeInset = (float) ceil;
        }

        public void setRotation(float f10) {
            this.mRotation = f10;
            invalidateSelf();
        }

        public void setShowArrow(boolean z10) {
            if (this.mShowArrow != z10) {
                this.mShowArrow = z10;
                invalidateSelf();
            }
        }

        public void setStartTrim(float f10) {
            this.mStartTrim = f10;
            invalidateSelf();
        }

        public void setStrokeWidth(float f10) {
            this.mStrokeWidth = f10;
            this.mPaint.setStrokeWidth(f10);
            invalidateSelf();
        }

        public void storeOriginals() {
            this.mStartingStartTrim = this.mStartTrim;
            this.mStartingEndTrim = this.mEndTrim;
            this.mStartingRotation = this.mRotation;
        }
    }

    public SupportProgressDrawable(Context context, View view) {
        int[] iArr = {-16777216};
        this.COLORS = iArr;
        Drawable.Callback callback = new Drawable.Callback() { // from class: io.wax911.support.custom.widget.SupportProgressDrawable.3
            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(Drawable drawable) {
                SupportProgressDrawable.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
                SupportProgressDrawable.this.scheduleSelf(runnable, j10);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                SupportProgressDrawable.this.unscheduleSelf(runnable);
            }
        };
        this.mCallback = callback;
        this.mParent = view;
        this.mResources = context.getResources();
        Ring ring = new Ring(callback);
        this.mRing = ring;
        ring.setColors(iArr);
        updateSizes(1);
        setupAnimators();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyFinishTranslation(float f10, Ring ring) {
        updateRingColor(f10, ring);
        float floor = (float) (Math.floor(ring.getStartingRotation() / MAX_PROGRESS_ARC) + 1.0d);
        ring.setStartTrim(ring.getStartingStartTrim() + (((ring.getStartingEndTrim() - getMinProgressArc(ring)) - ring.getStartingStartTrim()) * f10));
        ring.setEndTrim(ring.getStartingEndTrim());
        ring.setRotation(ring.getStartingRotation() + ((floor - ring.getStartingRotation()) * f10));
    }

    private int evaluateColorChange(float f10, int i10, int i11) {
        return ((((i10 >> 24) & BaseProgressIndicator.MAX_ALPHA) + ((int) ((((i11 >> 24) & BaseProgressIndicator.MAX_ALPHA) - r0) * f10))) << 24) | ((((i10 >> 16) & BaseProgressIndicator.MAX_ALPHA) + ((int) ((((i11 >> 16) & BaseProgressIndicator.MAX_ALPHA) - r1) * f10))) << 16) | ((((i10 >> 8) & BaseProgressIndicator.MAX_ALPHA) + ((int) ((((i11 >> 8) & BaseProgressIndicator.MAX_ALPHA) - r2) * f10))) << 8) | ((i10 & BaseProgressIndicator.MAX_ALPHA) + ((int) (f10 * ((i11 & BaseProgressIndicator.MAX_ALPHA) - r8))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getMinProgressArc(Ring ring) {
        double strokeWidth = ring.getStrokeWidth();
        double centerRadius = ring.getCenterRadius() * 6.283185307179586d;
        Double.isNaN(strokeWidth);
        return (float) Math.toRadians(strokeWidth / centerRadius);
    }

    private float getRotation() {
        return this.mRotation;
    }

    private void setSizeParameters(double d10, double d11, double d12, double d13, float f10, float f11) {
        Ring ring = this.mRing;
        float f12 = this.mResources.getDisplayMetrics().density;
        double d14 = f12;
        Double.isNaN(d14);
        this.mWidth = d10 * d14;
        Double.isNaN(d14);
        this.mHeight = d11 * d14;
        ring.setStrokeWidth(((float) d13) * f12);
        Double.isNaN(d14);
        ring.setCenterRadius(d12 * d14);
        ring.setColorIndex(0);
        ring.setArrowDimensions(f10 * f12, f11 * f12);
        ring.setInsets((int) this.mWidth, (int) this.mHeight);
    }

    private void setupAnimators() {
        final Ring ring = this.mRing;
        Animation animation = new Animation() { // from class: io.wax911.support.custom.widget.SupportProgressDrawable.1
            @Override // android.view.animation.Animation
            public void applyTransformation(float f10, Transformation transformation) {
                SupportProgressDrawable supportProgressDrawable = SupportProgressDrawable.this;
                if (supportProgressDrawable.mFinishing) {
                    supportProgressDrawable.applyFinishTranslation(f10, ring);
                    return;
                }
                float minProgressArc = supportProgressDrawable.getMinProgressArc(ring);
                float startingEndTrim = ring.getStartingEndTrim();
                float startingStartTrim = ring.getStartingStartTrim();
                float startingRotation = ring.getStartingRotation();
                SupportProgressDrawable.this.updateRingColor(f10, ring);
                if (f10 <= 0.5f) {
                    ring.setStartTrim(startingStartTrim + ((SupportProgressDrawable.MAX_PROGRESS_ARC - minProgressArc) * SupportProgressDrawable.MATERIAL_INTERPOLATOR.getInterpolation(f10 / 0.5f)));
                }
                if (f10 > 0.5f) {
                    ring.setEndTrim(startingEndTrim + ((SupportProgressDrawable.MAX_PROGRESS_ARC - minProgressArc) * SupportProgressDrawable.MATERIAL_INTERPOLATOR.getInterpolation((f10 - 0.5f) / 0.5f)));
                }
                ring.setRotation(startingRotation + (0.25f * f10));
                SupportProgressDrawable.this.setRotation((f10 * 216.0f) + ((SupportProgressDrawable.this.mRotationCount / 5.0f) * SupportProgressDrawable.FULL_ROTATION));
            }
        };
        animation.setRepeatCount(-1);
        animation.setRepeatMode(1);
        animation.setInterpolator(LINEAR_INTERPOLATOR);
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: io.wax911.support.custom.widget.SupportProgressDrawable.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
                ring.storeOriginals();
                ring.goToNextColor();
                Ring ring2 = ring;
                ring2.setStartTrim(ring2.getEndTrim());
                SupportProgressDrawable supportProgressDrawable = SupportProgressDrawable.this;
                if (!supportProgressDrawable.mFinishing) {
                    supportProgressDrawable.mRotationCount = (supportProgressDrawable.mRotationCount + 1.0f) % 5.0f;
                    return;
                }
                supportProgressDrawable.mFinishing = false;
                animation2.setDuration(1332L);
                ring.setShowArrow(false);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
                SupportProgressDrawable.this.mRotationCount = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
        });
        this.mAnimation = animation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRingColor(float f10, Ring ring) {
        if (f10 > COLOR_START_DELAY_OFFSET) {
            ring.setColor(evaluateColorChange((f10 - COLOR_START_DELAY_OFFSET) / 0.25f, ring.getStartingColor(), ring.getNextColor()));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.mRotation, bounds.exactCenterX(), bounds.exactCenterY());
        this.mRing.draw(canvas, bounds);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mRing.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.mHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.mWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        ArrayList<Animation> arrayList = this.mAnimators;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Animation animation = arrayList.get(i10);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.mRing.setAlpha(i10);
    }

    public void setArrowScale(float f10) {
        this.mRing.setArrowScale(f10);
    }

    public void setBackgroundColor(int i10) {
        this.mRing.setBackgroundColor(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mRing.setColorFilter(colorFilter);
    }

    public void setColorSchemeColors(int... iArr) {
        this.mRing.setColors(iArr);
        this.mRing.setColorIndex(0);
    }

    public void setProgressRotation(float f10) {
        this.mRing.setRotation(f10);
    }

    public void setRotation(float f10) {
        this.mRotation = f10;
        invalidateSelf();
    }

    public void setStartEndTrim(float f10, float f11) {
        this.mRing.setStartTrim(f10);
        this.mRing.setEndTrim(f11);
    }

    public void showArrow(boolean z10) {
        this.mRing.setShowArrow(z10);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.mAnimation.reset();
        this.mRing.storeOriginals();
        if (this.mRing.getEndTrim() != this.mRing.getStartTrim()) {
            this.mFinishing = true;
            this.mAnimation.setDuration(666L);
            this.mParent.startAnimation(this.mAnimation);
        } else {
            this.mRing.setColorIndex(0);
            this.mRing.resetOriginals();
            this.mAnimation.setDuration(1332L);
            this.mParent.startAnimation(this.mAnimation);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mParent.clearAnimation();
        setRotation(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.mRing.setShowArrow(false);
        this.mRing.setColorIndex(0);
        this.mRing.resetOriginals();
    }

    public void updateSizes(@ProgressDrawableSize int i10) {
        if (i10 == 0) {
            setSizeParameters(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            setSizeParameters(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }
}
