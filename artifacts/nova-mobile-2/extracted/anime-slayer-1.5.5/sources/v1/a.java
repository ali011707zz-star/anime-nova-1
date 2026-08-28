package v1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.view.animation.Animation;
import android.widget.ImageView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import q0.b0;

/* compiled from: CircleImageView.java */
/* loaded from: classes.dex */
public class a extends ImageView {

    /* renamed from: f, reason: collision with root package name */
    public Animation.AnimationListener f14748f;

    /* renamed from: g, reason: collision with root package name */
    public int f14749g;

    /* renamed from: h, reason: collision with root package name */
    public int f14750h;

    /* compiled from: CircleImageView.java */
    /* renamed from: v1.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0382a extends OvalShape {

        /* renamed from: f, reason: collision with root package name */
        public Paint f14751f = new Paint();

        /* renamed from: g, reason: collision with root package name */
        public int f14752g;

        /* renamed from: h, reason: collision with root package name */
        public a f14753h;

        public C0382a(a aVar, int i10) {
            this.f14753h = aVar;
            this.f14752g = i10;
            a((int) rect().width());
        }

        public final void a(int i10) {
            float f10 = i10 / 2;
            this.f14751f.setShader(new RadialGradient(f10, f10, this.f14752g, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP));
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            float width = this.f14753h.getWidth() / 2;
            float height = this.f14753h.getHeight() / 2;
            canvas.drawCircle(width, height, width, this.f14751f);
            canvas.drawCircle(width, height, r0 - this.f14752g, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void onResize(float f10, float f11) {
            super.onResize(f10, f11);
            a((int) f10);
        }
    }

    public a(Context context) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f10 = getContext().getResources().getDisplayMetrics().density;
        int i10 = (int) (1.75f * f10);
        int i11 = (int) (StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD * f10);
        this.f14749g = (int) (3.5f * f10);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(u1.a.f14331f);
        this.f14750h = obtainStyledAttributes.getColor(u1.a.f14332g, -328966);
        obtainStyledAttributes.recycle();
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            b0.B0(this, f10 * 4.0f);
        } else {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new C0382a(this, this.f14749g));
            setLayerType(1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f14749g, i11, i10, 503316480);
            int i12 = this.f14749g;
            setPadding(i12, i12, i12, i12);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(this.f14750h);
        b0.x0(this, shapeDrawable);
    }

    public final boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public void b(Animation.AnimationListener animationListener) {
        this.f14748f = animationListener;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f14748f;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f14748f;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (a()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth() + (this.f14749g * 2), getMeasuredHeight() + (this.f14749g * 2));
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i10);
            this.f14750h = i10;
        }
    }
}
