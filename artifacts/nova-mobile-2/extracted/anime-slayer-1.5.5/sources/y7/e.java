package y7;

import android.graphics.Bitmap;

/* compiled from: BitmapResource.java */
/* loaded from: classes.dex */
public class e implements r7.u<Bitmap>, r7.q {

    /* renamed from: f, reason: collision with root package name */
    public final Bitmap f16657f;

    /* renamed from: g, reason: collision with root package name */
    public final s7.e f16658g;

    public e(Bitmap bitmap, s7.e eVar) {
        this.f16657f = (Bitmap) l8.j.e(bitmap, "Bitmap must not be null");
        this.f16658g = (s7.e) l8.j.e(eVar, "BitmapPool must not be null");
    }

    public static e e(Bitmap bitmap, s7.e eVar) {
        if (bitmap == null) {
            return null;
        }
        return new e(bitmap, eVar);
    }

    @Override // r7.u
    public int a() {
        return l8.k.h(this.f16657f);
    }

    @Override // r7.u
    public void b() {
        this.f16658g.d(this.f16657f);
    }

    @Override // r7.u
    public Class<Bitmap> c() {
        return Bitmap.class;
    }

    @Override // r7.u
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Bitmap get() {
        return this.f16657f;
    }

    @Override // r7.q
    public void initialize() {
        this.f16657f.prepareToDraw();
    }
}
