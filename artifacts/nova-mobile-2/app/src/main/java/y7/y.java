package y7;

import android.graphics.Bitmap;
import java.io.IOException;
import java.io.InputStream;
import y7.m;

/* compiled from: StreamBitmapDecoder.java */
/* loaded from: classes.dex */
public class y implements p7.i<InputStream, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final m f16719a;

    /* renamed from: b, reason: collision with root package name */
    public final s7.b f16720b;

    /* compiled from: StreamBitmapDecoder.java */
    /* loaded from: classes.dex */
    public static class a implements m.b {

        /* renamed from: a, reason: collision with root package name */
        public final w f16721a;

        /* renamed from: b, reason: collision with root package name */
        public final l8.d f16722b;

        public a(w wVar, l8.d dVar) {
            this.f16721a = wVar;
            this.f16722b = dVar;
        }

        @Override // y7.m.b
        public void a(s7.e eVar, Bitmap bitmap) throws IOException {
            IOException b10 = this.f16722b.b();
            if (b10 != null) {
                if (bitmap != null) {
                    eVar.d(bitmap);
                    throw b10;
                }
                throw b10;
            }
        }

        @Override // y7.m.b
        public void b() {
            this.f16721a.d();
        }
    }

    public y(m mVar, s7.b bVar) {
        this.f16719a = mVar;
        this.f16720b = bVar;
    }

    @Override // p7.i
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public r7.u<Bitmap> b(InputStream inputStream, int i10, int i11, p7.g gVar) throws IOException {
        w wVar;
        boolean z10;
        if (inputStream instanceof w) {
            wVar = (w) inputStream;
            z10 = false;
        } else {
            wVar = new w(inputStream, this.f16720b);
            z10 = true;
        }
        l8.d d10 = l8.d.d(wVar);
        try {
            return this.f16719a.f(new l8.h(d10), i10, i11, gVar, new a(wVar, d10));
        } finally {
            d10.release();
            if (z10) {
                wVar.release();
            }
        }
    }

    @Override // p7.i
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(InputStream inputStream, p7.g gVar) {
        return this.f16719a.p(inputStream);
    }
}
