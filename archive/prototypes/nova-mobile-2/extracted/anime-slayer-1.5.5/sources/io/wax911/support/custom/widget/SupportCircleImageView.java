package io.wax911.support.custom.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.util.AttributeSet;
import android.view.animation.Animation;
import androidx.appcompat.widget.AppCompatImageView;
import q0.b0;

/* loaded from: classes.dex */
public class SupportCircleImageView extends AppCompatImageView {
    private static final int FILL_SHADOW_COLOR = 1023410176;
    private static final int KEY_SHADOW_COLOR = 503316480;
    private static final int SHADOW_ELEVATION = 4;
    private static final float SHADOW_RADIUS = 3.5f;
    private static final float X_OFFSET = 0.0f;
    private static final float Y_OFFSET = 1.75f;
    private Animation.AnimationListener mListener;
    private int mShadowRadius;

    /* loaded from: classes.dex */
    public class OvalShadow extends OvalShape {
        private int mCircleDiameter;
        private RadialGradient mRadialGradient;
        private Paint mShadowPaint = new Paint();

        public OvalShadow(int i10, int i11) {
            SupportCircleImageView.this.mShadowRadius = i10;
            this.mCircleDiameter = i11;
            int i12 = this.mCircleDiameter;
            RadialGradient radialGradient = new RadialGradient(i12 / 2, i12 / 2, SupportCircleImageView.this.mShadowRadius, new int[]{SupportCircleImageView.FILL_SHADOW_COLOR, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.mRadialGradient = radialGradient;
            this.mShadowPaint.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            float width = SupportCircleImageView.this.getWidth() / 2;
            float height = SupportCircleImageView.this.getHeight() / 2;
            canvas.drawCircle(width, height, (this.mCircleDiameter / 2) + SupportCircleImageView.this.mShadowRadius, this.mShadowPaint);
            canvas.drawCircle(width, height, this.mCircleDiameter / 2, paint);
        }
    }

    public SupportCircleImageView(Context context) {
        super(context);
    }

    private boolean elevationSupported() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.mListener;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.mListener;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (elevationSupported()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth() + (this.mShadowRadius * 2), getMeasuredHeight() + (this.mShadowRadius * 2));
    }

    public void setAnimationListener(Animation.AnimationListener animationListener) {
        this.mListener = animationListener;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i10);
        }
    }

    public void setBackgroundColorRes(int i10) {
        setBackgroundColor(getContext().getResources().getColor(i10));
    }

    public SupportCircleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SupportCircleImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public SupportCircleImageView(Context context, int i10, float f10) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f11 = getContext().getResources().getDisplayMetrics().density;
        int i11 = (int) (f10 * f11 * 2.0f);
        int i12 = (int) (Y_OFFSET * f11);
        int i13 = (int) (0.0f * f11);
        this.mShadowRadius = (int) (SHADOW_RADIUS * f11);
        if (elevationSupported()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            b0.B0(this, f11 * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new OvalShadow(this.mShadowRadius, i11));
            setLayerType(1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.mShadowRadius, i13, i12, KEY_SHADOW_COLOR);
            int i14 = this.mShadowRadius;
            setPadding(i14, i14, i14, i14);
        }
        shapeDrawable.getPaint().setColor(i10);
        setBackgroundDrawable(shapeDrawable);
    }
}
