package i0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* compiled from: WrappedDrawableApi14.java */
/* loaded from: classes.dex */
public class d extends Drawable implements Drawable.Callback, c, b {

    /* renamed from: l, reason: collision with root package name */
    public static final PorterDuff.Mode f7501l = PorterDuff.Mode.SRC_IN;

    /* renamed from: f, reason: collision with root package name */
    public int f7502f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f7503g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7504h;

    /* renamed from: i, reason: collision with root package name */
    public f f7505i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7506j;

    /* renamed from: k, reason: collision with root package name */
    public Drawable f7507k;

    public d(f fVar, Resources resources) {
        this.f7505i = fVar;
        e(resources);
    }

    @Override // i0.c
    public final void a(Drawable drawable) {
        Drawable drawable2 = this.f7507k;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f7507k = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            f fVar = this.f7505i;
            if (fVar != null) {
                fVar.f7510b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // i0.c
    public final Drawable b() {
        return this.f7507k;
    }

    public boolean c() {
        return true;
    }

    public final f d() {
        return new f(this.f7505i);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f7507k.draw(canvas);
    }

    public final void e(Resources resources) {
        Drawable.ConstantState constantState;
        f fVar = this.f7505i;
        if (fVar == null || (constantState = fVar.f7510b) == null) {
            return;
        }
        a(constantState.newDrawable(resources));
    }

    public final boolean f(int[] iArr) {
        if (!c()) {
            return false;
        }
        f fVar = this.f7505i;
        ColorStateList colorStateList = fVar.f7511c;
        PorterDuff.Mode mode = fVar.f7512d;
        if (colorStateList != null && mode != null) {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f7504h || colorForState != this.f7502f || mode != this.f7503g) {
                setColorFilter(colorForState, mode);
                this.f7502f = colorForState;
                this.f7503g = mode;
                this.f7504h = true;
                return true;
            }
        } else {
            this.f7504h = false;
            clearColorFilter();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        f fVar = this.f7505i;
        return changingConfigurations | (fVar != null ? fVar.getChangingConfigurations() : 0) | this.f7507k.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        f fVar = this.f7505i;
        if (fVar == null || !fVar.a()) {
            return null;
        }
        this.f7505i.f7509a = getChangingConfigurations();
        return this.f7505i;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f7507k.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f7507k.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f7507k.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getLayoutDirection() {
        return a.f(this.f7507k);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f7507k.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f7507k.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f7507k.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f7507k.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f7507k.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f7507k.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return a.h(this.f7507k);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        f fVar;
        ColorStateList colorStateList = (!c() || (fVar = this.f7505i) == null) ? null : fVar.f7511c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f7507k.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f7507k.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f7506j && super.mutate() == this) {
            this.f7505i = d();
            Drawable drawable = this.f7507k;
            if (drawable != null) {
                drawable.mutate();
            }
            f fVar = this.f7505i;
            if (fVar != null) {
                Drawable drawable2 = this.f7507k;
                fVar.f7510b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f7506j = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f7507k;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i10) {
        return a.m(this.f7507k, i10);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i10) {
        return this.f7507k.setLevel(i10);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        scheduleSelf(runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f7507k.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        a.j(this.f7507k, z10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i10) {
        this.f7507k.setChangingConfigurations(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f7507k.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        this.f7507k.setDither(z10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        this.f7507k.setFilterBitmap(z10);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return f(iArr) || this.f7507k.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, i0.b
    public void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable, i0.b
    public void setTintList(ColorStateList colorStateList) {
        this.f7505i.f7511c = colorStateList;
        f(getState());
    }

    @Override // android.graphics.drawable.Drawable, i0.b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f7505i.f7512d = mode;
        f(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        return super.setVisible(z10, z11) || this.f7507k.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public d(Drawable drawable) {
        this.f7505i = d();
        a(drawable);
    }
}
