package y7;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* compiled from: ImageReader.java */
/* loaded from: classes.dex */
public interface s {

    /* compiled from: ImageReader.java */
    /* loaded from: classes.dex */
    public static final class a implements s {

        /* renamed from: a, reason: collision with root package name */
        public final com.bumptech.glide.load.data.k f16701a;

        /* renamed from: b, reason: collision with root package name */
        public final s7.b f16702b;

        /* renamed from: c, reason: collision with root package name */
        public final List<ImageHeaderParser> f16703c;

        public a(InputStream inputStream, List<ImageHeaderParser> list, s7.b bVar) {
            this.f16702b = (s7.b) l8.j.d(bVar);
            this.f16703c = (List) l8.j.d(list);
            this.f16701a = new com.bumptech.glide.load.data.k(inputStream, bVar);
        }

        @Override // y7.s
        public Bitmap a(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeStream(this.f16701a.a(), null, options);
        }

        @Override // y7.s
        public void b() {
            this.f16701a.c();
        }

        @Override // y7.s
        public int c() throws IOException {
            return com.bumptech.glide.load.a.b(this.f16703c, this.f16701a.a(), this.f16702b);
        }

        @Override // y7.s
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.a.e(this.f16703c, this.f16701a.a(), this.f16702b);
        }
    }

    /* compiled from: ImageReader.java */
    /* loaded from: classes.dex */
    public static final class b implements s {

        /* renamed from: a, reason: collision with root package name */
        public final s7.b f16704a;

        /* renamed from: b, reason: collision with root package name */
        public final List<ImageHeaderParser> f16705b;

        /* renamed from: c, reason: collision with root package name */
        public final ParcelFileDescriptorRewinder f16706c;

        public b(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, s7.b bVar) {
            this.f16704a = (s7.b) l8.j.d(bVar);
            this.f16705b = (List) l8.j.d(list);
            this.f16706c = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // y7.s
        public Bitmap a(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeFileDescriptor(this.f16706c.a().getFileDescriptor(), null, options);
        }

        @Override // y7.s
        public void b() {
        }

        @Override // y7.s
        public int c() throws IOException {
            return com.bumptech.glide.load.a.a(this.f16705b, this.f16706c, this.f16704a);
        }

        @Override // y7.s
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.a.d(this.f16705b, this.f16706c, this.f16704a);
        }
    }

    Bitmap a(BitmapFactory.Options options) throws IOException;

    void b();

    int c() throws IOException;

    ImageHeaderParser.ImageType d() throws IOException;
}
