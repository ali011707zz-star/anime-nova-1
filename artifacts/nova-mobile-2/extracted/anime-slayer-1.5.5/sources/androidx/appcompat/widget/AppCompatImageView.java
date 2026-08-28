package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class AppCompatImageView extends ImageView implements q0.z, u0.o {
    private final e mBackgroundTintHelper;
    private boolean mHasLevel;
    private final o mImageHelper;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            eVar.b();
        }
        o oVar = this.mImageHelper;
        if (oVar != null) {
            oVar.c();
        }
    }

    @Override // q0.z
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // q0.z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // u0.o
    public ColorStateList getSupportImageTintList() {
        o oVar = this.mImageHelper;
        if (oVar != null) {
            return oVar.d();
        }
        return null;
    }

    @Override // u0.o
    public PorterDuff.Mode getSupportImageTintMode() {
        o oVar = this.mImageHelper;
        if (oVar != null) {
            return oVar.e();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.mImageHelper.f() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        o oVar = this.mImageHelper;
        if (oVar != null) {
            oVar.c();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        o oVar = this.mImageHelper;
        if (oVar != null && drawable != null && !this.mHasLevel) {
            oVar.h(drawable);
        }
        super.setImageDrawable(drawable);
        o oVar2 = this.mImageHelper;
        if (oVar2 != null) {
            oVar2.c();
            if (this.mHasLevel) {
                return;
            }
            this.mImageHelper.b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i10) {
        super.setImageLevel(i10);
        this.mHasLevel = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        o oVar = this.mImageHelper;
        if (oVar != null) {
            oVar.i(i10);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        o oVar = this.mImageHelper;
        if (oVar != null) {
            oVar.c();
        }
    }

    @Override // q0.z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // q0.z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.mBackgroundTintHelper;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    @Override // u0.o
    public void setSupportImageTintList(ColorStateList colorStateList) {
        o oVar = this.mImageHelper;
        if (oVar != null) {
            oVar.j(colorStateList);
        }
    }

    @Override // u0.o
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        o oVar = this.mImageHelper;
        if (oVar != null) {
            oVar.k(mode);
        }
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet, int i10) {
        super(s0.b(context), attributeSet, i10);
        this.mHasLevel = false;
        q0.a(this, getContext());
        e eVar = new e(this);
        this.mBackgroundTintHelper = eVar;
        eVar.e(attributeSet, i10);
        o oVar = new o(this);
        this.mImageHelper = oVar;
        oVar.g(attributeSet, i10);
    }
}
