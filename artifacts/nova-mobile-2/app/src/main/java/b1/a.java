package b1;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import android.util.Pair;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.UtcDates;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import io.wax911.support.util.SupportStateUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.http.HttpStatus;

/* compiled from: ExifInterface.java */
/* loaded from: classes.dex */
public class a {
    public static SimpleDateFormat F;
    public static final e[] J;
    public static final e[] K;
    public static final e[] L;
    public static final e[] M;
    public static final e[] N;
    public static final e O;
    public static final e[] P;
    public static final e[] Q;
    public static final e[] R;
    public static final e[] S;
    public static final e[][] T;
    public static final e[] U;
    public static final e V;
    public static final e W;
    public static final HashMap<Integer, e>[] X;
    public static final HashMap<String, e>[] Y;
    public static final HashSet<String> Z;

    /* renamed from: a0, reason: collision with root package name */
    public static final HashMap<Integer, Integer> f3441a0;

    /* renamed from: b0, reason: collision with root package name */
    public static final Charset f3442b0;

    /* renamed from: c0, reason: collision with root package name */
    public static final byte[] f3443c0;

    /* renamed from: d0, reason: collision with root package name */
    public static final byte[] f3444d0;

    /* renamed from: e0, reason: collision with root package name */
    public static final Pattern f3445e0;

    /* renamed from: f0, reason: collision with root package name */
    public static final Pattern f3446f0;

    /* renamed from: a, reason: collision with root package name */
    public String f3454a;

    /* renamed from: b, reason: collision with root package name */
    public FileDescriptor f3455b;

    /* renamed from: c, reason: collision with root package name */
    public AssetManager.AssetInputStream f3456c;

    /* renamed from: d, reason: collision with root package name */
    public int f3457d;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap<String, d>[] f3458e;

    /* renamed from: f, reason: collision with root package name */
    public Set<Integer> f3459f;

    /* renamed from: g, reason: collision with root package name */
    public ByteOrder f3460g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3461h;

    /* renamed from: i, reason: collision with root package name */
    public int f3462i;

    /* renamed from: j, reason: collision with root package name */
    public int f3463j;

    /* renamed from: k, reason: collision with root package name */
    public byte[] f3464k;

    /* renamed from: l, reason: collision with root package name */
    public int f3465l;

    /* renamed from: m, reason: collision with root package name */
    public int f3466m;

    /* renamed from: n, reason: collision with root package name */
    public int f3467n;

    /* renamed from: o, reason: collision with root package name */
    public int f3468o;

    /* renamed from: p, reason: collision with root package name */
    public int f3469p;

    /* renamed from: q, reason: collision with root package name */
    public int f3470q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f3471r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f3472s;

    /* renamed from: t, reason: collision with root package name */
    public static final boolean f3447t = Log.isLoggable("ExifInterface", 3);

    /* renamed from: u, reason: collision with root package name */
    public static final List<Integer> f3448u = Arrays.asList(1, 6, 3, 8);

    /* renamed from: v, reason: collision with root package name */
    public static final List<Integer> f3449v = Arrays.asList(2, 7, 4, 5);

    /* renamed from: w, reason: collision with root package name */
    public static final int[] f3450w = {8, 8, 8};

    /* renamed from: x, reason: collision with root package name */
    public static final int[] f3451x = {4};

    /* renamed from: y, reason: collision with root package name */
    public static final int[] f3452y = {8};

    /* renamed from: z, reason: collision with root package name */
    public static final byte[] f3453z = {-1, -40, -1};
    public static final byte[] A = {102, 116, 121, 112};
    public static final byte[] B = {109, 105, 102, 49};
    public static final byte[] C = {104, 101, 105, 99};
    public static final byte[] D = {79, 76, 89, 77, 80, 0};
    public static final byte[] E = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    public static final String[] G = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    public static final int[] H = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    public static final byte[] I = {65, 83, 67, 73, 73, 0, 0, 0};

    /* compiled from: ExifInterface.java */
    /* renamed from: b1.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0062a extends MediaDataSource {

        /* renamed from: f, reason: collision with root package name */
        public long f3473f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ b f3474g;

        public C0062a(b bVar) {
            this.f3474g = bVar;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // android.media.MediaDataSource
        public long getSize() throws IOException {
            return -1L;
        }

        @Override // android.media.MediaDataSource
        public int readAt(long j10, byte[] bArr, int i10, int i11) throws IOException {
            if (i11 == 0) {
                return 0;
            }
            if (j10 < 0) {
                return -1;
            }
            try {
                long j11 = this.f3473f;
                if (j11 != j10) {
                    if (j11 >= 0 && j10 >= j11 + this.f3474g.available()) {
                        return -1;
                    }
                    this.f3474g.k(j10);
                    this.f3473f = j10;
                }
                if (i11 > this.f3474g.available()) {
                    i11 = this.f3474g.available();
                }
                int read = this.f3474g.read(bArr, i10, i11);
                if (read >= 0) {
                    this.f3473f += read;
                    return read;
                }
            } catch (IOException unused) {
            }
            this.f3473f = -1L;
            return -1;
        }
    }

    /* compiled from: ExifInterface.java */
    /* loaded from: classes.dex */
    public static class c extends FilterOutputStream {

        /* renamed from: f, reason: collision with root package name */
        public final OutputStream f3482f;

        /* renamed from: g, reason: collision with root package name */
        public ByteOrder f3483g;

        public c(OutputStream outputStream, ByteOrder byteOrder) {
            super(outputStream);
            this.f3482f = outputStream;
            this.f3483g = byteOrder;
        }

        public void b(ByteOrder byteOrder) {
            this.f3483g = byteOrder;
        }

        public void d(int i10) throws IOException {
            this.f3482f.write(i10);
        }

        public void h(int i10) throws IOException {
            ByteOrder byteOrder = this.f3483g;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.f3482f.write((i10 >>> 0) & BaseProgressIndicator.MAX_ALPHA);
                this.f3482f.write((i10 >>> 8) & BaseProgressIndicator.MAX_ALPHA);
                this.f3482f.write((i10 >>> 16) & BaseProgressIndicator.MAX_ALPHA);
                this.f3482f.write((i10 >>> 24) & BaseProgressIndicator.MAX_ALPHA);
                return;
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.f3482f.write((i10 >>> 24) & BaseProgressIndicator.MAX_ALPHA);
                this.f3482f.write((i10 >>> 16) & BaseProgressIndicator.MAX_ALPHA);
                this.f3482f.write((i10 >>> 8) & BaseProgressIndicator.MAX_ALPHA);
                this.f3482f.write((i10 >>> 0) & BaseProgressIndicator.MAX_ALPHA);
            }
        }

        public void k(short s10) throws IOException {
            ByteOrder byteOrder = this.f3483g;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.f3482f.write((s10 >>> 0) & BaseProgressIndicator.MAX_ALPHA);
                this.f3482f.write((s10 >>> 8) & BaseProgressIndicator.MAX_ALPHA);
            } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.f3482f.write((s10 >>> 8) & BaseProgressIndicator.MAX_ALPHA);
                this.f3482f.write((s10 >>> 0) & BaseProgressIndicator.MAX_ALPHA);
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f3482f.write(bArr);
        }

        public void x(long j10) throws IOException {
            h((int) j10);
        }

        public void z(int i10) throws IOException {
            k((short) i10);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f3482f.write(bArr, i10, i11);
        }
    }

    /* compiled from: ExifInterface.java */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final int f3484a;

        /* renamed from: b, reason: collision with root package name */
        public final int f3485b;

        /* renamed from: c, reason: collision with root package name */
        public final long f3486c;

        /* renamed from: d, reason: collision with root package name */
        public final byte[] f3487d;

        public d(int i10, int i11, byte[] bArr) {
            this(i10, i11, -1L, bArr);
        }

        public static d a(String str) {
            if (str.length() == 1 && str.charAt(0) >= '0' && str.charAt(0) <= '1') {
                return new d(1, 1, new byte[]{(byte) (str.charAt(0) - '0')});
            }
            byte[] bytes = str.getBytes(a.f3442b0);
            return new d(1, bytes.length, bytes);
        }

        public static d b(double[] dArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.H[12] * dArr.length]);
            wrap.order(byteOrder);
            for (double d10 : dArr) {
                wrap.putDouble(d10);
            }
            return new d(12, dArr.length, wrap.array());
        }

        public static d c(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.H[9] * iArr.length]);
            wrap.order(byteOrder);
            for (int i10 : iArr) {
                wrap.putInt(i10);
            }
            return new d(9, iArr.length, wrap.array());
        }

        public static d d(f[] fVarArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.H[10] * fVarArr.length]);
            wrap.order(byteOrder);
            for (f fVar : fVarArr) {
                wrap.putInt((int) fVar.f3492a);
                wrap.putInt((int) fVar.f3493b);
            }
            return new d(10, fVarArr.length, wrap.array());
        }

        public static d e(String str) {
            byte[] bytes = (str + (char) 0).getBytes(a.f3442b0);
            return new d(2, bytes.length, bytes);
        }

        public static d f(long j10, ByteOrder byteOrder) {
            return g(new long[]{j10}, byteOrder);
        }

        public static d g(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.H[4] * jArr.length]);
            wrap.order(byteOrder);
            for (long j10 : jArr) {
                wrap.putInt((int) j10);
            }
            return new d(4, jArr.length, wrap.array());
        }

        public static d h(f fVar, ByteOrder byteOrder) {
            return i(new f[]{fVar}, byteOrder);
        }

        public static d i(f[] fVarArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.H[5] * fVarArr.length]);
            wrap.order(byteOrder);
            for (f fVar : fVarArr) {
                wrap.putInt((int) fVar.f3492a);
                wrap.putInt((int) fVar.f3493b);
            }
            return new d(5, fVarArr.length, wrap.array());
        }

        public static d j(int i10, ByteOrder byteOrder) {
            return k(new int[]{i10}, byteOrder);
        }

        public static d k(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[a.H[3] * iArr.length]);
            wrap.order(byteOrder);
            for (int i10 : iArr) {
                wrap.putShort((short) i10);
            }
            return new d(3, iArr.length, wrap.array());
        }

        public double l(ByteOrder byteOrder) {
            Object o10 = o(byteOrder);
            if (o10 != null) {
                if (o10 instanceof String) {
                    return Double.parseDouble((String) o10);
                }
                if (o10 instanceof long[]) {
                    if (((long[]) o10).length == 1) {
                        return r5[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (o10 instanceof int[]) {
                    if (((int[]) o10).length == 1) {
                        return r5[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (o10 instanceof double[]) {
                    double[] dArr = (double[]) o10;
                    if (dArr.length == 1) {
                        return dArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (o10 instanceof f[]) {
                    f[] fVarArr = (f[]) o10;
                    if (fVarArr.length == 1) {
                        return fVarArr[0].a();
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                throw new NumberFormatException("Couldn't find a double value");
            }
            throw new NumberFormatException("NULL can't be converted to a double value");
        }

        public int m(ByteOrder byteOrder) {
            Object o10 = o(byteOrder);
            if (o10 != null) {
                if (o10 instanceof String) {
                    return Integer.parseInt((String) o10);
                }
                if (o10 instanceof long[]) {
                    long[] jArr = (long[]) o10;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (o10 instanceof int[]) {
                    int[] iArr = (int[]) o10;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                throw new NumberFormatException("Couldn't find a integer value");
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        public String n(ByteOrder byteOrder) {
            Object o10 = o(byteOrder);
            if (o10 == null) {
                return null;
            }
            if (o10 instanceof String) {
                return (String) o10;
            }
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            if (o10 instanceof long[]) {
                long[] jArr = (long[]) o10;
                while (i10 < jArr.length) {
                    sb2.append(jArr[i10]);
                    i10++;
                    if (i10 != jArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (o10 instanceof int[]) {
                int[] iArr = (int[]) o10;
                while (i10 < iArr.length) {
                    sb2.append(iArr[i10]);
                    i10++;
                    if (i10 != iArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (o10 instanceof double[]) {
                double[] dArr = (double[]) o10;
                while (i10 < dArr.length) {
                    sb2.append(dArr[i10]);
                    i10++;
                    if (i10 != dArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (!(o10 instanceof f[])) {
                return null;
            }
            f[] fVarArr = (f[]) o10;
            while (i10 < fVarArr.length) {
                sb2.append(fVarArr[i10].f3492a);
                sb2.append('/');
                sb2.append(fVarArr[i10].f3493b);
                i10++;
                if (i10 != fVarArr.length) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }

        public Object o(ByteOrder byteOrder) {
            b bVar;
            byte b10;
            byte[] bArr;
            b bVar2 = null;
            try {
                bVar = new b(this.f3487d);
                try {
                    bVar.x(byteOrder);
                    boolean z10 = true;
                    int i10 = 0;
                    switch (this.f3484a) {
                        case 1:
                        case 6:
                            byte[] bArr2 = this.f3487d;
                            if (bArr2.length == 1 && bArr2[0] >= 0 && bArr2[0] <= 1) {
                                String str = new String(new char[]{(char) (bArr2[0] + 48)});
                                try {
                                    bVar.close();
                                } catch (IOException unused) {
                                }
                                return str;
                            }
                            String str2 = new String(bArr2, a.f3442b0);
                            try {
                                bVar.close();
                            } catch (IOException unused2) {
                            }
                            return str2;
                        case 2:
                        case 7:
                            if (this.f3485b >= a.I.length) {
                                int i11 = 0;
                                while (true) {
                                    bArr = a.I;
                                    if (i11 < bArr.length) {
                                        if (this.f3487d[i11] != bArr[i11]) {
                                            z10 = false;
                                        } else {
                                            i11++;
                                        }
                                    }
                                }
                                if (z10) {
                                    i10 = bArr.length;
                                }
                            }
                            StringBuilder sb2 = new StringBuilder();
                            while (i10 < this.f3485b && (b10 = this.f3487d[i10]) != 0) {
                                if (b10 >= 32) {
                                    sb2.append((char) b10);
                                } else {
                                    sb2.append('?');
                                }
                                i10++;
                            }
                            String sb3 = sb2.toString();
                            try {
                                bVar.close();
                            } catch (IOException unused3) {
                            }
                            return sb3;
                        case 3:
                            int[] iArr = new int[this.f3485b];
                            while (i10 < this.f3485b) {
                                iArr[i10] = bVar.readUnsignedShort();
                                i10++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused4) {
                            }
                            return iArr;
                        case 4:
                            long[] jArr = new long[this.f3485b];
                            while (i10 < this.f3485b) {
                                jArr[i10] = bVar.h();
                                i10++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused5) {
                            }
                            return jArr;
                        case 5:
                            f[] fVarArr = new f[this.f3485b];
                            while (i10 < this.f3485b) {
                                fVarArr[i10] = new f(bVar.h(), bVar.h());
                                i10++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused6) {
                            }
                            return fVarArr;
                        case 8:
                            int[] iArr2 = new int[this.f3485b];
                            while (i10 < this.f3485b) {
                                iArr2[i10] = bVar.readShort();
                                i10++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused7) {
                            }
                            return iArr2;
                        case 9:
                            int[] iArr3 = new int[this.f3485b];
                            while (i10 < this.f3485b) {
                                iArr3[i10] = bVar.readInt();
                                i10++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused8) {
                            }
                            return iArr3;
                        case 10:
                            f[] fVarArr2 = new f[this.f3485b];
                            while (i10 < this.f3485b) {
                                fVarArr2[i10] = new f(bVar.readInt(), bVar.readInt());
                                i10++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused9) {
                            }
                            return fVarArr2;
                        case 11:
                            double[] dArr = new double[this.f3485b];
                            while (i10 < this.f3485b) {
                                dArr[i10] = bVar.readFloat();
                                i10++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused10) {
                            }
                            return dArr;
                        case 12:
                            double[] dArr2 = new double[this.f3485b];
                            while (i10 < this.f3485b) {
                                dArr2[i10] = bVar.readDouble();
                                i10++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused11) {
                            }
                            return dArr2;
                        default:
                            try {
                                bVar.close();
                            } catch (IOException unused12) {
                            }
                            return null;
                    }
                } catch (IOException unused13) {
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (IOException unused14) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    bVar2 = bVar;
                    if (bVar2 != null) {
                        try {
                            bVar2.close();
                        } catch (IOException unused15) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused16) {
                bVar = null;
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public int p() {
            return a.H[this.f3484a] * this.f3485b;
        }

        public String toString() {
            return "(" + a.G[this.f3484a] + ", data length:" + this.f3487d.length + ")";
        }

        public d(int i10, int i11, long j10, byte[] bArr) {
            this.f3484a = i10;
            this.f3485b = i11;
            this.f3486c = j10;
            this.f3487d = bArr;
        }
    }

    /* compiled from: ExifInterface.java */
    /* loaded from: classes.dex */
    public static class f {

        /* renamed from: a, reason: collision with root package name */
        public final long f3492a;

        /* renamed from: b, reason: collision with root package name */
        public final long f3493b;

        public f(double d10) {
            this((long) (d10 * 10000.0d), 10000L);
        }

        public double a() {
            double d10 = this.f3492a;
            double d11 = this.f3493b;
            Double.isNaN(d10);
            Double.isNaN(d11);
            return d10 / d11;
        }

        public String toString() {
            return this.f3492a + "/" + this.f3493b;
        }

        public f(long j10, long j11) {
            if (j11 == 0) {
                this.f3492a = 0L;
                this.f3493b = 1L;
            } else {
                this.f3492a = j10;
                this.f3493b = j11;
            }
        }
    }

    static {
        e[] eVarArr = {new e("NewSubfileType", 254, 4), new e("SubfileType", BaseProgressIndicator.MAX_ALPHA, 4), new e("ImageWidth", 256, 3, 4), new e("ImageLength", SupportStateUtil.RECYCLER_TYPE_EMPTY, 3, 4), new e("BitsPerSample", 258, 3), new e("Compression", 259, 3), new e("PhotometricInterpretation", 262, 3), new e("ImageDescription", 270, 2), new e("Make", 271, 2), new e("Model", SupportStateUtil.RECYCLER_TYPE_ERROR, 2), new e("StripOffsets", 273, 3, 4), new e("Orientation", 274, 3), new e("SamplesPerPixel", 277, 3), new e("RowsPerStrip", 278, 3, 4), new e("StripByteCounts", 279, 3, 4), new e("XResolution", 282, 5), new e("YResolution", 283, 5), new e("PlanarConfiguration", 284, 3), new e("ResolutionUnit", 296, 3), new e("TransferFunction", HttpStatus.SC_MOVED_PERMANENTLY, 3), new e("Software", HttpStatus.SC_USE_PROXY, 2), new e("DateTime", 306, 2), new e("Artist", 315, 2), new e("WhitePoint", 318, 5), new e("PrimaryChromaticities", 319, 5), new e("SubIFDPointer", 330, 4), new e("JPEGInterchangeFormat", 513, 4), new e("JPEGInterchangeFormatLength", 514, 4), new e("YCbCrCoefficients", 529, 5), new e("YCbCrSubSampling", 530, 3), new e("YCbCrPositioning", 531, 3), new e("ReferenceBlackWhite", 532, 5), new e("Copyright", 33432, 2), new e("ExifIFDPointer", 34665, 4), new e("GPSInfoIFDPointer", 34853, 4), new e("SensorTopBorder", 4, 4), new e("SensorLeftBorder", 5, 4), new e("SensorBottomBorder", 6, 4), new e("SensorRightBorder", 7, 4), new e("ISO", 23, 3), new e("JpgFromRaw", 46, 7), new e("Xmp", 700, 1)};
        J = eVarArr;
        e[] eVarArr2 = {new e("ExposureTime", 33434, 5), new e("FNumber", 33437, 5), new e("ExposureProgram", 34850, 3), new e("SpectralSensitivity", 34852, 2), new e("PhotographicSensitivity", 34855, 3), new e("OECF", 34856, 7), new e("ExifVersion", 36864, 2), new e("DateTimeOriginal", 36867, 2), new e("DateTimeDigitized", 36868, 2), new e("ComponentsConfiguration", 37121, 7), new e("CompressedBitsPerPixel", 37122, 5), new e("ShutterSpeedValue", 37377, 10), new e("ApertureValue", 37378, 5), new e("BrightnessValue", 37379, 10), new e("ExposureBiasValue", 37380, 10), new e("MaxApertureValue", 37381, 5), new e("SubjectDistance", 37382, 5), new e("MeteringMode", 37383, 3), new e("LightSource", 37384, 3), new e("Flash", 37385, 3), new e("FocalLength", 37386, 5), new e("SubjectArea", 37396, 3), new e("MakerNote", 37500, 7), new e("UserComment", 37510, 7), new e("SubSecTime", 37520, 2), new e("SubSecTimeOriginal", 37521, 2), new e("SubSecTimeDigitized", 37522, 2), new e("FlashpixVersion", 40960, 7), new e("ColorSpace", 40961, 3), new e("PixelXDimension", 40962, 3, 4), new e("PixelYDimension", 40963, 3, 4), new e("RelatedSoundFile", 40964, 2), new e("InteroperabilityIFDPointer", 40965, 4), new e("FlashEnergy", 41483, 5), new e("SpatialFrequencyResponse", 41484, 7), new e("FocalPlaneXResolution", 41486, 5), new e("FocalPlaneYResolution", 41487, 5), new e("FocalPlaneResolutionUnit", 41488, 3), new e("SubjectLocation", 41492, 3), new e("ExposureIndex", 41493, 5), new e("SensingMethod", 41495, 3), new e("FileSource", 41728, 7), new e("SceneType", 41729, 7), new e("CFAPattern", 41730, 7), new e("CustomRendered", 41985, 3), new e("ExposureMode", 41986, 3), new e("WhiteBalance", 41987, 3), new e("DigitalZoomRatio", 41988, 5), new e("FocalLengthIn35mmFilm", 41989, 3), new e("SceneCaptureType", 41990, 3), new e("GainControl", 41991, 3), new e("Contrast", 41992, 3), new e("Saturation", 41993, 3), new e("Sharpness", 41994, 3), new e("DeviceSettingDescription", 41995, 7), new e("SubjectDistanceRange", 41996, 3), new e("ImageUniqueID", 42016, 2), new e("DNGVersion", 50706, 1), new e("DefaultCropSize", 50720, 3, 4)};
        K = eVarArr2;
        e[] eVarArr3 = {new e("GPSVersionID", 0, 1), new e("GPSLatitudeRef", 1, 2), new e("GPSLatitude", 2, 5), new e("GPSLongitudeRef", 3, 2), new e("GPSLongitude", 4, 5), new e("GPSAltitudeRef", 5, 1), new e("GPSAltitude", 6, 5), new e("GPSTimeStamp", 7, 5), new e("GPSSatellites", 8, 2), new e("GPSStatus", 9, 2), new e("GPSMeasureMode", 10, 2), new e("GPSDOP", 11, 5), new e("GPSSpeedRef", 12, 2), new e("GPSSpeed", 13, 5), new e("GPSTrackRef", 14, 2), new e("GPSTrack", 15, 5), new e("GPSImgDirectionRef", 16, 2), new e("GPSImgDirection", 17, 5), new e("GPSMapDatum", 18, 2), new e("GPSDestLatitudeRef", 19, 2), new e("GPSDestLatitude", 20, 5), new e("GPSDestLongitudeRef", 21, 2), new e("GPSDestLongitude", 22, 5), new e("GPSDestBearingRef", 23, 2), new e("GPSDestBearing", 24, 5), new e("GPSDestDistanceRef", 25, 2), new e("GPSDestDistance", 26, 5), new e("GPSProcessingMethod", 27, 7), new e("GPSAreaInformation", 28, 7), new e("GPSDateStamp", 29, 2), new e("GPSDifferential", 30, 3)};
        L = eVarArr3;
        e[] eVarArr4 = {new e("InteroperabilityIndex", 1, 2)};
        M = eVarArr4;
        e[] eVarArr5 = {new e("NewSubfileType", 254, 4), new e("SubfileType", BaseProgressIndicator.MAX_ALPHA, 4), new e("ThumbnailImageWidth", 256, 3, 4), new e("ThumbnailImageLength", SupportStateUtil.RECYCLER_TYPE_EMPTY, 3, 4), new e("BitsPerSample", 258, 3), new e("Compression", 259, 3), new e("PhotometricInterpretation", 262, 3), new e("ImageDescription", 270, 2), new e("Make", 271, 2), new e("Model", SupportStateUtil.RECYCLER_TYPE_ERROR, 2), new e("StripOffsets", 273, 3, 4), new e("ThumbnailOrientation", 274, 3), new e("SamplesPerPixel", 277, 3), new e("RowsPerStrip", 278, 3, 4), new e("StripByteCounts", 279, 3, 4), new e("XResolution", 282, 5), new e("YResolution", 283, 5), new e("PlanarConfiguration", 284, 3), new e("ResolutionUnit", 296, 3), new e("TransferFunction", HttpStatus.SC_MOVED_PERMANENTLY, 3), new e("Software", HttpStatus.SC_USE_PROXY, 2), new e("DateTime", 306, 2), new e("Artist", 315, 2), new e("WhitePoint", 318, 5), new e("PrimaryChromaticities", 319, 5), new e("SubIFDPointer", 330, 4), new e("JPEGInterchangeFormat", 513, 4), new e("JPEGInterchangeFormatLength", 514, 4), new e("YCbCrCoefficients", 529, 5), new e("YCbCrSubSampling", 530, 3), new e("YCbCrPositioning", 531, 3), new e("ReferenceBlackWhite", 532, 5), new e("Copyright", 33432, 2), new e("ExifIFDPointer", 34665, 4), new e("GPSInfoIFDPointer", 34853, 4), new e("DNGVersion", 50706, 1), new e("DefaultCropSize", 50720, 3, 4)};
        N = eVarArr5;
        O = new e("StripOffsets", 273, 3);
        e[] eVarArr6 = {new e("ThumbnailImage", 256, 7), new e("CameraSettingsIFDPointer", 8224, 4), new e("ImageProcessingIFDPointer", 8256, 4)};
        P = eVarArr6;
        e[] eVarArr7 = {new e("PreviewImageStart", SupportStateUtil.RECYCLER_TYPE_EMPTY, 4), new e("PreviewImageLength", 258, 4)};
        Q = eVarArr7;
        e[] eVarArr8 = {new e("AspectFrame", 4371, 3)};
        R = eVarArr8;
        e[] eVarArr9 = {new e("ColorSpace", 55, 3)};
        S = eVarArr9;
        e[][] eVarArr10 = {eVarArr, eVarArr2, eVarArr3, eVarArr4, eVarArr5, eVarArr, eVarArr6, eVarArr7, eVarArr8, eVarArr9};
        T = eVarArr10;
        U = new e[]{new e("SubIFDPointer", 330, 4), new e("ExifIFDPointer", 34665, 4), new e("GPSInfoIFDPointer", 34853, 4), new e("InteroperabilityIFDPointer", 40965, 4), new e("CameraSettingsIFDPointer", 8224, 1), new e("ImageProcessingIFDPointer", 8256, 1)};
        V = new e("JPEGInterchangeFormat", 513, 4);
        W = new e("JPEGInterchangeFormatLength", 514, 4);
        X = new HashMap[eVarArr10.length];
        Y = new HashMap[eVarArr10.length];
        Z = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        f3441a0 = new HashMap<>();
        Charset forName = Charset.forName("US-ASCII");
        f3442b0 = forName;
        f3443c0 = "Exif\u0000\u0000".getBytes(forName);
        f3444d0 = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(forName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        F = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(UtcDates.UTC));
        int i10 = 0;
        while (true) {
            e[][] eVarArr11 = T;
            if (i10 < eVarArr11.length) {
                X[i10] = new HashMap<>();
                Y[i10] = new HashMap<>();
                for (e eVar : eVarArr11[i10]) {
                    X[i10].put(Integer.valueOf(eVar.f3488a), eVar);
                    Y[i10].put(eVar.f3489b, eVar);
                }
                i10++;
            } else {
                HashMap<Integer, Integer> hashMap = f3441a0;
                e[] eVarArr12 = U;
                hashMap.put(Integer.valueOf(eVarArr12[0].f3488a), 5);
                hashMap.put(Integer.valueOf(eVarArr12[1].f3488a), 1);
                hashMap.put(Integer.valueOf(eVarArr12[2].f3488a), 2);
                hashMap.put(Integer.valueOf(eVarArr12[3].f3488a), 3);
                hashMap.put(Integer.valueOf(eVarArr12[4].f3488a), 7);
                hashMap.put(Integer.valueOf(eVarArr12[5].f3488a), 8);
                f3445e0 = Pattern.compile(".*[1-9].*");
                f3446f0 = Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
        }
    }

    public a(File file) throws IOException {
        e[][] eVarArr = T;
        this.f3458e = new HashMap[eVarArr.length];
        this.f3459f = new HashSet(eVarArr.length);
        this.f3460g = ByteOrder.BIG_ENDIAN;
        if (file != null) {
            u(file.getAbsolutePath());
            return;
        }
        throw new NullPointerException("file cannot be null");
    }

    public static boolean A(FileDescriptor fileDescriptor) throws IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_CUR);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean P(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static void b(FileDescriptor fileDescriptor) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Os.close(fileDescriptor);
            } catch (Exception unused) {
            }
        }
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static long[] d(Object obj) {
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            long[] jArr = new long[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                jArr[i10] = iArr[i10];
            }
            return jArr;
        }
        if (obj instanceof long[]) {
            return (long[]) obj;
        }
        return null;
    }

    public static int e(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
        int i10 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return i10;
            }
            i10 += read;
            outputStream.write(bArr, 0, read);
        }
    }

    public static Pair<Integer, Integer> r(String str) {
        if (str.contains(",")) {
            String[] split = str.split(",", -1);
            Pair<Integer, Integer> r10 = r(split[0]);
            if (((Integer) r10.first).intValue() == 2) {
                return r10;
            }
            for (int i10 = 1; i10 < split.length; i10++) {
                Pair<Integer, Integer> r11 = r(split[i10]);
                int intValue = (((Integer) r11.first).equals(r10.first) || ((Integer) r11.second).equals(r10.first)) ? ((Integer) r10.first).intValue() : -1;
                int intValue2 = (((Integer) r10.second).intValue() == -1 || !(((Integer) r11.first).equals(r10.second) || ((Integer) r11.second).equals(r10.second))) ? -1 : ((Integer) r10.second).intValue();
                if (intValue == -1 && intValue2 == -1) {
                    return new Pair<>(2, -1);
                }
                if (intValue == -1) {
                    r10 = new Pair<>(Integer.valueOf(intValue2), -1);
                } else if (intValue2 == -1) {
                    r10 = new Pair<>(Integer.valueOf(intValue), -1);
                }
            }
            return r10;
        }
        if (str.contains("/")) {
            String[] split2 = str.split("/", -1);
            if (split2.length == 2) {
                try {
                    long parseDouble = (long) Double.parseDouble(split2[0]);
                    long parseDouble2 = (long) Double.parseDouble(split2[1]);
                    if (parseDouble >= 0 && parseDouble2 >= 0) {
                        if (parseDouble <= 2147483647L && parseDouble2 <= 2147483647L) {
                            return new Pair<>(10, 5);
                        }
                        return new Pair<>(5, -1);
                    }
                    return new Pair<>(10, -1);
                } catch (NumberFormatException unused) {
                }
            }
            return new Pair<>(2, -1);
        }
        try {
            try {
                Long valueOf = Long.valueOf(Long.parseLong(str));
                if (valueOf.longValue() >= 0 && valueOf.longValue() <= WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                    return new Pair<>(3, 4);
                }
                if (valueOf.longValue() < 0) {
                    return new Pair<>(9, -1);
                }
                return new Pair<>(4, -1);
            } catch (NumberFormatException unused2) {
                return new Pair<>(2, -1);
            }
        } catch (NumberFormatException unused3) {
            Double.parseDouble(str);
            return new Pair<>(12, -1);
        }
    }

    public static boolean w(byte[] bArr) throws IOException {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = f3453z;
            if (i10 >= bArr2.length) {
                return true;
            }
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
            i10++;
        }
    }

    public final boolean B(HashMap hashMap) throws IOException {
        d dVar;
        d dVar2 = (d) hashMap.get("BitsPerSample");
        if (dVar2 == null) {
            return false;
        }
        int[] iArr = (int[]) dVar2.o(this.f3460g);
        int[] iArr2 = f3450w;
        if (Arrays.equals(iArr2, iArr)) {
            return true;
        }
        if (this.f3457d != 3 || (dVar = (d) hashMap.get("PhotometricInterpretation")) == null) {
            return false;
        }
        int m10 = dVar.m(this.f3460g);
        return (m10 == 1 && Arrays.equals(iArr, f3452y)) || (m10 == 6 && Arrays.equals(iArr, iArr2));
    }

    public final boolean C(HashMap hashMap) throws IOException {
        d dVar = (d) hashMap.get("ImageLength");
        d dVar2 = (d) hashMap.get("ImageWidth");
        if (dVar == null || dVar2 == null) {
            return false;
        }
        return dVar.m(this.f3460g) <= 512 && dVar2.m(this.f3460g) <= 512;
    }

    public final void D(InputStream inputStream) throws IOException {
        boolean z10;
        if (inputStream != null) {
            for (int i10 = 0; i10 < T.length; i10++) {
                try {
                    try {
                        this.f3458e[i10] = new HashMap<>();
                    } catch (IOException unused) {
                        this.f3471r = false;
                        boolean z11 = f3447t;
                        a();
                        if (!z11) {
                            return;
                        }
                    }
                } finally {
                    a();
                    if (f3447t) {
                        F();
                    }
                }
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            this.f3457d = k(bufferedInputStream);
            b bVar = new b(bufferedInputStream);
            switch (this.f3457d) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 5:
                case 6:
                case 8:
                case 11:
                    n(bVar);
                    break;
                case 4:
                    j(bVar, 0, 0);
                    break;
                case 7:
                    l(bVar);
                    break;
                case 9:
                    m(bVar);
                    break;
                case 10:
                    o(bVar);
                    break;
                case 12:
                    i(bVar);
                    break;
            }
            O(bVar);
            this.f3471r = true;
            if (!z10) {
                return;
            }
            return;
        }
        throw new NullPointerException("inputstream shouldn't be null");
    }

    public final void E(b bVar, int i10) throws IOException {
        ByteOrder G2 = G(bVar);
        this.f3460g = G2;
        bVar.x(G2);
        int readUnsignedShort = bVar.readUnsignedShort();
        int i11 = this.f3457d;
        if (i11 != 7 && i11 != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = bVar.readInt();
        if (readInt >= 8 && readInt < i10) {
            int i12 = readInt - 8;
            if (i12 <= 0 || bVar.skipBytes(i12) == i12) {
                return;
            }
            throw new IOException("Couldn't jump to first Ifd: " + i12);
        }
        throw new IOException("Invalid first Ifd offset: " + readInt);
    }

    public final void F() {
        for (int i10 = 0; i10 < this.f3458e.length; i10++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("The size of tag group[");
            sb2.append(i10);
            sb2.append("]: ");
            sb2.append(this.f3458e[i10].size());
            for (Map.Entry<String, d> entry : this.f3458e[i10].entrySet()) {
                d value = entry.getValue();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("tagName: ");
                sb3.append(entry.getKey());
                sb3.append(", tagType: ");
                sb3.append(value.toString());
                sb3.append(", tagValue: '");
                sb3.append(value.n(this.f3460g));
                sb3.append("'");
            }
        }
    }

    public final ByteOrder G(b bVar) throws IOException {
        short readShort = bVar.readShort();
        if (readShort == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (readShort == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
    }

    public final void H(byte[] bArr, int i10) throws IOException {
        b bVar = new b(bArr);
        E(bVar, bArr.length);
        I(bVar, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x029c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void I(b bVar, int i10) throws IOException {
        long j10;
        long j11;
        boolean z10;
        short s10;
        String str;
        short s11;
        int i11;
        int i12;
        int i13;
        int readUnsignedShort;
        this.f3459f.add(Integer.valueOf(bVar.f3481i));
        if (bVar.f3481i + 2 > bVar.f3480h) {
            return;
        }
        short readShort = bVar.readShort();
        if (f3447t) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("numberOfDirectoryEntry: ");
            sb2.append((int) readShort);
        }
        if (bVar.f3481i + (readShort * 12) > bVar.f3480h || readShort <= 0) {
            return;
        }
        char c10 = 0;
        short s12 = 0;
        while (s12 < readShort) {
            int readUnsignedShort2 = bVar.readUnsignedShort();
            int readUnsignedShort3 = bVar.readUnsignedShort();
            int readInt = bVar.readInt();
            long d10 = bVar.d() + 4;
            e eVar = X[i10].get(Integer.valueOf(readUnsignedShort2));
            boolean z11 = f3447t;
            if (z11) {
                Object[] objArr = new Object[5];
                objArr[c10] = Integer.valueOf(i10);
                objArr[1] = Integer.valueOf(readUnsignedShort2);
                objArr[2] = eVar != null ? eVar.f3489b : null;
                objArr[3] = Integer.valueOf(readUnsignedShort3);
                objArr[4] = Integer.valueOf(readInt);
                String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", objArr);
            }
            if (eVar != null) {
                if (readUnsignedShort3 > 0) {
                    if (readUnsignedShort3 < H.length) {
                        if (eVar.a(readUnsignedShort3)) {
                            if (readUnsignedShort3 == 7) {
                                readUnsignedShort3 = eVar.f3490c;
                            }
                            j10 = d10;
                            j11 = readInt * r5[readUnsignedShort3];
                            if (j11 < 0 || j11 > 2147483647L) {
                                if (z11) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("Skip the tag entry since the number of components is invalid: ");
                                    sb3.append(readInt);
                                }
                                z10 = false;
                            } else {
                                z10 = true;
                            }
                            if (!z10) {
                                bVar.k(j10);
                                s10 = readShort;
                                s11 = s12;
                            } else {
                                long j12 = j10;
                                if (j11 > 4) {
                                    int readInt2 = bVar.readInt();
                                    s10 = readShort;
                                    if (z11) {
                                        StringBuilder sb4 = new StringBuilder();
                                        s11 = s12;
                                        sb4.append("seek to data offset: ");
                                        sb4.append(readInt2);
                                    } else {
                                        s11 = s12;
                                    }
                                    int i14 = this.f3457d;
                                    if (i14 == 7) {
                                        if ("MakerNote".equals(eVar.f3489b)) {
                                            this.f3467n = readInt2;
                                        } else if (i10 == 6 && "ThumbnailImage".equals(eVar.f3489b)) {
                                            this.f3468o = readInt2;
                                            this.f3469p = readInt;
                                            d j13 = d.j(6, this.f3460g);
                                            i11 = readUnsignedShort2;
                                            i12 = readUnsignedShort3;
                                            d f10 = d.f(this.f3468o, this.f3460g);
                                            i13 = readInt;
                                            d f11 = d.f(this.f3469p, this.f3460g);
                                            this.f3458e[4].put("Compression", j13);
                                            this.f3458e[4].put("JPEGInterchangeFormat", f10);
                                            this.f3458e[4].put("JPEGInterchangeFormatLength", f11);
                                        }
                                        i11 = readUnsignedShort2;
                                        i12 = readUnsignedShort3;
                                        i13 = readInt;
                                    } else {
                                        i11 = readUnsignedShort2;
                                        i12 = readUnsignedShort3;
                                        i13 = readInt;
                                        if (i14 == 10 && "JpgFromRaw".equals(eVar.f3489b)) {
                                            this.f3470q = readInt2;
                                        }
                                    }
                                    long j14 = readInt2;
                                    str = "Compression";
                                    if (j14 + j11 <= bVar.f3480h) {
                                        bVar.k(j14);
                                    } else {
                                        if (z11) {
                                            StringBuilder sb5 = new StringBuilder();
                                            sb5.append("Skip the tag entry since data offset is invalid: ");
                                            sb5.append(readInt2);
                                        }
                                        bVar.k(j12);
                                    }
                                } else {
                                    s10 = readShort;
                                    str = "Compression";
                                    s11 = s12;
                                    i11 = readUnsignedShort2;
                                    i12 = readUnsignedShort3;
                                    i13 = readInt;
                                }
                                Integer num = f3441a0.get(Integer.valueOf(i11));
                                if (z11) {
                                    StringBuilder sb6 = new StringBuilder();
                                    sb6.append("nextIfdType: ");
                                    sb6.append(num);
                                    sb6.append(" byteCount: ");
                                    sb6.append(j11);
                                }
                                if (num != null) {
                                    long j15 = -1;
                                    int i15 = i12;
                                    if (i15 == 3) {
                                        readUnsignedShort = bVar.readUnsignedShort();
                                    } else {
                                        if (i15 == 4) {
                                            j15 = bVar.h();
                                        } else if (i15 == 8) {
                                            readUnsignedShort = bVar.readShort();
                                        } else if (i15 == 9 || i15 == 13) {
                                            readUnsignedShort = bVar.readInt();
                                        }
                                        if (z11) {
                                            String.format("Offset: %d, tagName: %s", Long.valueOf(j15), eVar.f3489b);
                                        }
                                        if (j15 > 0 || j15 >= bVar.f3480h) {
                                            if (z11) {
                                                StringBuilder sb7 = new StringBuilder();
                                                sb7.append("Skip jump into the IFD since its offset is invalid: ");
                                                sb7.append(j15);
                                            }
                                        } else if (!this.f3459f.contains(Integer.valueOf((int) j15))) {
                                            bVar.k(j15);
                                            I(bVar, num.intValue());
                                        } else if (z11) {
                                            StringBuilder sb8 = new StringBuilder();
                                            sb8.append("Skip jump into the IFD since it has already been read: IfdType ");
                                            sb8.append(num);
                                            sb8.append(" (at ");
                                            sb8.append(j15);
                                            sb8.append(")");
                                        }
                                        bVar.k(j12);
                                    }
                                    j15 = readUnsignedShort;
                                    if (z11) {
                                    }
                                    if (j15 > 0) {
                                    }
                                    if (z11) {
                                    }
                                    bVar.k(j12);
                                } else {
                                    int d11 = bVar.d();
                                    byte[] bArr = new byte[(int) j11];
                                    bVar.readFully(bArr);
                                    d dVar = new d(i12, i13, d11, bArr);
                                    this.f3458e[i10].put(eVar.f3489b, dVar);
                                    if ("DNGVersion".equals(eVar.f3489b)) {
                                        this.f3457d = 3;
                                    }
                                    if ((("Make".equals(eVar.f3489b) || "Model".equals(eVar.f3489b)) && dVar.n(this.f3460g).contains("PENTAX")) || (str.equals(eVar.f3489b) && dVar.m(this.f3460g) == 65535)) {
                                        this.f3457d = 8;
                                    }
                                    if (bVar.d() != j12) {
                                        bVar.k(j12);
                                    }
                                }
                                s12 = (short) (s11 + 1);
                                readShort = s10;
                                c10 = 0;
                            }
                            s12 = (short) (s11 + 1);
                            readShort = s10;
                            c10 = 0;
                        } else if (z11) {
                            StringBuilder sb9 = new StringBuilder();
                            sb9.append("Skip the tag entry since data format (");
                            sb9.append(G[readUnsignedShort3]);
                            sb9.append(") is unexpected for tag: ");
                            sb9.append(eVar.f3489b);
                        }
                    }
                }
                j10 = d10;
                if (z11) {
                    StringBuilder sb10 = new StringBuilder();
                    sb10.append("Skip the tag entry since data format is invalid: ");
                    sb10.append(readUnsignedShort3);
                }
                z10 = false;
                j11 = 0;
                if (!z10) {
                }
                s12 = (short) (s11 + 1);
                readShort = s10;
                c10 = 0;
            } else if (z11) {
                StringBuilder sb11 = new StringBuilder();
                sb11.append("Skip the tag entry since tag number is not defined: ");
                sb11.append(readUnsignedShort2);
            }
            j10 = d10;
            z10 = false;
            j11 = 0;
            if (!z10) {
            }
            s12 = (short) (s11 + 1);
            readShort = s10;
            c10 = 0;
        }
        if (bVar.d() + 4 <= bVar.f3480h) {
            int readInt3 = bVar.readInt();
            boolean z12 = f3447t;
            if (z12) {
                String.format("nextIfdOffset: %d", Integer.valueOf(readInt3));
            }
            long j16 = readInt3;
            if (j16 <= 0 || readInt3 >= bVar.f3480h) {
                if (z12) {
                    StringBuilder sb12 = new StringBuilder();
                    sb12.append("Stop reading file since a wrong offset may cause an infinite loop: ");
                    sb12.append(readInt3);
                    return;
                }
                return;
            }
            if (this.f3459f.contains(Integer.valueOf(readInt3))) {
                if (z12) {
                    StringBuilder sb13 = new StringBuilder();
                    sb13.append("Stop reading file since re-reading an IFD may cause an infinite loop: ");
                    sb13.append(readInt3);
                    return;
                }
                return;
            }
            bVar.k(j16);
            if (this.f3458e[4].isEmpty()) {
                I(bVar, 4);
            } else if (this.f3458e[5].isEmpty()) {
                I(bVar, 5);
            }
        }
    }

    public final void J(String str) {
        for (int i10 = 0; i10 < T.length; i10++) {
            this.f3458e[i10].remove(str);
        }
    }

    public final void K(b bVar, int i10) throws IOException {
        d dVar;
        d dVar2 = this.f3458e[i10].get("ImageLength");
        d dVar3 = this.f3458e[i10].get("ImageWidth");
        if ((dVar2 == null || dVar3 == null) && (dVar = this.f3458e[i10].get("JPEGInterchangeFormat")) != null) {
            j(bVar, dVar.m(this.f3460g), i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bb A[Catch: all -> 0x00fe, Exception -> 0x0101, TryCatch #9 {Exception -> 0x0101, all -> 0x00fe, blocks: (B:24:0x00b2, B:26:0x00bb, B:27:0x00d9, B:57:0x00c3, B:59:0x00c7, B:61:0x00cb), top: B:23:0x00b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c3 A[Catch: all -> 0x00fe, Exception -> 0x0101, TryCatch #9 {Exception -> 0x0101, all -> 0x00fe, blocks: (B:24:0x00b2, B:26:0x00bb, B:27:0x00d9, B:57:0x00c3, B:59:0x00c7, B:61:0x00cb), top: B:23:0x00b2 }] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void L() throws IOException {
        FileOutputStream r72;
        File file;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        BufferedOutputStream bufferedOutputStream;
        FileOutputStream fileOutputStream;
        FileDescriptor fileDescriptor;
        BufferedInputStream bufferedInputStream;
        if (this.f3471r && this.f3457d == 4) {
            if (this.f3455b == null && this.f3454a == null) {
                throw new IOException("ExifInterface does not support saving attributes for the current input.");
            }
            this.f3472s = true;
            this.f3464k = p();
            InputStream inputStream = null;
            File file2 = this.f3454a != null ? new File(this.f3454a) : null;
            try {
                try {
                    try {
                        try {
                            if (this.f3454a != null) {
                                file = new File(this.f3454a + ".tmp");
                                if (!file2.renameTo(file)) {
                                    throw new IOException("Couldn't rename to " + file.getAbsolutePath());
                                }
                                fileInputStream = null;
                            } else if (Build.VERSION.SDK_INT < 21 || this.f3455b == null) {
                                file = null;
                                fileInputStream = null;
                            } else {
                                file = File.createTempFile("temp", "jpg");
                                Os.lseek(this.f3455b, 0L, OsConstants.SEEK_SET);
                                fileInputStream = new FileInputStream(this.f3455b);
                                try {
                                    r72 = new FileOutputStream(file);
                                    try {
                                        e(fileInputStream, r72);
                                        fileInputStream2 = r72;
                                        c(fileInputStream);
                                        c(fileInputStream2);
                                        FileInputStream fileInputStream3 = new FileInputStream(file);
                                        if (this.f3454a == null) {
                                            fileOutputStream = new FileOutputStream(this.f3454a);
                                        } else if (Build.VERSION.SDK_INT < 21 || (fileDescriptor = this.f3455b) == null) {
                                            fileOutputStream = null;
                                        } else {
                                            Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_SET);
                                            fileOutputStream = new FileOutputStream(this.f3455b);
                                        }
                                        bufferedInputStream = new BufferedInputStream(fileInputStream3);
                                        bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                                        M(bufferedInputStream, bufferedOutputStream);
                                        c(bufferedInputStream);
                                        c(bufferedOutputStream);
                                        file.delete();
                                        this.f3464k = null;
                                        return;
                                    } catch (Exception e10) {
                                        e = e10;
                                        inputStream = fileInputStream;
                                        r72 = r72;
                                        try {
                                            throw new IOException("Failed to copy original file to temp file", e);
                                        } catch (Throwable th) {
                                            th = th;
                                            c(inputStream);
                                            c(r72);
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        inputStream = fileInputStream;
                                        c(inputStream);
                                        c(r72);
                                        throw th;
                                    }
                                } catch (Exception e11) {
                                    e = e11;
                                    r72 = 0;
                                } catch (Throwable th3) {
                                    th = th3;
                                    r72 = 0;
                                }
                            }
                            M(bufferedInputStream, bufferedOutputStream);
                            c(bufferedInputStream);
                            c(bufferedOutputStream);
                            file.delete();
                            this.f3464k = null;
                            return;
                        } catch (Exception e12) {
                            e = e12;
                            inputStream = bufferedInputStream;
                            try {
                                if (this.f3454a != null && !file.renameTo(file2)) {
                                    throw new IOException("Couldn't restore original file: " + file2.getAbsolutePath());
                                }
                                throw new IOException("Failed to save new file", e);
                            } catch (Throwable th4) {
                                th = th4;
                                c(inputStream);
                                c(bufferedOutputStream);
                                file.delete();
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            inputStream = bufferedInputStream;
                            c(inputStream);
                            c(bufferedOutputStream);
                            file.delete();
                            throw th;
                        }
                        bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    } catch (Exception e13) {
                        e = e13;
                        bufferedOutputStream = null;
                    } catch (Throwable th6) {
                        th = th6;
                        bufferedOutputStream = null;
                    }
                    FileInputStream fileInputStream32 = new FileInputStream(file);
                    if (this.f3454a == null) {
                    }
                    bufferedInputStream = new BufferedInputStream(fileInputStream32);
                } catch (Exception e14) {
                    e = e14;
                    bufferedOutputStream = null;
                } catch (Throwable th7) {
                    th = th7;
                    bufferedOutputStream = null;
                }
                fileInputStream2 = fileInputStream;
                c(fileInputStream);
                c(fileInputStream2);
            } catch (Exception e15) {
                e = e15;
                r72 = 0;
            } catch (Throwable th8) {
                th = th8;
                r72 = 0;
            }
        } else {
            throw new IOException("ExifInterface only supports saving attributes on JPEG formats.");
        }
    }

    public final void M(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (f3447t) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("saveJpegAttributes starting with (inputStream: ");
            sb2.append(inputStream);
            sb2.append(", outputStream: ");
            sb2.append(outputStream);
            sb2.append(")");
        }
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        c cVar = new c(outputStream, ByteOrder.BIG_ENDIAN);
        if (dataInputStream.readByte() == -1) {
            cVar.d(-1);
            if (dataInputStream.readByte() == -40) {
                cVar.d(-40);
                cVar.d(-1);
                cVar.d(-31);
                T(cVar, 6);
                byte[] bArr = new byte[RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT];
                while (dataInputStream.readByte() == -1) {
                    byte readByte = dataInputStream.readByte();
                    if (readByte == -39 || readByte == -38) {
                        cVar.d(-1);
                        cVar.d(readByte);
                        e(dataInputStream, cVar);
                        return;
                    }
                    if (readByte != -31) {
                        cVar.d(-1);
                        cVar.d(readByte);
                        int readUnsignedShort = dataInputStream.readUnsignedShort();
                        cVar.z(readUnsignedShort);
                        int i10 = readUnsignedShort - 2;
                        if (i10 < 0) {
                            throw new IOException("Invalid length");
                        }
                        while (i10 > 0) {
                            int read = dataInputStream.read(bArr, 0, Math.min(i10, RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT));
                            if (read >= 0) {
                                cVar.write(bArr, 0, read);
                                i10 -= read;
                            }
                        }
                    } else {
                        int readUnsignedShort2 = dataInputStream.readUnsignedShort() - 2;
                        if (readUnsignedShort2 >= 0) {
                            byte[] bArr2 = new byte[6];
                            if (readUnsignedShort2 >= 6) {
                                if (dataInputStream.read(bArr2) == 6) {
                                    if (Arrays.equals(bArr2, f3443c0)) {
                                        int i11 = readUnsignedShort2 - 6;
                                        if (dataInputStream.skipBytes(i11) != i11) {
                                            throw new IOException("Invalid length");
                                        }
                                    }
                                } else {
                                    throw new IOException("Invalid exif");
                                }
                            }
                            cVar.d(-1);
                            cVar.d(readByte);
                            cVar.z(readUnsignedShort2 + 2);
                            if (readUnsignedShort2 >= 6) {
                                readUnsignedShort2 -= 6;
                                cVar.write(bArr2);
                            }
                            while (readUnsignedShort2 > 0) {
                                int read2 = dataInputStream.read(bArr, 0, Math.min(readUnsignedShort2, RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT));
                                if (read2 >= 0) {
                                    cVar.write(bArr, 0, read2);
                                    readUnsignedShort2 -= read2;
                                }
                            }
                        } else {
                            throw new IOException("Invalid length");
                        }
                    }
                }
                throw new IOException("Invalid marker");
            }
            throw new IOException("Invalid marker");
        }
        throw new IOException("Invalid marker");
    }

    public void N(String str, String str2) {
        e eVar;
        int i10;
        String str3 = str;
        String str4 = str2;
        if (str3 != null) {
            if ("ISOSpeedRatings".equals(str3)) {
                str3 = "PhotographicSensitivity";
            }
            int i11 = 2;
            int i12 = 1;
            if (str4 != null && Z.contains(str3)) {
                if (str3.equals("GPSTimeStamp")) {
                    Matcher matcher = f3446f0.matcher(str4);
                    if (!matcher.find()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Invalid value for ");
                        sb2.append(str3);
                        sb2.append(" : ");
                        sb2.append(str4);
                        return;
                    }
                    str4 = Integer.parseInt(matcher.group(1)) + "/1," + Integer.parseInt(matcher.group(2)) + "/1," + Integer.parseInt(matcher.group(3)) + "/1";
                } else {
                    try {
                        str4 = new f(Double.parseDouble(str2)).toString();
                    } catch (NumberFormatException unused) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Invalid value for ");
                        sb3.append(str3);
                        sb3.append(" : ");
                        sb3.append(str4);
                        return;
                    }
                }
            }
            int i13 = 0;
            while (i13 < T.length) {
                if ((i13 != 4 || this.f3461h) && (eVar = Y[i13].get(str3)) != null) {
                    if (str4 == null) {
                        this.f3458e[i13].remove(str3);
                    } else {
                        Pair<Integer, Integer> r10 = r(str4);
                        if (eVar.f3490c != ((Integer) r10.first).intValue() && eVar.f3490c != ((Integer) r10.second).intValue()) {
                            int i14 = eVar.f3491d;
                            if (i14 != -1 && (i14 == ((Integer) r10.first).intValue() || eVar.f3491d == ((Integer) r10.second).intValue())) {
                                i10 = eVar.f3491d;
                            } else {
                                int i15 = eVar.f3490c;
                                if (i15 == i12 || i15 == 7 || i15 == i11) {
                                    i10 = i15;
                                } else if (f3447t) {
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("Given tag (");
                                    sb4.append(str3);
                                    sb4.append(") value didn't match with one of expected formats: ");
                                    String[] strArr = G;
                                    sb4.append(strArr[eVar.f3490c]);
                                    sb4.append(eVar.f3491d == -1 ? "" : ", " + strArr[eVar.f3491d]);
                                    sb4.append(" (guess: ");
                                    sb4.append(strArr[((Integer) r10.first).intValue()]);
                                    sb4.append(((Integer) r10.second).intValue() != -1 ? ", " + strArr[((Integer) r10.second).intValue()] : "");
                                    sb4.append(")");
                                }
                            }
                        } else {
                            i10 = eVar.f3490c;
                        }
                        switch (i10) {
                            case 1:
                                this.f3458e[i13].put(str3, d.a(str4));
                                break;
                            case 2:
                            case 7:
                                this.f3458e[i13].put(str3, d.e(str4));
                                break;
                            case 3:
                                String[] split = str4.split(",", -1);
                                int[] iArr = new int[split.length];
                                for (int i16 = 0; i16 < split.length; i16++) {
                                    iArr[i16] = Integer.parseInt(split[i16]);
                                }
                                this.f3458e[i13].put(str3, d.k(iArr, this.f3460g));
                                break;
                            case 4:
                                String[] split2 = str4.split(",", -1);
                                long[] jArr = new long[split2.length];
                                for (int i17 = 0; i17 < split2.length; i17++) {
                                    jArr[i17] = Long.parseLong(split2[i17]);
                                }
                                this.f3458e[i13].put(str3, d.g(jArr, this.f3460g));
                                break;
                            case 5:
                                String[] split3 = str4.split(",", -1);
                                f[] fVarArr = new f[split3.length];
                                for (int i18 = 0; i18 < split3.length; i18++) {
                                    String[] split4 = split3[i18].split("/", -1);
                                    fVarArr[i18] = new f((long) Double.parseDouble(split4[0]), (long) Double.parseDouble(split4[1]));
                                }
                                this.f3458e[i13].put(str3, d.i(fVarArr, this.f3460g));
                                break;
                            case 6:
                            case 8:
                            case 11:
                            default:
                                if (f3447t) {
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("Data format isn't one of expected formats: ");
                                    sb5.append(i10);
                                    break;
                                } else {
                                    break;
                                }
                            case 9:
                                String[] split5 = str4.split(",", -1);
                                int[] iArr2 = new int[split5.length];
                                for (int i19 = 0; i19 < split5.length; i19++) {
                                    iArr2[i19] = Integer.parseInt(split5[i19]);
                                }
                                this.f3458e[i13].put(str3, d.c(iArr2, this.f3460g));
                                break;
                            case 10:
                                String[] split6 = str4.split(",", -1);
                                f[] fVarArr2 = new f[split6.length];
                                int i20 = 0;
                                while (i20 < split6.length) {
                                    String[] split7 = split6[i20].split("/", -1);
                                    fVarArr2[i20] = new f((long) Double.parseDouble(split7[0]), (long) Double.parseDouble(split7[i12]));
                                    i20++;
                                    i12 = 1;
                                }
                                this.f3458e[i13].put(str3, d.d(fVarArr2, this.f3460g));
                                break;
                            case 12:
                                String[] split8 = str4.split(",", -1);
                                double[] dArr = new double[split8.length];
                                for (int i21 = 0; i21 < split8.length; i21++) {
                                    dArr[i21] = Double.parseDouble(split8[i21]);
                                }
                                this.f3458e[i13].put(str3, d.b(dArr, this.f3460g));
                                break;
                        }
                    }
                }
                i13++;
                i11 = 2;
                i12 = 1;
            }
            return;
        }
        throw new NullPointerException("tag shouldn't be null");
    }

    public final void O(b bVar) throws IOException {
        HashMap<String, d> hashMap = this.f3458e[4];
        d dVar = hashMap.get("Compression");
        if (dVar != null) {
            int m10 = dVar.m(this.f3460g);
            this.f3465l = m10;
            if (m10 != 1) {
                if (m10 == 6) {
                    s(bVar, hashMap);
                    return;
                } else if (m10 != 7) {
                    return;
                }
            }
            if (B(hashMap)) {
                t(bVar, hashMap);
                return;
            }
            return;
        }
        this.f3465l = 6;
        s(bVar, hashMap);
    }

    public final void Q(int i10, int i11) throws IOException {
        if (this.f3458e[i10].isEmpty() || this.f3458e[i11].isEmpty()) {
            return;
        }
        d dVar = this.f3458e[i10].get("ImageLength");
        d dVar2 = this.f3458e[i10].get("ImageWidth");
        d dVar3 = this.f3458e[i11].get("ImageLength");
        d dVar4 = this.f3458e[i11].get("ImageWidth");
        if (dVar == null || dVar2 == null || dVar3 == null || dVar4 == null) {
            return;
        }
        int m10 = dVar.m(this.f3460g);
        int m11 = dVar2.m(this.f3460g);
        int m12 = dVar3.m(this.f3460g);
        int m13 = dVar4.m(this.f3460g);
        if (m10 >= m12 || m11 >= m13) {
            return;
        }
        HashMap<String, d>[] hashMapArr = this.f3458e;
        HashMap<String, d> hashMap = hashMapArr[i10];
        hashMapArr[i10] = hashMapArr[i11];
        hashMapArr[i11] = hashMap;
    }

    public final void R(b bVar, int i10) throws IOException {
        d j10;
        d j11;
        d dVar = this.f3458e[i10].get("DefaultCropSize");
        d dVar2 = this.f3458e[i10].get("SensorTopBorder");
        d dVar3 = this.f3458e[i10].get("SensorLeftBorder");
        d dVar4 = this.f3458e[i10].get("SensorBottomBorder");
        d dVar5 = this.f3458e[i10].get("SensorRightBorder");
        if (dVar == null) {
            if (dVar2 != null && dVar3 != null && dVar4 != null && dVar5 != null) {
                int m10 = dVar2.m(this.f3460g);
                int m11 = dVar4.m(this.f3460g);
                int m12 = dVar5.m(this.f3460g);
                int m13 = dVar3.m(this.f3460g);
                if (m11 <= m10 || m12 <= m13) {
                    return;
                }
                d j12 = d.j(m11 - m10, this.f3460g);
                d j13 = d.j(m12 - m13, this.f3460g);
                this.f3458e[i10].put("ImageLength", j12);
                this.f3458e[i10].put("ImageWidth", j13);
                return;
            }
            K(bVar, i10);
            return;
        }
        if (dVar.f3484a == 5) {
            f[] fVarArr = (f[]) dVar.o(this.f3460g);
            if (fVarArr != null && fVarArr.length == 2) {
                j10 = d.h(fVarArr[0], this.f3460g);
                j11 = d.h(fVarArr[1], this.f3460g);
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Invalid crop size values. cropSize=");
                sb2.append(Arrays.toString(fVarArr));
                return;
            }
        } else {
            int[] iArr = (int[]) dVar.o(this.f3460g);
            if (iArr != null && iArr.length == 2) {
                j10 = d.j(iArr[0], this.f3460g);
                j11 = d.j(iArr[1], this.f3460g);
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Invalid crop size values. cropSize=");
                sb3.append(Arrays.toString(iArr));
                return;
            }
        }
        this.f3458e[i10].put("ImageWidth", j10);
        this.f3458e[i10].put("ImageLength", j11);
    }

    public final void S(InputStream inputStream) throws IOException {
        Q(0, 5);
        Q(0, 4);
        Q(5, 4);
        d dVar = this.f3458e[1].get("PixelXDimension");
        d dVar2 = this.f3458e[1].get("PixelYDimension");
        if (dVar != null && dVar2 != null) {
            this.f3458e[0].put("ImageWidth", dVar);
            this.f3458e[0].put("ImageLength", dVar2);
        }
        if (this.f3458e[4].isEmpty() && C(this.f3458e[5])) {
            HashMap<String, d>[] hashMapArr = this.f3458e;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        C(this.f3458e[4]);
    }

    public final int T(c cVar, int i10) throws IOException {
        e[][] eVarArr = T;
        int[] iArr = new int[eVarArr.length];
        int[] iArr2 = new int[eVarArr.length];
        for (e eVar : U) {
            J(eVar.f3489b);
        }
        J(V.f3489b);
        J(W.f3489b);
        for (int i11 = 0; i11 < T.length; i11++) {
            for (Object obj : this.f3458e[i11].entrySet().toArray()) {
                Map.Entry entry = (Map.Entry) obj;
                if (entry.getValue() == null) {
                    this.f3458e[i11].remove(entry.getKey());
                }
            }
        }
        if (!this.f3458e[1].isEmpty()) {
            this.f3458e[0].put(U[1].f3489b, d.f(0L, this.f3460g));
        }
        if (!this.f3458e[2].isEmpty()) {
            this.f3458e[0].put(U[2].f3489b, d.f(0L, this.f3460g));
        }
        if (!this.f3458e[3].isEmpty()) {
            this.f3458e[1].put(U[3].f3489b, d.f(0L, this.f3460g));
        }
        if (this.f3461h) {
            this.f3458e[4].put(V.f3489b, d.f(0L, this.f3460g));
            this.f3458e[4].put(W.f3489b, d.f(this.f3463j, this.f3460g));
        }
        for (int i12 = 0; i12 < T.length; i12++) {
            Iterator<Map.Entry<String, d>> it2 = this.f3458e[i12].entrySet().iterator();
            int i13 = 0;
            while (it2.hasNext()) {
                int p10 = it2.next().getValue().p();
                if (p10 > 4) {
                    i13 += p10;
                }
            }
            iArr2[i12] = iArr2[i12] + i13;
        }
        int i14 = 8;
        for (int i15 = 0; i15 < T.length; i15++) {
            if (!this.f3458e[i15].isEmpty()) {
                iArr[i15] = i14;
                i14 += (this.f3458e[i15].size() * 12) + 2 + 4 + iArr2[i15];
            }
        }
        if (this.f3461h) {
            this.f3458e[4].put(V.f3489b, d.f(i14, this.f3460g));
            this.f3462i = i10 + i14;
            i14 += this.f3463j;
        }
        int i16 = i14 + 8;
        if (f3447t) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("totalSize length: ");
            sb2.append(i16);
            for (int i17 = 0; i17 < T.length; i17++) {
                String.format("index: %d, offsets: %d, tag count: %d, data sizes: %d", Integer.valueOf(i17), Integer.valueOf(iArr[i17]), Integer.valueOf(this.f3458e[i17].size()), Integer.valueOf(iArr2[i17]));
            }
        }
        if (!this.f3458e[1].isEmpty()) {
            this.f3458e[0].put(U[1].f3489b, d.f(iArr[1], this.f3460g));
        }
        if (!this.f3458e[2].isEmpty()) {
            this.f3458e[0].put(U[2].f3489b, d.f(iArr[2], this.f3460g));
        }
        if (!this.f3458e[3].isEmpty()) {
            this.f3458e[1].put(U[3].f3489b, d.f(iArr[3], this.f3460g));
        }
        cVar.z(i16);
        cVar.write(f3443c0);
        cVar.k(this.f3460g == ByteOrder.BIG_ENDIAN ? (short) 19789 : (short) 18761);
        cVar.b(this.f3460g);
        cVar.z(42);
        cVar.x(8L);
        for (int i18 = 0; i18 < T.length; i18++) {
            if (!this.f3458e[i18].isEmpty()) {
                cVar.z(this.f3458e[i18].size());
                int size = iArr[i18] + 2 + (this.f3458e[i18].size() * 12) + 4;
                for (Map.Entry<String, d> entry2 : this.f3458e[i18].entrySet()) {
                    int i19 = Y[i18].get(entry2.getKey()).f3488a;
                    d value = entry2.getValue();
                    int p11 = value.p();
                    cVar.z(i19);
                    cVar.z(value.f3484a);
                    cVar.h(value.f3485b);
                    if (p11 > 4) {
                        cVar.x(size);
                        size += p11;
                    } else {
                        cVar.write(value.f3487d);
                        if (p11 < 4) {
                            while (p11 < 4) {
                                cVar.d(0);
                                p11++;
                            }
                        }
                    }
                }
                if (i18 == 0 && !this.f3458e[4].isEmpty()) {
                    cVar.x(iArr[4]);
                } else {
                    cVar.x(0L);
                }
                Iterator<Map.Entry<String, d>> it3 = this.f3458e[i18].entrySet().iterator();
                while (it3.hasNext()) {
                    byte[] bArr = it3.next().getValue().f3487d;
                    if (bArr.length > 4) {
                        cVar.write(bArr, 0, bArr.length);
                    }
                }
            }
        }
        if (this.f3461h) {
            cVar.write(q());
        }
        cVar.b(ByteOrder.BIG_ENDIAN);
        return i16;
    }

    public final void a() {
        String f10 = f("DateTimeOriginal");
        if (f10 != null && f("DateTime") == null) {
            this.f3458e[0].put("DateTime", d.e(f10));
        }
        if (f("ImageWidth") == null) {
            this.f3458e[0].put("ImageWidth", d.f(0L, this.f3460g));
        }
        if (f("ImageLength") == null) {
            this.f3458e[0].put("ImageLength", d.f(0L, this.f3460g));
        }
        if (f("Orientation") == null) {
            this.f3458e[0].put("Orientation", d.f(0L, this.f3460g));
        }
        if (f("LightSource") == null) {
            this.f3458e[1].put("LightSource", d.f(0L, this.f3460g));
        }
    }

    public String f(String str) {
        if (str != null) {
            d h10 = h(str);
            if (h10 != null) {
                if (!Z.contains(str)) {
                    return h10.n(this.f3460g);
                }
                if (str.equals("GPSTimeStamp")) {
                    int i10 = h10.f3484a;
                    if (i10 != 5 && i10 != 10) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("GPS Timestamp format is not rational. format=");
                        sb2.append(h10.f3484a);
                        return null;
                    }
                    f[] fVarArr = (f[]) h10.o(this.f3460g);
                    if (fVarArr != null && fVarArr.length == 3) {
                        return String.format("%02d:%02d:%02d", Integer.valueOf((int) (((float) fVarArr[0].f3492a) / ((float) fVarArr[0].f3493b))), Integer.valueOf((int) (((float) fVarArr[1].f3492a) / ((float) fVarArr[1].f3493b))), Integer.valueOf((int) (((float) fVarArr[2].f3492a) / ((float) fVarArr[2].f3493b))));
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Invalid GPS Timestamp array. array=");
                    sb3.append(Arrays.toString(fVarArr));
                    return null;
                }
                try {
                    return Double.toString(h10.l(this.f3460g));
                } catch (NumberFormatException unused) {
                }
            }
            return null;
        }
        throw new NullPointerException("tag shouldn't be null");
    }

    public int g(String str, int i10) {
        if (str != null) {
            d h10 = h(str);
            if (h10 == null) {
                return i10;
            }
            try {
                return h10.m(this.f3460g);
            } catch (NumberFormatException unused) {
                return i10;
            }
        }
        throw new NullPointerException("tag shouldn't be null");
    }

    public final d h(String str) {
        if (str != null) {
            if ("ISOSpeedRatings".equals(str)) {
                str = "PhotographicSensitivity";
            }
            for (int i10 = 0; i10 < T.length; i10++) {
                d dVar = this.f3458e[i10].get(str);
                if (dVar != null) {
                    return dVar;
                }
            }
            return null;
        }
        throw new NullPointerException("tag shouldn't be null");
    }

    public final void i(b bVar) throws IOException {
        String str;
        String str2;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                mediaMetadataRetriever.setDataSource(new C0062a(bVar));
            } else {
                FileDescriptor fileDescriptor = this.f3455b;
                if (fileDescriptor != null) {
                    mediaMetadataRetriever.setDataSource(fileDescriptor);
                } else {
                    String str3 = this.f3454a;
                    if (str3 == null) {
                        return;
                    } else {
                        mediaMetadataRetriever.setDataSource(str3);
                    }
                }
            }
            String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
            String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
            String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
            String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
            String str4 = null;
            if ("yes".equals(extractMetadata3)) {
                str4 = mediaMetadataRetriever.extractMetadata(29);
                str = mediaMetadataRetriever.extractMetadata(30);
                str2 = mediaMetadataRetriever.extractMetadata(31);
            } else if ("yes".equals(extractMetadata4)) {
                str4 = mediaMetadataRetriever.extractMetadata(18);
                str = mediaMetadataRetriever.extractMetadata(19);
                str2 = mediaMetadataRetriever.extractMetadata(24);
            } else {
                str = null;
                str2 = null;
            }
            if (str4 != null) {
                this.f3458e[0].put("ImageWidth", d.j(Integer.parseInt(str4), this.f3460g));
            }
            if (str != null) {
                this.f3458e[0].put("ImageLength", d.j(Integer.parseInt(str), this.f3460g));
            }
            if (str2 != null) {
                int i10 = 1;
                int parseInt = Integer.parseInt(str2);
                if (parseInt == 90) {
                    i10 = 6;
                } else if (parseInt == 180) {
                    i10 = 3;
                } else if (parseInt == 270) {
                    i10 = 8;
                }
                this.f3458e[0].put("Orientation", d.j(i10, this.f3460g));
            }
            if (extractMetadata != null && extractMetadata2 != null) {
                int parseInt2 = Integer.parseInt(extractMetadata);
                int parseInt3 = Integer.parseInt(extractMetadata2);
                if (parseInt3 > 6) {
                    bVar.k(parseInt2);
                    byte[] bArr = new byte[6];
                    if (bVar.read(bArr) == 6) {
                        int i11 = parseInt3 - 6;
                        if (Arrays.equals(bArr, f3443c0)) {
                            byte[] bArr2 = new byte[i11];
                            if (bVar.read(bArr2) == i11) {
                                H(bArr2, 0);
                            } else {
                                throw new IOException("Can't read exif");
                            }
                        } else {
                            throw new IOException("Invalid identifier");
                        }
                    } else {
                        throw new IOException("Can't read identifier");
                    }
                } else {
                    throw new IOException("Invalid exif length");
                }
            }
            if (f3447t) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Heif meta: ");
                sb2.append(str4);
                sb2.append("x");
                sb2.append(str);
                sb2.append(", rotation ");
                sb2.append(str2);
            }
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x017e, code lost:
    
        r20.x(r19.f3460g);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0183, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x00a4. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x016a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a9 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(b bVar, int i10, int i11) throws IOException {
        if (f3447t) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getJpegAttributes starting with: ");
            sb2.append(bVar);
        }
        bVar.x(ByteOrder.BIG_ENDIAN);
        bVar.k(i10);
        byte readByte = bVar.readByte();
        if (readByte == -1) {
            int i12 = i10 + 1;
            if (bVar.readByte() != -40) {
                throw new IOException("Invalid marker: " + Integer.toHexString(readByte & 255));
            }
            int i13 = i12 + 1;
            while (true) {
                byte readByte2 = bVar.readByte();
                if (readByte2 == -1) {
                    int i14 = i13 + 1;
                    byte readByte3 = bVar.readByte();
                    boolean z10 = f3447t;
                    if (z10) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Found JPEG segment indicator: ");
                        sb3.append(Integer.toHexString(readByte3 & 255));
                    }
                    int i15 = i14 + 1;
                    if (readByte3 != -39 && readByte3 != -38) {
                        int readUnsignedShort = bVar.readUnsignedShort() - 2;
                        int i16 = i15 + 2;
                        if (z10) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("JPEG segment: ");
                            sb4.append(Integer.toHexString(readByte3 & 255));
                            sb4.append(" (length: ");
                            sb4.append(readUnsignedShort + 2);
                            sb4.append(")");
                        }
                        if (readUnsignedShort >= 0) {
                            if (readByte3 == -31) {
                                byte[] bArr = new byte[readUnsignedShort];
                                bVar.readFully(bArr);
                                int i17 = i16 + readUnsignedShort;
                                byte[] bArr2 = f3443c0;
                                if (P(bArr, bArr2)) {
                                    long length = i16 + bArr2.length;
                                    H(Arrays.copyOfRange(bArr, bArr2.length, readUnsignedShort), i11);
                                    this.f3466m = (int) length;
                                } else {
                                    byte[] bArr3 = f3444d0;
                                    if (P(bArr, bArr3)) {
                                        long length2 = i16 + bArr3.length;
                                        byte[] copyOfRange = Arrays.copyOfRange(bArr, bArr3.length, readUnsignedShort);
                                        if (f("Xmp") == null) {
                                            this.f3458e[0].put("Xmp", new d(1, copyOfRange.length, length2, copyOfRange));
                                        }
                                    }
                                }
                                i16 = i17;
                                readUnsignedShort = 0;
                            } else if (readByte3 != -2) {
                                switch (readByte3) {
                                    default:
                                        switch (readByte3) {
                                            default:
                                                switch (readByte3) {
                                                    default:
                                                        switch (readByte3) {
                                                        }
                                                    case -55:
                                                    case -54:
                                                    case -53:
                                                        if (bVar.skipBytes(1) == 1) {
                                                            this.f3458e[i11].put("ImageLength", d.f(bVar.readUnsignedShort(), this.f3460g));
                                                            this.f3458e[i11].put("ImageWidth", d.f(bVar.readUnsignedShort(), this.f3460g));
                                                            readUnsignedShort -= 5;
                                                            break;
                                                        } else {
                                                            throw new IOException("Invalid SOFx");
                                                        }
                                                }
                                            case -59:
                                            case -58:
                                            case -57:
                                                break;
                                        }
                                    case -64:
                                    case -63:
                                    case -62:
                                    case -61:
                                        break;
                                }
                                if (readUnsignedShort < 0) {
                                    if (bVar.skipBytes(readUnsignedShort) != readUnsignedShort) {
                                        throw new IOException("Invalid JPEG segment");
                                    }
                                    i13 = i16 + readUnsignedShort;
                                } else {
                                    throw new IOException("Invalid length");
                                }
                            }
                            byte[] bArr4 = new byte[readUnsignedShort];
                            if (bVar.read(bArr4) == readUnsignedShort) {
                                if (f("UserComment") == null) {
                                    this.f3458e[1].put("UserComment", d.e(new String(bArr4, f3442b0)));
                                }
                                readUnsignedShort = 0;
                                if (readUnsignedShort < 0) {
                                }
                            } else {
                                throw new IOException("Invalid exif");
                            }
                        } else {
                            throw new IOException("Invalid length");
                        }
                    }
                } else {
                    throw new IOException("Invalid marker:" + Integer.toHexString(readByte2 & 255));
                }
            }
        } else {
            throw new IOException("Invalid marker: " + Integer.toHexString(readByte & 255));
        }
    }

    public final int k(BufferedInputStream bufferedInputStream) throws IOException {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (w(bArr)) {
            return 4;
        }
        if (y(bArr)) {
            return 9;
        }
        if (v(bArr)) {
            return 12;
        }
        if (x(bArr)) {
            return 7;
        }
        return z(bArr) ? 10 : 0;
    }

    public final void l(b bVar) throws IOException {
        n(bVar);
        d dVar = this.f3458e[1].get("MakerNote");
        if (dVar != null) {
            b bVar2 = new b(dVar.f3487d);
            bVar2.x(this.f3460g);
            byte[] bArr = D;
            byte[] bArr2 = new byte[bArr.length];
            bVar2.readFully(bArr2);
            bVar2.k(0L);
            byte[] bArr3 = E;
            byte[] bArr4 = new byte[bArr3.length];
            bVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                bVar2.k(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                bVar2.k(12L);
            }
            I(bVar2, 6);
            d dVar2 = this.f3458e[7].get("PreviewImageStart");
            d dVar3 = this.f3458e[7].get("PreviewImageLength");
            if (dVar2 != null && dVar3 != null) {
                this.f3458e[5].put("JPEGInterchangeFormat", dVar2);
                this.f3458e[5].put("JPEGInterchangeFormatLength", dVar3);
            }
            d dVar4 = this.f3458e[8].get("AspectFrame");
            if (dVar4 != null) {
                int[] iArr = (int[]) dVar4.o(this.f3460g);
                if (iArr != null && iArr.length == 4) {
                    if (iArr[2] <= iArr[0] || iArr[3] <= iArr[1]) {
                        return;
                    }
                    int i10 = (iArr[2] - iArr[0]) + 1;
                    int i11 = (iArr[3] - iArr[1]) + 1;
                    if (i10 < i11) {
                        int i12 = i10 + i11;
                        i11 = i12 - i11;
                        i10 = i12 - i11;
                    }
                    d j10 = d.j(i10, this.f3460g);
                    d j11 = d.j(i11, this.f3460g);
                    this.f3458e[0].put("ImageWidth", j10);
                    this.f3458e[0].put("ImageLength", j11);
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Invalid aspect frame values. frame=");
                sb2.append(Arrays.toString(iArr));
            }
        }
    }

    public final void m(b bVar) throws IOException {
        bVar.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        bVar.read(bArr);
        bVar.skipBytes(4);
        bVar.read(bArr2);
        int i10 = ByteBuffer.wrap(bArr).getInt();
        int i11 = ByteBuffer.wrap(bArr2).getInt();
        j(bVar, i10, 5);
        bVar.k(i11);
        bVar.x(ByteOrder.BIG_ENDIAN);
        int readInt = bVar.readInt();
        if (f3447t) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("numberOfDirectoryEntry: ");
            sb2.append(readInt);
        }
        for (int i12 = 0; i12 < readInt; i12++) {
            int readUnsignedShort = bVar.readUnsignedShort();
            int readUnsignedShort2 = bVar.readUnsignedShort();
            if (readUnsignedShort == O.f3488a) {
                short readShort = bVar.readShort();
                short readShort2 = bVar.readShort();
                d j10 = d.j(readShort, this.f3460g);
                d j11 = d.j(readShort2, this.f3460g);
                this.f3458e[0].put("ImageLength", j10);
                this.f3458e[0].put("ImageWidth", j11);
                if (f3447t) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Updated to length: ");
                    sb3.append((int) readShort);
                    sb3.append(", width: ");
                    sb3.append((int) readShort2);
                    return;
                }
                return;
            }
            bVar.skipBytes(readUnsignedShort2);
        }
    }

    public final void n(b bVar) throws IOException {
        d dVar;
        E(bVar, bVar.available());
        I(bVar, 0);
        R(bVar, 0);
        R(bVar, 5);
        R(bVar, 4);
        S(bVar);
        if (this.f3457d != 8 || (dVar = this.f3458e[1].get("MakerNote")) == null) {
            return;
        }
        b bVar2 = new b(dVar.f3487d);
        bVar2.x(this.f3460g);
        bVar2.k(6L);
        I(bVar2, 9);
        d dVar2 = this.f3458e[9].get("ColorSpace");
        if (dVar2 != null) {
            this.f3458e[1].put("ColorSpace", dVar2);
        }
    }

    public final void o(b bVar) throws IOException {
        n(bVar);
        if (this.f3458e[0].get("JpgFromRaw") != null) {
            j(bVar, this.f3470q, 5);
        }
        d dVar = this.f3458e[0].get("ISO");
        d dVar2 = this.f3458e[1].get("PhotographicSensitivity");
        if (dVar == null || dVar2 != null) {
            return;
        }
        this.f3458e[1].put("PhotographicSensitivity", dVar);
    }

    public byte[] p() {
        int i10 = this.f3465l;
        if (i10 == 6 || i10 == 7) {
            return q();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005d A[Catch: all -> 0x0090, Exception -> 0x00a9, TRY_ENTER, TRY_LEAVE, TryCatch #8 {Exception -> 0x00a9, all -> 0x0090, blocks: (B:17:0x005d, B:20:0x006d, B:22:0x0079, B:27:0x0084, B:28:0x0089, B:29:0x008a, B:30:0x008f, B:31:0x0095, B:32:0x009a), top: B:15:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0095 A[Catch: all -> 0x0090, Exception -> 0x00a9, TryCatch #8 {Exception -> 0x00a9, all -> 0x0090, blocks: (B:17:0x005d, B:20:0x006d, B:22:0x0079, B:27:0x0084, B:28:0x0089, B:29:0x008a, B:30:0x008f, B:31:0x0095, B:32:0x009a), top: B:15:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] q() {
        Throwable th;
        FileDescriptor fileDescriptor;
        InputStream inputStream;
        Throwable th2;
        FileDescriptor fileDescriptor2;
        InputStream inputStream2 = null;
        if (!this.f3461h) {
            return null;
        }
        byte[] bArr = this.f3464k;
        if (bArr != null) {
            return bArr;
        }
        try {
            inputStream = this.f3456c;
            try {
                if (inputStream != null) {
                    try {
                        if (inputStream.markSupported()) {
                            inputStream.reset();
                        } else {
                            c(inputStream);
                            return null;
                        }
                    } catch (Exception unused) {
                        fileDescriptor = null;
                        c(inputStream);
                        if (fileDescriptor != null) {
                        }
                        return null;
                    } catch (Throwable th3) {
                        inputStream2 = inputStream;
                        th = th3;
                        fileDescriptor = null;
                        c(inputStream2);
                        if (fileDescriptor != null) {
                        }
                    }
                } else if (this.f3454a != null) {
                    inputStream = new FileInputStream(this.f3454a);
                } else {
                    if (Build.VERSION.SDK_INT < 21 || (fileDescriptor2 = this.f3455b) == null) {
                        inputStream = null;
                        fileDescriptor = null;
                    } else {
                        FileDescriptor dup = Os.dup(fileDescriptor2);
                        try {
                            Os.lseek(dup, 0L, OsConstants.SEEK_SET);
                            fileDescriptor = dup;
                            inputStream = new FileInputStream(dup);
                        } catch (Exception unused2) {
                            fileDescriptor = dup;
                            inputStream = null;
                            c(inputStream);
                            if (fileDescriptor != null) {
                            }
                            return null;
                        } catch (Throwable th4) {
                            th2 = th4;
                            fileDescriptor = dup;
                            th = th2;
                            c(inputStream2);
                            if (fileDescriptor != null) {
                            }
                        }
                    }
                    if (inputStream != null) {
                        throw new FileNotFoundException();
                    }
                    if (inputStream.skip(this.f3462i) == this.f3462i) {
                        byte[] bArr2 = new byte[this.f3463j];
                        if (inputStream.read(bArr2) == this.f3463j) {
                            this.f3464k = bArr2;
                            c(inputStream);
                            if (fileDescriptor != null) {
                                b(fileDescriptor);
                            }
                            return bArr2;
                        }
                        throw new IOException("Corrupted image");
                    }
                    throw new IOException("Corrupted image");
                }
                if (inputStream != null) {
                }
            } catch (Exception unused3) {
                c(inputStream);
                if (fileDescriptor != null) {
                    b(fileDescriptor);
                }
                return null;
            } catch (Throwable th5) {
                th2 = th5;
                inputStream2 = inputStream;
                th = th2;
                c(inputStream2);
                if (fileDescriptor != null) {
                    b(fileDescriptor);
                    throw th;
                }
                throw th;
            }
            fileDescriptor = null;
        } catch (Exception unused4) {
            inputStream = null;
            fileDescriptor = null;
        } catch (Throwable th6) {
            th = th6;
            fileDescriptor = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void s(b bVar, HashMap hashMap) throws IOException {
        int i10;
        d dVar = (d) hashMap.get("JPEGInterchangeFormat");
        d dVar2 = (d) hashMap.get("JPEGInterchangeFormatLength");
        if (dVar == null || dVar2 == null) {
            return;
        }
        int m10 = dVar.m(this.f3460g);
        int min = Math.min(dVar2.m(this.f3460g), bVar.b() - m10);
        int i11 = this.f3457d;
        if (i11 == 4 || i11 == 9 || i11 == 10) {
            i10 = this.f3466m;
        } else {
            if (i11 == 7) {
                i10 = this.f3467n;
            }
            if (f3447t) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Setting thumbnail attributes with offset: ");
                sb2.append(m10);
                sb2.append(", length: ");
                sb2.append(min);
            }
            if (m10 > 0 || min <= 0) {
            }
            this.f3461h = true;
            this.f3462i = m10;
            this.f3463j = min;
            if (this.f3454a == null && this.f3456c == null && this.f3455b == null) {
                byte[] bArr = new byte[min];
                bVar.k(m10);
                bVar.readFully(bArr);
                this.f3464k = bArr;
                return;
            }
            return;
        }
        m10 += i10;
        if (f3447t) {
        }
        if (m10 > 0) {
        }
    }

    public final void t(b bVar, HashMap hashMap) throws IOException {
        d dVar = (d) hashMap.get("StripOffsets");
        d dVar2 = (d) hashMap.get("StripByteCounts");
        if (dVar == null || dVar2 == null) {
            return;
        }
        long[] d10 = d(dVar.o(this.f3460g));
        long[] d11 = d(dVar2.o(this.f3460g));
        if (d10 == null || d11 == null) {
            return;
        }
        long j10 = 0;
        for (long j11 : d11) {
            j10 += j11;
        }
        int i10 = (int) j10;
        byte[] bArr = new byte[i10];
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < d10.length; i13++) {
            int i14 = (int) d10[i13];
            int i15 = (int) d11[i13];
            int i16 = i14 - i11;
            bVar.k(i16);
            int i17 = i11 + i16;
            byte[] bArr2 = new byte[i15];
            bVar.read(bArr2);
            i11 = i17 + i15;
            System.arraycopy(bArr2, 0, bArr, i12, i15);
            i12 += i15;
        }
        this.f3461h = true;
        this.f3464k = bArr;
        this.f3463j = i10;
    }

    public final void u(String str) throws IOException {
        if (str != null) {
            FileInputStream fileInputStream = null;
            this.f3456c = null;
            this.f3454a = str;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    if (A(fileInputStream2.getFD())) {
                        this.f3455b = fileInputStream2.getFD();
                    } else {
                        this.f3455b = null;
                    }
                    D(fileInputStream2);
                    c(fileInputStream2);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    c(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            throw new NullPointerException("filename cannot be null");
        }
    }

    public final boolean v(byte[] bArr) throws IOException {
        b bVar;
        long readInt;
        byte[] bArr2;
        b bVar2 = null;
        try {
            try {
                bVar = new b(bArr);
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bVar.x(ByteOrder.BIG_ENDIAN);
            readInt = bVar.readInt();
            bArr2 = new byte[4];
            bVar.read(bArr2);
        } catch (Exception unused2) {
            bVar2 = bVar;
            boolean z10 = f3447t;
            if (bVar2 != null) {
                bVar2.close();
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            bVar2 = bVar;
            if (bVar2 != null) {
                bVar2.close();
            }
            throw th;
        }
        if (!Arrays.equals(bArr2, A)) {
            bVar.close();
            return false;
        }
        long j10 = 16;
        if (readInt == 1) {
            readInt = bVar.readLong();
            if (readInt < 16) {
                bVar.close();
                return false;
            }
        } else {
            j10 = 8;
        }
        if (readInt > bArr.length) {
            readInt = bArr.length;
        }
        long j11 = readInt - j10;
        if (j11 < 8) {
            bVar.close();
            return false;
        }
        byte[] bArr3 = new byte[4];
        boolean z11 = false;
        boolean z12 = false;
        for (long j12 = 0; j12 < j11 / 4; j12++) {
            if (bVar.read(bArr3) != 4) {
                bVar.close();
                return false;
            }
            if (j12 != 1) {
                if (Arrays.equals(bArr3, B)) {
                    z11 = true;
                } else if (Arrays.equals(bArr3, C)) {
                    z12 = true;
                }
                if (z11 && z12) {
                    bVar.close();
                    return true;
                }
            }
        }
        bVar.close();
        return false;
    }

    public final boolean x(byte[] bArr) throws IOException {
        b bVar = new b(bArr);
        ByteOrder G2 = G(bVar);
        this.f3460g = G2;
        bVar.x(G2);
        short readShort = bVar.readShort();
        bVar.close();
        return readShort == 20306 || readShort == 21330;
    }

    public final boolean y(byte[] bArr) throws IOException {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i10 = 0; i10 < bytes.length; i10++) {
            if (bArr[i10] != bytes[i10]) {
                return false;
            }
        }
        return true;
    }

    public final boolean z(byte[] bArr) throws IOException {
        b bVar = new b(bArr);
        ByteOrder G2 = G(bVar);
        this.f3460g = G2;
        bVar.x(G2);
        short readShort = bVar.readShort();
        bVar.close();
        return readShort == 85;
    }

    /* compiled from: ExifInterface.java */
    /* loaded from: classes.dex */
    public static class b extends InputStream implements DataInput {

        /* renamed from: j, reason: collision with root package name */
        public static final ByteOrder f3476j = ByteOrder.LITTLE_ENDIAN;

        /* renamed from: k, reason: collision with root package name */
        public static final ByteOrder f3477k = ByteOrder.BIG_ENDIAN;

        /* renamed from: f, reason: collision with root package name */
        public DataInputStream f3478f;

        /* renamed from: g, reason: collision with root package name */
        public ByteOrder f3479g;

        /* renamed from: h, reason: collision with root package name */
        public final int f3480h;

        /* renamed from: i, reason: collision with root package name */
        public int f3481i;

        public b(InputStream inputStream) throws IOException {
            this.f3479g = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f3478f = dataInputStream;
            int available = dataInputStream.available();
            this.f3480h = available;
            this.f3481i = 0;
            this.f3478f.mark(available);
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f3478f.available();
        }

        public int b() {
            return this.f3480h;
        }

        public int d() {
            return this.f3481i;
        }

        public long h() throws IOException {
            return readInt() & 4294967295L;
        }

        public void k(long j10) throws IOException {
            int i10 = this.f3481i;
            if (i10 > j10) {
                this.f3481i = 0;
                this.f3478f.reset();
                this.f3478f.mark(this.f3480h);
            } else {
                j10 -= i10;
            }
            int i11 = (int) j10;
            if (skipBytes(i11) != i11) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            this.f3481i++;
            return this.f3478f.read();
        }

        @Override // java.io.DataInput
        public boolean readBoolean() throws IOException {
            this.f3481i++;
            return this.f3478f.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() throws IOException {
            int i10 = this.f3481i + 1;
            this.f3481i = i10;
            if (i10 <= this.f3480h) {
                int read = this.f3478f.read();
                if (read >= 0) {
                    return (byte) read;
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() throws IOException {
            this.f3481i += 2;
            return this.f3478f.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = this.f3481i + i11;
            this.f3481i = i12;
            if (i12 <= this.f3480h) {
                if (this.f3478f.read(bArr, i10, i11) != i11) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int readInt() throws IOException {
            int i10 = this.f3481i + 4;
            this.f3481i = i10;
            if (i10 <= this.f3480h) {
                int read = this.f3478f.read();
                int read2 = this.f3478f.read();
                int read3 = this.f3478f.read();
                int read4 = this.f3478f.read();
                if ((read | read2 | read3 | read4) >= 0) {
                    ByteOrder byteOrder = this.f3479g;
                    if (byteOrder == f3476j) {
                        return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == f3477k) {
                        return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                    }
                    throw new IOException("Invalid byte order: " + this.f3479g);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readLine() throws IOException {
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() throws IOException {
            int i10 = this.f3481i + 8;
            this.f3481i = i10;
            if (i10 <= this.f3480h) {
                int read = this.f3478f.read();
                int read2 = this.f3478f.read();
                int read3 = this.f3478f.read();
                int read4 = this.f3478f.read();
                int read5 = this.f3478f.read();
                int read6 = this.f3478f.read();
                int read7 = this.f3478f.read();
                int read8 = this.f3478f.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                    ByteOrder byteOrder = this.f3479g;
                    if (byteOrder == f3476j) {
                        return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == f3477k) {
                        return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                    }
                    throw new IOException("Invalid byte order: " + this.f3479g);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public short readShort() throws IOException {
            int i10 = this.f3481i + 2;
            this.f3481i = i10;
            if (i10 <= this.f3480h) {
                int read = this.f3478f.read();
                int read2 = this.f3478f.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.f3479g;
                    if (byteOrder == f3476j) {
                        return (short) ((read2 << 8) + read);
                    }
                    if (byteOrder == f3477k) {
                        return (short) ((read << 8) + read2);
                    }
                    throw new IOException("Invalid byte order: " + this.f3479g);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readUTF() throws IOException {
            this.f3481i += 2;
            return this.f3478f.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() throws IOException {
            this.f3481i++;
            return this.f3478f.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() throws IOException {
            int i10 = this.f3481i + 2;
            this.f3481i = i10;
            if (i10 <= this.f3480h) {
                int read = this.f3478f.read();
                int read2 = this.f3478f.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.f3479g;
                    if (byteOrder == f3476j) {
                        return (read2 << 8) + read;
                    }
                    if (byteOrder == f3477k) {
                        return (read << 8) + read2;
                    }
                    throw new IOException("Invalid byte order: " + this.f3479g);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int skipBytes(int i10) throws IOException {
            int min = Math.min(i10, this.f3480h - this.f3481i);
            int i11 = 0;
            while (i11 < min) {
                i11 += this.f3478f.skipBytes(min - i11);
            }
            this.f3481i += i11;
            return i11;
        }

        public void x(ByteOrder byteOrder) {
            this.f3479g = byteOrder;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            int read = this.f3478f.read(bArr, i10, i11);
            this.f3481i += read;
            return read;
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) throws IOException {
            int length = this.f3481i + bArr.length;
            this.f3481i = length;
            if (length <= this.f3480h) {
                if (this.f3478f.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        public b(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }
    }

    /* compiled from: ExifInterface.java */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public final int f3488a;

        /* renamed from: b, reason: collision with root package name */
        public final String f3489b;

        /* renamed from: c, reason: collision with root package name */
        public final int f3490c;

        /* renamed from: d, reason: collision with root package name */
        public final int f3491d;

        public e(String str, int i10, int i11) {
            this.f3489b = str;
            this.f3488a = i10;
            this.f3490c = i11;
            this.f3491d = -1;
        }

        public boolean a(int i10) {
            int i11;
            int i12 = this.f3490c;
            if (i12 == 7 || i10 == 7 || i12 == i10 || (i11 = this.f3491d) == i10) {
                return true;
            }
            if ((i12 == 4 || i11 == 4) && i10 == 3) {
                return true;
            }
            if ((i12 == 9 || i11 == 9) && i10 == 8) {
                return true;
            }
            return (i12 == 12 || i11 == 12) && i10 == 11;
        }

        public e(String str, int i10, int i11, int i12) {
            this.f3489b = str;
            this.f3488a = i10;
            this.f3490c = i11;
            this.f3491d = i12;
        }
    }

    public a(String str) throws IOException {
        e[][] eVarArr = T;
        this.f3458e = new HashMap[eVarArr.length];
        this.f3459f = new HashSet(eVarArr.length);
        this.f3460g = ByteOrder.BIG_ENDIAN;
        if (str != null) {
            u(str);
            return;
        }
        throw new NullPointerException("filename cannot be null");
    }

    public a(InputStream inputStream) throws IOException {
        e[][] eVarArr = T;
        this.f3458e = new HashMap[eVarArr.length];
        this.f3459f = new HashSet(eVarArr.length);
        this.f3460g = ByteOrder.BIG_ENDIAN;
        if (inputStream != null) {
            this.f3454a = null;
            if (inputStream instanceof AssetManager.AssetInputStream) {
                this.f3456c = (AssetManager.AssetInputStream) inputStream;
                this.f3455b = null;
            } else {
                if (inputStream instanceof FileInputStream) {
                    FileInputStream fileInputStream = (FileInputStream) inputStream;
                    if (A(fileInputStream.getFD())) {
                        this.f3456c = null;
                        this.f3455b = fileInputStream.getFD();
                    }
                }
                this.f3456c = null;
                this.f3455b = null;
            }
            D(inputStream);
            return;
        }
        throw new NullPointerException("inputStream cannot be null");
    }
}
