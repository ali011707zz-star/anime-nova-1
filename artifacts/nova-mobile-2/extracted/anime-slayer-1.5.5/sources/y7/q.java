package y7;

import android.graphics.Bitmap;
import java.security.MessageDigest;

/* compiled from: FitCenter.java */
/* loaded from: classes.dex */
public class q extends f {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f16693b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(p7.e.f12083a);

    @Override // p7.e
    public void b(MessageDigest messageDigest) {
        messageDigest.update(f16693b);
    }

    @Override // y7.f
    public Bitmap c(s7.e eVar, Bitmap bitmap, int i10, int i11) {
        return z.f(eVar, bitmap, i10, i11);
    }

    @Override // p7.e
    public boolean equals(Object obj) {
        return obj instanceof q;
    }

    @Override // p7.e
    public int hashCode() {
        return 1572326941;
    }
}
