package com.bumptech.glide.load;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import y7.w;

/* compiled from: ImageHeaderParserUtils.java */
/* loaded from: classes.dex */
public final class a {

    /* compiled from: ImageHeaderParserUtils.java */
    /* renamed from: com.bumptech.glide.load.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0087a implements g {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ InputStream f4593a;

        public C0087a(InputStream inputStream) {
            this.f4593a = inputStream;
        }

        @Override // com.bumptech.glide.load.a.g
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.b(this.f4593a);
            } finally {
                this.f4593a.reset();
            }
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    public class b implements g {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ByteBuffer f4594a;

        public b(ByteBuffer byteBuffer) {
            this.f4594a = byteBuffer;
        }

        @Override // com.bumptech.glide.load.a.g
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            return imageHeaderParser.a(this.f4594a);
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    public class c implements g {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ParcelFileDescriptorRewinder f4595a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ s7.b f4596b;

        public c(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, s7.b bVar) {
            this.f4595a = parcelFileDescriptorRewinder;
            this.f4596b = bVar;
        }

        @Override // com.bumptech.glide.load.a.g
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            w wVar = null;
            try {
                w wVar2 = new w(new FileInputStream(this.f4595a.a().getFileDescriptor()), this.f4596b);
                try {
                    ImageHeaderParser.ImageType b10 = imageHeaderParser.b(wVar2);
                    try {
                        wVar2.close();
                    } catch (IOException unused) {
                    }
                    this.f4595a.a();
                    return b10;
                } catch (Throwable th) {
                    th = th;
                    wVar = wVar2;
                    if (wVar != null) {
                        try {
                            wVar.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f4595a.a();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    public class d implements f {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ InputStream f4597a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ s7.b f4598b;

        public d(InputStream inputStream, s7.b bVar) {
            this.f4597a = inputStream;
            this.f4598b = bVar;
        }

        @Override // com.bumptech.glide.load.a.f
        public int a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.c(this.f4597a, this.f4598b);
            } finally {
                this.f4597a.reset();
            }
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    public class e implements f {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ParcelFileDescriptorRewinder f4599a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ s7.b f4600b;

        public e(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, s7.b bVar) {
            this.f4599a = parcelFileDescriptorRewinder;
            this.f4600b = bVar;
        }

        @Override // com.bumptech.glide.load.a.f
        public int a(ImageHeaderParser imageHeaderParser) throws IOException {
            w wVar = null;
            try {
                w wVar2 = new w(new FileInputStream(this.f4599a.a().getFileDescriptor()), this.f4600b);
                try {
                    int c10 = imageHeaderParser.c(wVar2, this.f4600b);
                    try {
                        wVar2.close();
                    } catch (IOException unused) {
                    }
                    this.f4599a.a();
                    return c10;
                } catch (Throwable th) {
                    th = th;
                    wVar = wVar2;
                    if (wVar != null) {
                        try {
                            wVar.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f4599a.a();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    public interface f {
        int a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* loaded from: classes.dex */
    public interface g {
        ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    public static int a(List<ImageHeaderParser> list, ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, s7.b bVar) throws IOException {
        return c(list, new e(parcelFileDescriptorRewinder, bVar));
    }

    public static int b(List<ImageHeaderParser> list, InputStream inputStream, s7.b bVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new w(inputStream, bVar);
        }
        inputStream.mark(5242880);
        return c(list, new d(inputStream, bVar));
    }

    public static int c(List<ImageHeaderParser> list, f fVar) throws IOException {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            int a10 = fVar.a(list.get(i10));
            if (a10 != -1) {
                return a10;
            }
        }
        return -1;
    }

    public static ImageHeaderParser.ImageType d(List<ImageHeaderParser> list, ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, s7.b bVar) throws IOException {
        return g(list, new c(parcelFileDescriptorRewinder, bVar));
    }

    public static ImageHeaderParser.ImageType e(List<ImageHeaderParser> list, InputStream inputStream, s7.b bVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new w(inputStream, bVar);
        }
        inputStream.mark(5242880);
        return g(list, new C0087a(inputStream));
    }

    public static ImageHeaderParser.ImageType f(List<ImageHeaderParser> list, ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        return g(list, new b(byteBuffer));
    }

    public static ImageHeaderParser.ImageType g(List<ImageHeaderParser> list, g gVar) throws IOException {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            ImageHeaderParser.ImageType a10 = gVar.a(list.get(i10));
            if (a10 != ImageHeaderParser.ImageType.UNKNOWN) {
                return a10;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
