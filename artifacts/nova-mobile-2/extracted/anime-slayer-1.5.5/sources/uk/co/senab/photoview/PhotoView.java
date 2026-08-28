package uk.co.senab.photoview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import uk.co.senab.photoview.c;

/* loaded from: classes2.dex */
public class PhotoView extends ImageView implements b {

    /* renamed from: f, reason: collision with root package name */
    public c f14678f;

    /* renamed from: g, reason: collision with root package name */
    public ImageView.ScaleType f14679g;

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void a() {
        c cVar = this.f14678f;
        if (cVar == null || cVar.r() == null) {
            this.f14678f = new c(this);
        }
        ImageView.ScaleType scaleType = this.f14679g;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.f14679g = null;
        }
    }

    public Matrix getDisplayMatrix() {
        return this.f14678f.n();
    }

    public RectF getDisplayRect() {
        return this.f14678f.o();
    }

    public b getIPhotoViewImplementation() {
        return this.f14678f;
    }

    @Deprecated
    public float getMaxScale() {
        return getMaximumScale();
    }

    public float getMaximumScale() {
        return this.f14678f.u();
    }

    public float getMediumScale() {
        return this.f14678f.v();
    }

    @Deprecated
    public float getMidScale() {
        return getMediumScale();
    }

    @Deprecated
    public float getMinScale() {
        return getMinimumScale();
    }

    public float getMinimumScale() {
        return this.f14678f.w();
    }

    public c.f getOnPhotoTapListener() {
        return this.f14678f.x();
    }

    public c.h getOnViewTapListener() {
        return this.f14678f.y();
    }

    public float getScale() {
        return this.f14678f.z();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f14678f.A();
    }

    public Bitmap getVisibleRectangleBitmap() {
        return this.f14678f.C();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        a();
        super.onAttachedToWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        this.f14678f.m();
        super.onDetachedFromWindow();
    }

    public void setAllowParentInterceptOnEdge(boolean z10) {
        this.f14678f.G(z10);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        c cVar = this.f14678f;
        if (cVar != null) {
            cVar.a0();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        super.setImageResource(i10);
        c cVar = this.f14678f;
        if (cVar != null) {
            cVar.a0();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        c cVar = this.f14678f;
        if (cVar != null) {
            cVar.a0();
        }
    }

    @Deprecated
    public void setMaxScale(float f10) {
        setMaximumScale(f10);
    }

    public void setMaximumScale(float f10) {
        this.f14678f.J(f10);
    }

    public void setMediumScale(float f10) {
        this.f14678f.K(f10);
    }

    @Deprecated
    public void setMidScale(float f10) {
        setMediumScale(f10);
    }

    @Deprecated
    public void setMinScale(float f10) {
        setMinimumScale(f10);
    }

    public void setMinimumScale(float f10) {
        this.f14678f.L(f10);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f14678f.M(onDoubleTapListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f14678f.N(onLongClickListener);
    }

    public void setOnMatrixChangeListener(c.e eVar) {
        this.f14678f.O(eVar);
    }

    public void setOnPhotoTapListener(c.f fVar) {
        this.f14678f.P(fVar);
    }

    public void setOnScaleChangeListener(c.g gVar) {
        this.f14678f.Q(gVar);
    }

    public void setOnViewTapListener(c.h hVar) {
        this.f14678f.R(hVar);
    }

    public void setPhotoViewRotation(float f10) {
        this.f14678f.T(f10);
    }

    public void setRotationBy(float f10) {
        this.f14678f.S(f10);
    }

    public void setRotationTo(float f10) {
        this.f14678f.T(f10);
    }

    public void setScale(float f10) {
        this.f14678f.U(f10);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        c cVar = this.f14678f;
        if (cVar != null) {
            cVar.X(scaleType);
        } else {
            this.f14679g = scaleType;
        }
    }

    public void setZoomTransitionDuration(int i10) {
        this.f14678f.Y(i10);
    }

    public void setZoomable(boolean z10) {
        this.f14678f.Z(z10);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        a();
    }
}
