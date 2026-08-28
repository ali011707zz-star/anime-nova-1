package a8;

import android.graphics.drawable.Drawable;
import r7.u;

/* compiled from: NonOwnedDrawableResource.java */
/* loaded from: classes.dex */
public final class d extends b<Drawable> {
    public d(Drawable drawable) {
        super(drawable);
    }

    public static u<Drawable> e(Drawable drawable) {
        if (drawable != null) {
            return new d(drawable);
        }
        return null;
    }

    @Override // r7.u
    public int a() {
        return Math.max(1, this.f512f.getIntrinsicWidth() * this.f512f.getIntrinsicHeight() * 4);
    }

    @Override // r7.u
    public void b() {
    }

    @Override // r7.u
    public Class<Drawable> c() {
        return this.f512f.getClass();
    }
}
