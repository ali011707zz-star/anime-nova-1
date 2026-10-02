package x7;

import android.annotation.SuppressLint;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import java.io.IOException;
import p7.f;
import p7.g;
import p7.h;
import p7.i;
import r7.u;
import y7.l;
import y7.m;
import y7.r;

/* compiled from: ImageDecoderResourceDecoder.java */
/* loaded from: classes.dex */
public abstract class a<T> implements i<ImageDecoder.Source, T> {

    /* renamed from: a, reason: collision with root package name */
    public final r f16123a = r.a();

    /* compiled from: ImageDecoderResourceDecoder.java */
    /* renamed from: x7.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0415a implements ImageDecoder.OnHeaderDecodedListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f16124a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f16125b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f16126c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ p7.b f16127d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ l f16128e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ h f16129f;

        /* compiled from: ImageDecoderResourceDecoder.java */
        /* renamed from: x7.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0416a implements ImageDecoder.OnPartialImageListener {
            public C0416a() {
            }

            @Override // android.graphics.ImageDecoder.OnPartialImageListener
            public boolean onPartialImage(ImageDecoder.DecodeException decodeException) {
                return false;
            }
        }

        public C0415a(int i10, int i11, boolean z10, p7.b bVar, l lVar, h hVar) {
            this.f16124a = i10;
            this.f16125b = i11;
            this.f16126c = z10;
            this.f16127d = bVar;
            this.f16128e = lVar;
            this.f16129f = hVar;
        }

        @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
        @SuppressLint({"Override"})
        public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
            boolean z10 = false;
            if (a.this.f16123a.c(this.f16124a, this.f16125b, this.f16126c, false)) {
                imageDecoder.setAllocator(3);
            } else {
                imageDecoder.setAllocator(1);
            }
            if (this.f16127d == p7.b.PREFER_RGB_565) {
                imageDecoder.setMemorySizePolicy(0);
            }
            imageDecoder.setOnPartialImageListener(new C0416a());
            Size size = imageInfo.getSize();
            int i10 = this.f16124a;
            if (i10 == Integer.MIN_VALUE) {
                i10 = size.getWidth();
            }
            int i11 = this.f16125b;
            if (i11 == Integer.MIN_VALUE) {
                i11 = size.getHeight();
            }
            float b10 = this.f16128e.b(size.getWidth(), size.getHeight(), i10, i11);
            int round = Math.round(size.getWidth() * b10);
            int round2 = Math.round(size.getHeight() * b10);
            if (Log.isLoggable("ImageDecoder", 2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Resizing from [");
                sb2.append(size.getWidth());
                sb2.append("x");
                sb2.append(size.getHeight());
                sb2.append("] to [");
                sb2.append(round);
                sb2.append("x");
                sb2.append(round2);
                sb2.append("] scaleFactor: ");
                sb2.append(b10);
            }
            imageDecoder.setTargetSize(round, round2);
            int i12 = Build.VERSION.SDK_INT;
            if (i12 < 28) {
                if (i12 >= 26) {
                    imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                }
            } else {
                if (this.f16129f == h.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) {
                    z10 = true;
                }
                imageDecoder.setTargetColorSpace(ColorSpace.get(z10 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            }
        }
    }

    public abstract u<T> c(ImageDecoder.Source source, int i10, int i11, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener) throws IOException;

    @Override // p7.i
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final u<T> b(ImageDecoder.Source source, int i10, int i11, g gVar) throws IOException {
        p7.b bVar = (p7.b) gVar.c(m.f16676f);
        l lVar = (l) gVar.c(l.f16671h);
        f<Boolean> fVar = m.f16680j;
        return c(source, i10, i11, new C0415a(i10, i11, gVar.c(fVar) != null && ((Boolean) gVar.c(fVar)).booleanValue(), bVar, lVar, (h) gVar.c(m.f16677g)));
    }

    @Override // p7.i
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final boolean a(ImageDecoder.Source source, g gVar) {
        return true;
    }
}
