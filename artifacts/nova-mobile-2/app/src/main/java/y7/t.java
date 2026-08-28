package y7;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: InputStreamBitmapImageDecoderResourceDecoder.java */
/* loaded from: classes.dex */
public final class t implements p7.i<InputStream, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final d f16707a = new d();

    @Override // p7.i
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public r7.u<Bitmap> b(InputStream inputStream, int i10, int i11, p7.g gVar) throws IOException {
        return this.f16707a.b(ImageDecoder.createSource(l8.a.b(inputStream)), i10, i11, gVar);
    }

    @Override // p7.i
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(InputStream inputStream, p7.g gVar) throws IOException {
        return true;
    }
}
