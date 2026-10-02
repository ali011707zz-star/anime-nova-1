package y7;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import y7.l;
import y7.s;

/* compiled from: Downsampler.java */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: f, reason: collision with root package name */
    public static final p7.f<p7.b> f16676f = p7.f.f("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", p7.b.f12077h);

    /* renamed from: g, reason: collision with root package name */
    public static final p7.f<p7.h> f16677g = p7.f.f("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", p7.h.SRGB);

    /* renamed from: h, reason: collision with root package name */
    @Deprecated
    public static final p7.f<l> f16678h = l.f16671h;

    /* renamed from: i, reason: collision with root package name */
    public static final p7.f<Boolean> f16679i;

    /* renamed from: j, reason: collision with root package name */
    public static final p7.f<Boolean> f16680j;

    /* renamed from: k, reason: collision with root package name */
    public static final Set<String> f16681k;

    /* renamed from: l, reason: collision with root package name */
    public static final b f16682l;

    /* renamed from: m, reason: collision with root package name */
    public static final Set<ImageHeaderParser.ImageType> f16683m;

    /* renamed from: n, reason: collision with root package name */
    public static final Queue<BitmapFactory.Options> f16684n;

    /* renamed from: a, reason: collision with root package name */
    public final s7.e f16685a;

    /* renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f16686b;

    /* renamed from: c, reason: collision with root package name */
    public final s7.b f16687c;

    /* renamed from: d, reason: collision with root package name */
    public final List<ImageHeaderParser> f16688d;

    /* renamed from: e, reason: collision with root package name */
    public final r f16689e = r.a();

    /* compiled from: Downsampler.java */
    /* loaded from: classes.dex */
    public class a implements b {
        @Override // y7.m.b
        public void a(s7.e eVar, Bitmap bitmap) {
        }

        @Override // y7.m.b
        public void b() {
        }
    }

    /* compiled from: Downsampler.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(s7.e eVar, Bitmap bitmap) throws IOException;

        void b();
    }

    static {
        Boolean bool = Boolean.FALSE;
        f16679i = p7.f.f("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f16680j = p7.f.f("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        f16681k = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f16682l = new a();
        f16683m = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        f16684n = l8.k.f(0);
    }

    public m(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, s7.e eVar, s7.b bVar) {
        this.f16688d = list;
        this.f16686b = (DisplayMetrics) l8.j.d(displayMetrics);
        this.f16685a = (s7.e) l8.j.d(eVar);
        this.f16687c = (s7.b) l8.j.d(bVar);
    }

    public static int a(double d10) {
        int l10 = l(d10);
        double d11 = l10;
        Double.isNaN(d11);
        int x10 = x(d11 * d10);
        double d12 = x10 / l10;
        Double.isNaN(d12);
        double d13 = x10;
        Double.isNaN(d13);
        return x((d10 / d12) * d13);
    }

    public static void c(ImageHeaderParser.ImageType imageType, s sVar, b bVar, s7.e eVar, l lVar, int i10, int i11, int i12, int i13, int i14, BitmapFactory.Options options) throws IOException {
        int i15;
        int i16;
        int min;
        int i17;
        int floor;
        double floor2;
        int i18;
        if (i11 > 0 && i12 > 0) {
            if (r(i10)) {
                i16 = i11;
                i15 = i12;
            } else {
                i15 = i11;
                i16 = i12;
            }
            float b10 = lVar.b(i15, i16, i13, i14);
            if (b10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                l.g a10 = lVar.a(i15, i16, i13, i14);
                if (a10 != null) {
                    float f10 = i15;
                    float f11 = i16;
                    int x10 = i15 / x(b10 * f10);
                    int x11 = i16 / x(b10 * f11);
                    l.g gVar = l.g.MEMORY;
                    if (a10 == gVar) {
                        min = Math.max(x10, x11);
                    } else {
                        min = Math.min(x10, x11);
                    }
                    int i19 = Build.VERSION.SDK_INT;
                    if (i19 > 23 || !f16681k.contains(options.outMimeType)) {
                        int max = Math.max(1, Integer.highestOneBit(min));
                        if (a10 == gVar && max < 1.0f / b10) {
                            max <<= 1;
                        }
                        i17 = max;
                    } else {
                        i17 = 1;
                    }
                    options.inSampleSize = i17;
                    if (imageType == ImageHeaderParser.ImageType.JPEG) {
                        float min2 = Math.min(i17, 8);
                        floor = (int) Math.ceil(f10 / min2);
                        i18 = (int) Math.ceil(f11 / min2);
                        int i20 = i17 / 8;
                        if (i20 > 0) {
                            floor /= i20;
                            i18 /= i20;
                        }
                    } else {
                        if (imageType != ImageHeaderParser.ImageType.PNG && imageType != ImageHeaderParser.ImageType.PNG_A) {
                            if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
                                if (i19 >= 24) {
                                    float f12 = i17;
                                    floor = Math.round(f10 / f12);
                                    i18 = Math.round(f11 / f12);
                                } else {
                                    float f13 = i17;
                                    floor = (int) Math.floor(f10 / f13);
                                    floor2 = Math.floor(f11 / f13);
                                }
                            } else if (i15 % i17 == 0 && i16 % i17 == 0) {
                                floor = i15 / i17;
                                i18 = i16 / i17;
                            } else {
                                int[] m10 = m(sVar, options, bVar, eVar);
                                floor = m10[0];
                                i18 = m10[1];
                            }
                        } else {
                            float f14 = i17;
                            floor = (int) Math.floor(f10 / f14);
                            floor2 = Math.floor(f11 / f14);
                        }
                        i18 = (int) floor2;
                    }
                    double b11 = lVar.b(floor, i18, i13, i14);
                    if (i19 >= 19) {
                        options.inTargetDensity = a(b11);
                        options.inDensity = l(b11);
                    }
                    if (s(options)) {
                        options.inScaled = true;
                    } else {
                        options.inTargetDensity = 0;
                        options.inDensity = 0;
                    }
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Calculate scaling, source: [");
                        sb2.append(i11);
                        sb2.append("x");
                        sb2.append(i12);
                        sb2.append("], degreesToRotate: ");
                        sb2.append(i10);
                        sb2.append(", target: [");
                        sb2.append(i13);
                        sb2.append("x");
                        sb2.append(i14);
                        sb2.append("], power of two scaled: [");
                        sb2.append(floor);
                        sb2.append("x");
                        sb2.append(i18);
                        sb2.append("], exact scale factor: ");
                        sb2.append(b10);
                        sb2.append(", power of 2 sample size: ");
                        sb2.append(i17);
                        sb2.append(", adjusted scale factor: ");
                        sb2.append(b11);
                        sb2.append(", target density: ");
                        sb2.append(options.inTargetDensity);
                        sb2.append(", density: ");
                        sb2.append(options.inDensity);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Cannot round with null rounding");
            }
            throw new IllegalArgumentException("Cannot scale with factor: " + b10 + " from: " + lVar + ", source: [" + i11 + "x" + i12 + "], target: [" + i13 + "x" + i14 + "]");
        }
        if (Log.isLoggable("Downsampler", 3)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unable to determine dimensions for: ");
            sb3.append(imageType);
            sb3.append(" with target [");
            sb3.append(i13);
            sb3.append("x");
            sb3.append(i14);
            sb3.append("]");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:?, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap i(s sVar, BitmapFactory.Options options, b bVar, s7.e eVar) throws IOException {
        if (!options.inJustDecodeBounds) {
            bVar.b();
            sVar.b();
        }
        int i10 = options.outWidth;
        int i11 = options.outHeight;
        String str = options.outMimeType;
        z.i().lock();
        try {
            try {
                Bitmap a10 = sVar.a(options);
                z.i().unlock();
                return a10;
            } catch (IllegalArgumentException e10) {
                IOException u10 = u(e10, i10, i11, str, options);
                Log.isLoggable("Downsampler", 3);
                Bitmap bitmap = options.inBitmap;
                if (bitmap != null) {
                    try {
                        eVar.d(bitmap);
                        options.inBitmap = null;
                        Bitmap i12 = i(sVar, options, bVar, eVar);
                        z.i().unlock();
                        return i12;
                    } catch (IOException unused) {
                        throw u10;
                    }
                }
                throw u10;
            }
        } catch (Throwable th) {
            z.i().unlock();
            throw th;
        }
    }

    @TargetApi(19)
    public static String j(Bitmap bitmap) {
        String str;
        if (bitmap == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            str = " (" + bitmap.getAllocationByteCount() + ")";
        } else {
            str = "";
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + str;
    }

    public static synchronized BitmapFactory.Options k() {
        BitmapFactory.Options poll;
        synchronized (m.class) {
            Queue<BitmapFactory.Options> queue = f16684n;
            synchronized (queue) {
                poll = queue.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                w(poll);
            }
        }
        return poll;
    }

    public static int l(double d10) {
        if (d10 > 1.0d) {
            d10 = 1.0d / d10;
        }
        return (int) Math.round(d10 * 2.147483647E9d);
    }

    public static int[] m(s sVar, BitmapFactory.Options options, b bVar, s7.e eVar) throws IOException {
        options.inJustDecodeBounds = true;
        i(sVar, options, bVar, eVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    public static String n(BitmapFactory.Options options) {
        return j(options.inBitmap);
    }

    public static boolean r(int i10) {
        return i10 == 90 || i10 == 270;
    }

    public static boolean s(BitmapFactory.Options options) {
        int i10;
        int i11 = options.inTargetDensity;
        return i11 > 0 && (i10 = options.inDensity) > 0 && i11 != i10;
    }

    public static void t(int i10, int i11, String str, BitmapFactory.Options options, Bitmap bitmap, int i12, int i13, long j10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Decoded ");
        sb2.append(j(bitmap));
        sb2.append(" from [");
        sb2.append(i10);
        sb2.append("x");
        sb2.append(i11);
        sb2.append("] ");
        sb2.append(str);
        sb2.append(" with inBitmap ");
        sb2.append(n(options));
        sb2.append(" for [");
        sb2.append(i12);
        sb2.append("x");
        sb2.append(i13);
        sb2.append("], sample size: ");
        sb2.append(options.inSampleSize);
        sb2.append(", density: ");
        sb2.append(options.inDensity);
        sb2.append(", target density: ");
        sb2.append(options.inTargetDensity);
        sb2.append(", thread: ");
        sb2.append(Thread.currentThread().getName());
        sb2.append(", duration: ");
        sb2.append(l8.f.a(j10));
    }

    public static IOException u(IllegalArgumentException illegalArgumentException, int i10, int i11, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i10 + ", outHeight: " + i11 + ", outMimeType: " + str + ", inBitmap: " + n(options), illegalArgumentException);
    }

    public static void v(BitmapFactory.Options options) {
        w(options);
        Queue<BitmapFactory.Options> queue = f16684n;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    public static void w(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public static int x(double d10) {
        return (int) (d10 + 0.5d);
    }

    @TargetApi(26)
    public static void y(BitmapFactory.Options options, s7.e eVar, int i10, int i11) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
            return;
        } else {
            config = options.outConfig;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = eVar.e(i10, i11, config);
    }

    public final void b(s sVar, p7.b bVar, boolean z10, boolean z11, BitmapFactory.Options options, int i10, int i11) {
        if (this.f16689e.e(i10, i11, options, z10, z11)) {
            return;
        }
        if (bVar != p7.b.PREFER_ARGB_8888 && Build.VERSION.SDK_INT != 16) {
            boolean z12 = false;
            try {
                z12 = sVar.d().hasAlpha();
            } catch (IOException unused) {
                if (Log.isLoggable("Downsampler", 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Cannot determine whether the image has alpha or not from header, format ");
                    sb2.append(bVar);
                }
            }
            Bitmap.Config config = z12 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
            options.inPreferredConfig = config;
            if (config == Bitmap.Config.RGB_565) {
                options.inDither = true;
                return;
            }
            return;
        }
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
    }

    public r7.u<Bitmap> d(ParcelFileDescriptor parcelFileDescriptor, int i10, int i11, p7.g gVar) throws IOException {
        return g(new s.b(parcelFileDescriptor, this.f16688d, this.f16687c), i10, i11, gVar, f16682l);
    }

    public r7.u<Bitmap> e(InputStream inputStream, int i10, int i11, p7.g gVar) throws IOException {
        return f(inputStream, i10, i11, gVar, f16682l);
    }

    public r7.u<Bitmap> f(InputStream inputStream, int i10, int i11, p7.g gVar, b bVar) throws IOException {
        return g(new s.a(inputStream, this.f16688d, this.f16687c), i10, i11, gVar, bVar);
    }

    public final r7.u<Bitmap> g(s sVar, int i10, int i11, p7.g gVar, b bVar) throws IOException {
        byte[] bArr = (byte[]) this.f16687c.e(65536, byte[].class);
        BitmapFactory.Options k10 = k();
        k10.inTempStorage = bArr;
        p7.b bVar2 = (p7.b) gVar.c(f16676f);
        p7.h hVar = (p7.h) gVar.c(f16677g);
        l lVar = (l) gVar.c(l.f16671h);
        boolean booleanValue = ((Boolean) gVar.c(f16679i)).booleanValue();
        p7.f<Boolean> fVar = f16680j;
        try {
            return e.e(h(sVar, k10, lVar, bVar2, hVar, gVar.c(fVar) != null && ((Boolean) gVar.c(fVar)).booleanValue(), i10, i11, booleanValue, bVar), this.f16685a);
        } finally {
            v(k10);
            this.f16687c.d(bArr);
        }
    }

    public final Bitmap h(s sVar, BitmapFactory.Options options, l lVar, p7.b bVar, p7.h hVar, boolean z10, int i10, int i11, boolean z11, b bVar2) throws IOException {
        int i12;
        int i13;
        int i14;
        m mVar;
        int round;
        int round2;
        int i15;
        ColorSpace colorSpace;
        long b10 = l8.f.b();
        int[] m10 = m(sVar, options, bVar2, this.f16685a);
        boolean z12 = false;
        int i16 = m10[0];
        int i17 = m10[1];
        String str = options.outMimeType;
        boolean z13 = (i16 == -1 || i17 == -1) ? false : z10;
        int c10 = sVar.c();
        int j10 = z.j(c10);
        boolean m11 = z.m(c10);
        if (i10 == Integer.MIN_VALUE) {
            i12 = i11;
            i13 = r(j10) ? i17 : i16;
        } else {
            i12 = i11;
            i13 = i10;
        }
        if (i12 == Integer.MIN_VALUE) {
            i14 = r(j10) ? i16 : i17;
        } else {
            i14 = i12;
        }
        ImageHeaderParser.ImageType d10 = sVar.d();
        c(d10, sVar, bVar2, this.f16685a, lVar, j10, i16, i17, i13, i14, options);
        b(sVar, bVar, z13, m11, options, i13, i14);
        int i18 = Build.VERSION.SDK_INT;
        boolean z14 = i18 >= 19;
        if (options.inSampleSize == 1 || z14) {
            mVar = this;
            if (mVar.z(d10)) {
                if (i16 < 0 || i17 < 0 || !z11 || !z14) {
                    float f10 = s(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                    int i19 = options.inSampleSize;
                    float f11 = i19;
                    float f12 = f10;
                    int ceil = (int) Math.ceil(i16 / f11);
                    int ceil2 = (int) Math.ceil(i17 / f11);
                    round = Math.round(ceil * f12);
                    round2 = Math.round(ceil2 * f12);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Calculated target [");
                        sb2.append(round);
                        sb2.append("x");
                        sb2.append(round2);
                        sb2.append("] for source [");
                        sb2.append(i16);
                        sb2.append("x");
                        sb2.append(i17);
                        sb2.append("], sampleSize: ");
                        sb2.append(i19);
                        sb2.append(", targetDensity: ");
                        sb2.append(options.inTargetDensity);
                        sb2.append(", density: ");
                        sb2.append(options.inDensity);
                        sb2.append(", density multiplier: ");
                        sb2.append(f12);
                    }
                } else {
                    round = i13;
                    round2 = i14;
                }
                if (round > 0 && round2 > 0) {
                    y(options, mVar.f16685a, round, round2);
                }
            }
        } else {
            mVar = this;
        }
        if (i18 >= 28) {
            if (hVar == p7.h.DISPLAY_P3 && (colorSpace = options.outColorSpace) != null && colorSpace.isWideGamut()) {
                z12 = true;
            }
            options.inPreferredColorSpace = ColorSpace.get(z12 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
        } else if (i18 >= 26) {
            options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        }
        Bitmap i20 = i(sVar, options, bVar2, mVar.f16685a);
        bVar2.a(mVar.f16685a, i20);
        if (Log.isLoggable("Downsampler", 2)) {
            i15 = c10;
            t(i16, i17, str, options, i20, i10, i11, b10);
        } else {
            i15 = c10;
        }
        Bitmap bitmap = null;
        if (i20 != null) {
            i20.setDensity(mVar.f16686b.densityDpi);
            bitmap = z.n(mVar.f16685a, i20, i15);
            if (!i20.equals(bitmap)) {
                mVar.f16685a.d(i20);
            }
        }
        return bitmap;
    }

    public boolean o(ParcelFileDescriptor parcelFileDescriptor) {
        return ParcelFileDescriptorRewinder.c();
    }

    public boolean p(InputStream inputStream) {
        return true;
    }

    public boolean q(ByteBuffer byteBuffer) {
        return true;
    }

    public final boolean z(ImageHeaderParser.ImageType imageType) {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return f16683m.contains(imageType);
    }
}
