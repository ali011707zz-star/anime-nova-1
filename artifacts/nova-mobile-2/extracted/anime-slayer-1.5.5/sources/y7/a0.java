package y7;

import android.graphics.Bitmap;

/* compiled from: UnitBitmapDecoder.java */
/* loaded from: classes.dex */
public final class a0 implements p7.i<Bitmap, Bitmap> {

    /* compiled from: UnitBitmapDecoder.java */
    /* loaded from: classes.dex */
    public static final class a implements r7.u<Bitmap> {

        /* renamed from: f, reason: collision with root package name */
        public final Bitmap f16640f;

        public a(Bitmap bitmap) {
            this.f16640f = bitmap;
        }

        @Override // r7.u
        public int a() {
            return l8.k.h(this.f16640f);
        }

        @Override // r7.u
        public void b() {
        }

        @Override // r7.u
        public Class<Bitmap> c() {
            return Bitmap.class;
        }

        @Override // r7.u
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Bitmap get() {
            return this.f16640f;
        }
    }

    @Override // p7.i
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public r7.u<Bitmap> b(Bitmap bitmap, int i10, int i11, p7.g gVar) {
        return new a(bitmap);
    }

    @Override // p7.i
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(Bitmap bitmap, p7.g gVar) {
        return true;
    }
}
