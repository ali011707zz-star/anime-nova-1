package y7;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapImageDecoderResourceDecoder.java */
/* loaded from: classes.dex */
public final class h implements p7.i<ByteBuffer, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final d f16660a = new d();

    @Override // p7.i
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public r7.u<Bitmap> b(ByteBuffer byteBuffer, int i10, int i11, p7.g gVar) throws IOException {
        return this.f16660a.b(ImageDecoder.createSource(byteBuffer), i10, i11, gVar);
    }

    @Override // p7.i
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(ByteBuffer byteBuffer, p7.g gVar) throws IOException {
        return true;
    }
}
