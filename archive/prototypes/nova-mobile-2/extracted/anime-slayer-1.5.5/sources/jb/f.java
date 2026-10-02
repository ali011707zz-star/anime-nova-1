package jb;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;

/* compiled from: ImageHeaderParser.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f9153b = "Exif\u0000\u0000".getBytes(Charset.forName(HTTP.UTF_8));

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f9154c = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: a, reason: collision with root package name */
    public final b f9155a;

    /* compiled from: ImageHeaderParser.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f9156a;

        public a(byte[] bArr, int i10) {
            this.f9156a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i10);
        }

        public short a(int i10) {
            return this.f9156a.getShort(i10);
        }

        public int b(int i10) {
            return this.f9156a.getInt(i10);
        }

        public int c() {
            return this.f9156a.remaining();
        }

        public void d(ByteOrder byteOrder) {
            this.f9156a.order(byteOrder);
        }
    }

    /* compiled from: ImageHeaderParser.java */
    /* loaded from: classes.dex */
    public interface b {
        long a(long j10) throws IOException;

        int b(byte[] bArr, int i10) throws IOException;

        short c() throws IOException;

        int d() throws IOException;
    }

    /* compiled from: ImageHeaderParser.java */
    /* loaded from: classes.dex */
    public static class c implements b {

        /* renamed from: a, reason: collision with root package name */
        public final InputStream f9157a;

        public c(InputStream inputStream) {
            this.f9157a = inputStream;
        }

        @Override // jb.f.b
        public long a(long j10) throws IOException {
            if (j10 < 0) {
                return 0L;
            }
            long j11 = j10;
            while (j11 > 0) {
                long skip = this.f9157a.skip(j11);
                if (skip <= 0) {
                    if (this.f9157a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j11 -= skip;
            }
            return j10 - j11;
        }

        @Override // jb.f.b
        public int b(byte[] bArr, int i10) throws IOException {
            int i11 = i10;
            while (i11 > 0) {
                int read = this.f9157a.read(bArr, i10 - i11, i11);
                if (read == -1) {
                    break;
                }
                i11 -= read;
            }
            return i10 - i11;
        }

        @Override // jb.f.b
        public short c() throws IOException {
            return (short) (this.f9157a.read() & BaseProgressIndicator.MAX_ALPHA);
        }

        @Override // jb.f.b
        public int d() throws IOException {
            return ((this.f9157a.read() << 8) & 65280) | (this.f9157a.read() & BaseProgressIndicator.MAX_ALPHA);
        }
    }

    public f(InputStream inputStream) {
        this.f9155a = new c(inputStream);
    }

    public static int a(int i10, int i11) {
        return i10 + 2 + (i11 * 12);
    }

    public static void b(b1.a aVar, int i10, int i11, String str) {
        String[] strArr = {"FNumber", "DateTime", "DateTimeDigitized", "ExposureTime", "Flash", "FocalLength", "GPSAltitude", "GPSAltitudeRef", "GPSDateStamp", "GPSLatitude", "GPSLatitudeRef", "GPSLongitude", "GPSLongitudeRef", "GPSProcessingMethod", "GPSTimeStamp", "PhotographicSensitivity", "Make", "Model", "SubSecTime", "SubSecTimeDigitized", "SubSecTimeOriginal", "WhiteBalance"};
        try {
            b1.a aVar2 = new b1.a(str);
            for (int i12 = 0; i12 < 22; i12++) {
                String str2 = strArr[i12];
                String f10 = aVar.f(str2);
                if (!TextUtils.isEmpty(f10)) {
                    aVar2.N(str2, f10);
                }
            }
            aVar2.N("ImageWidth", String.valueOf(i10));
            aVar2.N("ImageLength", String.valueOf(i11));
            aVar2.N("Orientation", "0");
            aVar2.L();
        } catch (IOException e10) {
            e10.getMessage();
        }
    }

    public static boolean d(int i10) {
        return (i10 & 65496) == 65496 || i10 == 19789 || i10 == 18761;
    }

    public static int g(a aVar) {
        ByteOrder byteOrder;
        short a10 = aVar.a(6);
        if (a10 == 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (a10 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unknown endianness = ");
                sb2.append((int) a10);
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        aVar.d(byteOrder);
        int b10 = aVar.b(10) + 6;
        short a11 = aVar.a(b10);
        for (int i10 = 0; i10 < a11; i10++) {
            int a12 = a(b10, i10);
            short a13 = aVar.a(a12);
            if (a13 == 274) {
                short a14 = aVar.a(a12 + 2);
                if (a14 >= 1 && a14 <= 12) {
                    int b11 = aVar.b(a12 + 4);
                    if (b11 >= 0) {
                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Got tagIndex=");
                            sb3.append(i10);
                            sb3.append(" tagType=");
                            sb3.append((int) a13);
                            sb3.append(" formatCode=");
                            sb3.append((int) a14);
                            sb3.append(" componentCount=");
                            sb3.append(b11);
                        }
                        int i11 = b11 + f9154c[a14];
                        if (i11 > 4) {
                            if (Log.isLoggable("ImageHeaderParser", 3)) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("Got byte count > 4, not orientation, continuing, formatCode=");
                                sb4.append((int) a14);
                            }
                        } else {
                            int i12 = a12 + 8;
                            if (i12 >= 0 && i12 <= aVar.c()) {
                                if (i11 >= 0 && i11 + i12 <= aVar.c()) {
                                    return aVar.a(i12);
                                }
                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("Illegal number of bytes for TI tag data tagType=");
                                    sb5.append((int) a13);
                                }
                            } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append("Illegal tagValueOffset=");
                                sb6.append(i12);
                                sb6.append(" tagType=");
                                sb6.append((int) a13);
                            }
                        }
                    } else {
                        continue;
                    }
                } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append("Got invalid format code = ");
                    sb7.append((int) a14);
                }
            }
        }
        return -1;
    }

    public int c() throws IOException {
        int d10 = this.f9155a.d();
        if (!d(d10)) {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Parser doesn't handle magic number: ");
                sb2.append(d10);
            }
            return -1;
        }
        int f10 = f();
        if (f10 == -1) {
            return -1;
        }
        return h(new byte[f10], f10);
    }

    public final boolean e(byte[] bArr, int i10) {
        boolean z10 = bArr != null && i10 > f9153b.length;
        if (z10) {
            int i11 = 0;
            while (true) {
                byte[] bArr2 = f9153b;
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

    public final int f() throws IOException {
        short c10;
        int d10;
        long j10;
        long a10;
        do {
            short c11 = this.f9155a.c();
            if (c11 != 255) {
                if (Log.isLoggable("ImageHeaderParser", 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unknown segmentId=");
                    sb2.append((int) c11);
                }
                return -1;
            }
            c10 = this.f9155a.c();
            if (c10 == 218 || c10 == 217) {
                return -1;
            }
            d10 = this.f9155a.d() - 2;
            if (c10 == 225) {
                return d10;
            }
            j10 = d10;
            a10 = this.f9155a.a(j10);
        } while (a10 == j10);
        if (Log.isLoggable("ImageHeaderParser", 3)) {
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

    public final int h(byte[] bArr, int i10) throws IOException {
        int b10 = this.f9155a.b(bArr, i10);
        if (b10 != i10) {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unable to read exif segment data, length: ");
                sb2.append(i10);
                sb2.append(", actually read: ");
                sb2.append(b10);
            }
            return -1;
        }
        if (e(bArr, i10)) {
            return g(new a(bArr, i10));
        }
        return -1;
    }
}
