package d8;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import r7.u;

/* compiled from: DrawableBytesTranscoder.java */
/* loaded from: classes.dex */
public final class c implements e<Drawable, byte[]> {

    /* renamed from: a, reason: collision with root package name */
    public final s7.e f5720a;

    /* renamed from: b, reason: collision with root package name */
    public final e<Bitmap, byte[]> f5721b;

    /* renamed from: c, reason: collision with root package name */
    public final e<c8.c, byte[]> f5722c;

    public c(s7.e eVar, e<Bitmap, byte[]> eVar2, e<c8.c, byte[]> eVar3) {
        this.f5720a = eVar;
        this.f5721b = eVar2;
        this.f5722c = eVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static u<c8.c> b(u<Drawable> uVar) {
        return uVar;
    }

    @Override // d8.e
    public u<byte[]> a(u<Drawable> uVar, p7.g gVar) {
        Drawable drawable = uVar.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f5721b.a(y7.e.e(((BitmapDrawable) drawable).getBitmap(), this.f5720a), gVar);
        }
        if (drawable instanceof c8.c) {
            return this.f5722c.a(b(uVar), gVar);
        }
        return null;
    }
}
