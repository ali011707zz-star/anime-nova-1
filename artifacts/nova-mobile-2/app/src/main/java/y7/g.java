package y7;

import android.graphics.Bitmap;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapDecoder.java */
/* loaded from: classes.dex */
public class g implements p7.i<ByteBuffer, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final m f16659a;

    public g(m mVar) {
        this.f16659a = mVar;
    }

    @Override // p7.i
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public r7.u<Bitmap> b(ByteBuffer byteBuffer, int i10, int i11, p7.g gVar) throws IOException {
        return this.f16659a.e(l8.a.f(byteBuffer), i10, i11, gVar);
    }

    @Override // p7.i
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(ByteBuffer byteBuffer, p7.g gVar) {
        return this.f16659a.q(byteBuffer);
    }
}
