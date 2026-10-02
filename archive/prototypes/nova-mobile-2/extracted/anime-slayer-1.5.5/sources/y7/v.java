package y7;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.IOException;

/* compiled from: ParcelFileDescriptorBitmapDecoder.java */
/* loaded from: classes.dex */
public final class v implements p7.i<ParcelFileDescriptor, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final m f16710a;

    public v(m mVar) {
        this.f16710a = mVar;
    }

    @Override // p7.i
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public r7.u<Bitmap> b(ParcelFileDescriptor parcelFileDescriptor, int i10, int i11, p7.g gVar) throws IOException {
        return this.f16710a.d(parcelFileDescriptor, i10, i11, gVar);
    }

    @Override // p7.i
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(ParcelFileDescriptor parcelFileDescriptor, p7.g gVar) {
        return this.f16710a.o(parcelFileDescriptor);
    }
}
