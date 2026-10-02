package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import l8.j;
import org.apache.http.protocol.HTTP;

/* loaded from: classes.dex */
public final class DefaultImageHeaderParser implements ImageHeaderParser {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f4640a = "Exif\u0000\u0000".getBytes(Charset.forName(HTTP.UTF_8));

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f4641b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* loaded from: classes.dex */
    public interface Reader {

        /* loaded from: classes.dex */
        public static final class EndOfFileException extends IOException {
            public EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        long a(long j10) throws IOException;

        int b(byte[] bArr, int i10) throws IOException;

        short c() throws IOException;

        int d() throws IOException;
    }

    /* loaded from: classes.dex */
    public static final class a implements Reader {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f4642a;

        public a(ByteBuffer byteBuffer) {
            this.f4642a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long a(long j10) {
            int min = (int) Math.min(this.f4642a.remaining(), j10);
            ByteBuffer byteBuffer = this.f4642a;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int b(byte[] bArr, int i10) {
            int min = Math.min(i10, this.f4642a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f4642a.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short c() throws Reader.EndOfFileException {
            if (this.f4642a.remaining() >= 1) {
                return (short) (this.f4642a.get() & 255);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int d() throws Reader.EndOfFileException {
            return (c() << 8) | c();
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f4643a;

        public b(byte[] bArr, int i10) {
            this.f4643a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i10);
        }

        public short a(int i10) {
            if (c(i10, 2)) {
                return this.f4643a.getShort(i10);
            }
            return (short) -1;
        }

        public int b(int i10) {
            if (c(i10, 4)) {
                return this.f4643a.getInt(i10);
            }
            return -1;
        }

        public final boolean c(int i10, int i11) {
            return this.f4643a.remaining() - i10 >= i11;
        }

        public int d() {
            return this.f4643a.remaining();
        }

        public void e(ByteOrder byteOrder) {
            this.f4643a.order(byteOrder);
        }
    }

    /* loaded from: classes.dex */
    public static final class c implements Reader {

        /* renamed from: a, reason: collision with root package name */
        public final InputStream f4644a;

        public c(InputStream inputStream) {
            this.f4644a = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public long a(long j10) throws IOException {
            if (j10 < 0) {
                return 0L;
            }
            long j11 = j10;
            while (j11 > 0) {
                long skip = this.f4644a.skip(j11);
                if (skip <= 0) {
                    if (this.f4644a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j11 -= skip;
            }
            return j10 - j11;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int b(byte[] bArr, int i10) throws IOException {
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10 && (i12 = this.f4644a.read(bArr, i11, i10 - i11)) != -1) {
                i11 += i12;
            }
            if (i11 == 0 && i12 == -1) {
                throw new Reader.EndOfFileException();
            }
            return i11;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public short c() throws IOException {
            int read = this.f4644a.read();
            if (read != -1) {
                return (short) read;
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public int d() throws IOException {
            return (c() << 8) | c();
        }
    }

    public static int d(int i10, int i11) {
        return i10 + 2 + (i11 * 12);
    }

    public static boolean g(int i10) {
        return (i10 & 65496) == 65496 || i10 == 19789 || i10 == 18761;
    }

    public static int j(b bVar) {
        ByteOrder byteOrder;
        short a10 = bVar.a(6);
        if (a10 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (a10 != 19789) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unknown endianness = ");
                sb2.append((int) a10);
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        bVar.e(byteOrder);
        int b10 = bVar.b(10) + 6;
        short a11 = bVar.a(b10);
        for (int i10 = 0; i10 < a11; i10++) {
            int d10 = d(b10, i10);
            short a12 = bVar.a(d10);
            if (a12 == 274) {
                short a13 = bVar.a(d10 + 2);
                if (a13 >= 1 && a13 <= 12) {
                    int b11 = bVar.b(d10 + 4);
                    if (b11 >= 0) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Got tagIndex=");
                            sb3.append(i10);
                            sb3.append(" tagType=");
                            sb3.append((int) a12);
                            sb3.append(" formatCode=");
                            sb3.append((int) a13);
                            sb3.append(" componentCount=");
                            sb3.append(b11);
                        }
                        int i11 = b11 + f4641b[a13];
                        if (i11 > 4) {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("Got byte count > 4, not orientation, continuing, formatCode=");
                                sb4.append((int) a13);
                            }
                        } else {
                            int i12 = d10 + 8;
                            if (i12 >= 0 && i12 <= bVar.d()) {
                                if (i11 >= 0 && i11 + i12 <= bVar.d()) {
                                    return bVar.a(i12);
                                }
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("Illegal number of bytes for TI tag data tagType=");
                                    sb5.append((int) a12);
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append("Illegal tagValueOffset=");
                                sb6.append(i12);
                                sb6.append(" tagType=");
                                sb6.append((int) a12);
                            }
                        }
                    } else {
                        continue;
                    }
                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append("Got invalid format code = ");
                    sb7.append((int) a13);
                }
            }
        }
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public ImageHeaderParser.ImageType a(ByteBuffer byteBuffer) throws IOException {
        return f(new a((ByteBuffer) j.d(byteBuffer)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public ImageHeaderParser.ImageType b(InputStream inputStream) throws IOException {
        return f(new c((InputStream) j.d(inputStream)));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int c(InputStream inputStream, s7.b bVar) throws IOException {
        return e(new c((InputStream) j.d(inputStream)), (s7.b) j.d(bVar));
    }

    public final int e(Reader reader, s7.b bVar) throws IOException {
        try {
            int d10 = reader.d();
            if (!g(d10)) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Parser doesn't handle magic number: ");
                    sb2.append(d10);
                }
                return -1;
            }
            int i10 = i(reader);
            if (i10 == -1) {
                return -1;
            }
            byte[] bArr = (byte[]) bVar.e(i10, byte[].class);
            try {
                return k(reader, bArr, i10);
            } finally {
                bVar.d(bArr);
            }
        } catch (Reader.EndOfFileException unused) {
            return -1;
        }
    }

    public final ImageHeaderParser.ImageType f(Reader reader) throws IOException {
        try {
            int d10 = reader.d();
            if (d10 == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int c10 = (d10 << 8) | reader.c();
            if (c10 == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int c11 = (c10 << 8) | reader.c();
            if (c11 == -1991225785) {
                reader.a(21L);
                try {
                    return reader.c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            }
            if (c11 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            reader.a(4L);
            if (((reader.d() << 16) | reader.d()) != 1464156752) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int d11 = (reader.d() << 16) | reader.d();
            if ((d11 & (-256)) != 1448097792) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int i10 = d11 & BaseProgressIndicator.MAX_ALPHA;
            if (i10 == 88) {
                reader.a(4L);
                return (reader.c() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
            if (i10 == 76) {
                reader.a(4L);
                return (reader.c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
            return ImageHeaderParser.ImageType.WEBP;
        } catch (Reader.EndOfFileException unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    public final boolean h(byte[] bArr, int i10) {
        boolean z10 = bArr != null && i10 > f4640a.length;
        if (z10) {
            int i11 = 0;
            while (true) {
                byte[] bArr2 = f4640a;
                if (i11 >= bArr2.length) {
                    break;
                }
                if (bArr[i11] != bArr2[i11]) {
                    return false;
                }
                i11++;
            }
        }
        return z10;
    }

    public final int i(Reader reader) throws IOException {
        short c10;
        int d10;
        long j10;
        long a10;
        do {
            short c11 = reader.c();
            if (c11 != 255) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unknown segmentId=");
                    sb2.append((int) c11);
                }
                return -1;
            }
            c10 = reader.c();
            if (c10 == 218 || c10 == 217) {
                return -1;
            }
            d10 = reader.d() - 2;
            if (c10 == 225) {
                return d10;
            }
            j10 = d10;
            a10 = reader.a(j10);
        } while (a10 == j10);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unable to skip enough data, type: ");
            sb3.append((int) c10);
            sb3.append(", wanted to skip: ");
            sb3.append(d10);
            sb3.append(", but actually skipped: ");
            sb3.append(a10);
        }
        return -1;
    }

    public final int k(Reader reader, byte[] bArr, int i10) throws IOException {
        int b10 = reader.b(bArr, i10);
        if (b10 != i10) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unable to read exif segment data, length: ");
                sb2.append(i10);
                sb2.append(", actually read: ");
                sb2.append(b10);
            }
            return -1;
        }
        if (h(bArr, i10)) {
            return j(new b(bArr, i10));
        }
        return -1;
    }
}
