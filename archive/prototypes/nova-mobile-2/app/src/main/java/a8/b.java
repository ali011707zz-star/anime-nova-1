package a8;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import l8.j;
import r7.q;
import r7.u;

/* compiled from: DrawableResource.java */
/* loaded from: classes.dex */
public abstract class b<T extends Drawable> implements u<T>, q {

    /* renamed from: f, reason: collision with root package name */
    public final T f512f;

    public b(T t10) {
        this.f512f = (T) j.d(t10);
    }

    @Override // r7.u
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final T get() {
        Drawable.ConstantState constantState = this.f512f.getConstantState();
        if (constantState == null) {
            return this.f512f;
        }
        return (T) constantState.newDrawable();
    }

    @Override // r7.q
    public void initialize() {
        T t10 = this.f512f;
        if (t10 instanceof BitmapDrawable) {
            ((BitmapDrawable) t10).getBitmap().prepareToDraw();
        } else if (t10 instanceof c8.c) {
            ((c8.c) t10).e().prepareToDraw();
        }
    }
}
