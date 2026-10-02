package y7;

import android.graphics.Bitmap;
import java.security.MessageDigest;

/* compiled from: CenterCrop.java */
/* loaded from: classes.dex */
public class i extends f {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f16661b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(p7.e.f12083a);

    @Override // p7.e
    public void b(MessageDigest messageDigest) {
        messageDigest.update(f16661b);
    }

    @Override // y7.f
    public Bitmap c(s7.e eVar, Bitmap bitmap, int i10, int i11) {
        return z.b(eVar, bitmap, i10, i11);
    }

    @Override // p7.e
    public boolean equals(Object obj) {
        return obj instanceof i;
    }

    @Override // p7.e
    public int hashCode() {
        return -599754482;
    }
}
