package y7;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* compiled from: LazyBitmapDrawableResource.java */
/* loaded from: classes.dex */
public final class u implements r7.u<BitmapDrawable>, r7.q {

    /* renamed from: f, reason: collision with root package name */
    public final Resources f16708f;

    /* renamed from: g, reason: collision with root package name */
    public final r7.u<Bitmap> f16709g;

    public u(Resources resources, r7.u<Bitmap> uVar) {
        this.f16708f = (Resources) l8.j.d(resources);
        this.f16709g = (r7.u) l8.j.d(uVar);
    }

    public static r7.u<BitmapDrawable> e(Resources resources, r7.u<Bitmap> uVar) {
        if (uVar == null) {
            return null;
        }
        return new u(resources, uVar);
    }

    @Override // r7.u
    public int a() {
        return this.f16709g.a();
    }

    @Override // r7.u
    public void b() {
        this.f16709g.b();
    }

    @Override // r7.u
    public Class<BitmapDrawable> c() {
        return BitmapDrawable.class;
    }

    @Override // r7.u
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public BitmapDrawable get() {
        return new BitmapDrawable(this.f16708f, this.f16709g.get());
    }

    @Override // r7.q
    public void initialize() {
        r7.u<Bitmap> uVar = this.f16709g;
        if (uVar instanceof r7.q) {
            ((r7.q) uVar).initialize();
        }
    }
}
