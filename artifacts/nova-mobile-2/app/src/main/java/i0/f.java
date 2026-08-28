package i0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* compiled from: WrappedDrawableState.java */
/* loaded from: classes.dex */
public final class f extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public int f7509a;

    /* renamed from: b, reason: collision with root package name */
    public Drawable.ConstantState f7510b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f7511c;

    /* renamed from: d, reason: collision with root package name */
    public PorterDuff.Mode f7512d;

    public f(f fVar) {
        this.f7511c = null;
        this.f7512d = d.f7501l;
        if (fVar != null) {
            this.f7509a = fVar.f7509a;
            this.f7510b = fVar.f7510b;
            this.f7511c = fVar.f7511c;
            this.f7512d = fVar.f7512d;
        }
    }

    public boolean a() {
        return this.f7510b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i10 = this.f7509a;
        Drawable.ConstantState constantState = this.f7510b;
        return i10 | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new e(this, resources);
        }
        return new d(this, resources);
    }
}
