package c8;

import android.content.Context;
import android.graphics.Bitmap;
import java.security.MessageDigest;
import p7.k;
import r7.u;

/* compiled from: GifDrawableTransformation.java */
/* loaded from: classes.dex */
public class f implements k<c> {

    /* renamed from: b, reason: collision with root package name */
    public final k<Bitmap> f3741b;

    public f(k<Bitmap> kVar) {
        this.f3741b = (k) l8.j.d(kVar);
    }

    @Override // p7.k
    public u<c> a(Context context, u<c> uVar, int i10, int i11) {
        c cVar = uVar.get();
        u<Bitmap> eVar = new y7.e(cVar.e(), com.bumptech.glide.c.c(context).f());
        u<Bitmap> a10 = this.f3741b.a(context, eVar, i10, i11);
        if (!eVar.equals(a10)) {
            eVar.b();
        }
        cVar.m(this.f3741b, a10.get());
        return uVar;
    }

    @Override // p7.e
    public void b(MessageDigest messageDigest) {
        this.f3741b.b(messageDigest);
    }

    @Override // p7.e
    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f3741b.equals(((f) obj).f3741b);
        }
        return false;
    }

    @Override // p7.e
    public int hashCode() {
        return this.f3741b.hashCode();
    }
}
