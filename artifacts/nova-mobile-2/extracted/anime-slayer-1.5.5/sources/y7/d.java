package y7;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import java.io.IOException;

/* compiled from: BitmapImageDecoderResourceDecoder.java */
/* loaded from: classes.dex */
public final class d extends x7.a<Bitmap> {

    /* renamed from: b, reason: collision with root package name */
    public final s7.e f16656b = new s7.f();

    @Override // x7.a
    public r7.u<Bitmap> c(ImageDecoder.Source source, int i10, int i11, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener) throws IOException {
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, onHeaderDecodedListener);
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Decoded [");
            sb2.append(decodeBitmap.getWidth());
            sb2.append("x");
            sb2.append(decodeBitmap.getHeight());
            sb2.append("] for [");
            sb2.append(i10);
            sb2.append("x");
            sb2.append(i11);
            sb2.append("]");
        }
        return new e(decodeBitmap, this.f16656b);
    }
}
