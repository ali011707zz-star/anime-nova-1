package y7;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.security.MessageDigest;

/* compiled from: DrawableTransformation.java */
/* loaded from: classes.dex */
public class o implements p7.k<Drawable> {

    /* renamed from: b, reason: collision with root package name */
    public final p7.k<Bitmap> f16691b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f16692c;

    public o(p7.k<Bitmap> kVar, boolean z10) {
        this.f16691b = kVar;
        this.f16692c = z10;
    }

    @Override // p7.k
    public r7.u<Drawable> a(Context context, r7.u<Drawable> uVar, int i10, int i11) {
        s7.e f10 = com.bumptech.glide.c.c(context).f();
        Drawable drawable = uVar.get();
        r7.u<Bitmap> a10 = n.a(f10, drawable, i10, i11);
        if (a10 == null) {
            if (!this.f16692c) {
                return uVar;
            }
            throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
        }
        r7.u<Bitmap> a11 = this.f16691b.a(context, a10, i10, i11);
        if (a11.equals(a10)) {
            a11.b();
            return uVar;
        }
        return d(context, a11);
    }

    @Override // p7.e
    public void b(MessageDigest messageDigest) {
        this.f16691b.b(messageDigest);
    }

    public p7.k<BitmapDrawable> c() {
        return this;
    }

    public final r7.u<Drawable> d(Context context, r7.u<Bitmap> uVar) {
        return u.e(context.getResources(), uVar);
    }

    @Override // p7.e
    public boolean equals(Object obj) {
        if (obj instanceof o) {
            return this.f16691b.equals(((o) obj).f16691b);
        }
        return false;
    }

    @Override // p7.e
    public int hashCode() {
        return this.f16691b.hashCode();
    }
}
