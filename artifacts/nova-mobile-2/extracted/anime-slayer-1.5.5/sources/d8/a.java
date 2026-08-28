package d8;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;
import r7.u;

/* compiled from: BitmapBytesTranscoder.java */
/* loaded from: classes.dex */
public class a implements e<Bitmap, byte[]> {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap.CompressFormat f5717a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5718b;

    public a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    @Override // d8.e
    public u<byte[]> a(u<Bitmap> uVar, p7.g gVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        uVar.get().compress(this.f5717a, this.f5718b, byteArrayOutputStream);
        uVar.b();
        return new z7.b(byteArrayOutputStream.toByteArray());
    }

    public a(Bitmap.CompressFormat compressFormat, int i10) {
        this.f5717a = compressFormat;
        this.f5718b = i10;
    }
}
