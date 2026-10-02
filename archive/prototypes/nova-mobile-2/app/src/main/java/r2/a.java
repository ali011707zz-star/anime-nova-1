package r2;

import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import com.google.android.material.progressindicator.BaseProgressIndicator;

/* compiled from: BadgeDrawable.java */
/* loaded from: classes.dex */
public abstract class a extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public int f12802a = BaseProgressIndicator.MAX_ALPHA;

    /* renamed from: b, reason: collision with root package name */
    public ColorFilter f12803b;

    /* compiled from: BadgeDrawable.java */
    /* renamed from: r2.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0313a extends Drawable.ConstantState {
        public C0313a() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return a.this;
        }
    }

    /* compiled from: BadgeDrawable.java */
    /* loaded from: classes.dex */
    public interface b<T extends a> {
        T a();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f12802a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f12803b;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return new C0313a();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        int i10 = this.f12802a;
        if (i10 == 255) {
            return -1;
        }
        return i10 == 0 ? -2 : -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (i10 > 255) {
            i10 = BaseProgressIndicator.MAX_ALPHA;
        } else if (i10 < 0) {
            i10 = 0;
        }
        if (this.f12802a != i10) {
            this.f12802a = i10;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f12803b != colorFilter) {
            this.f12803b = colorFilter;
            invalidateSelf();
        }
    }
}
