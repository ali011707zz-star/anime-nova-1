package l8;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
import v7.l;

/* compiled from: Util.java */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f10532a = "0123456789abcdef".toCharArray();

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f10533b = new char[64];

    /* compiled from: Util.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f10534a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f10534a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10534a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10534a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10534a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10534a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static void a() {
        if (!p()) {
            throw new IllegalArgumentException("You must call this method on a background thread");
        }
    }

    public static void b() {
        if (!q()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        if (obj instanceof l) {
            return ((l) obj).a(obj2);
        }
        return obj.equals(obj2);
    }

    public static boolean d(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static String e(byte[] bArr, char[] cArr) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int i11 = bArr[i10] & 255;
            int i12 = i10 * 2;
            char[] cArr2 = f10532a;
            cArr[i12] = cArr2[i11 >>> 4];
            cArr[i12 + 1] = cArr2[i11 & 15];
        }
        return new String(cArr);
    }

    public static <T> Queue<T> f(int i10) {
        return new ArrayDeque(i10);
    }

    public static int g(int i10, int i11, Bitmap.Config config) {
        return i10 * i11 * i(config);
    }

    @TargetApi(19)
    public static int h(Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            if (Build.VERSION.SDK_INT >= 19) {
                try {
                    return bitmap.getAllocationByteCount();
                } catch (NullPointerException unused) {
                }
            }
            return bitmap.getHeight() * bitmap.getRowBytes();
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    public static int i(Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i10 = a.f10534a[config.ordinal()];
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 2 || i10 == 3) {
            return 2;
        }
        return i10 != 4 ? 4 : 8;
    }

    public static <T> List<T> j(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t10 : collection) {
            if (t10 != null) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    public static int k(float f10) {
        return l(f10, 17);
    }

    public static int l(float f10, int i10) {
        return m(Float.floatToIntBits(f10), i10);
    }

    public static int m(int i10, int i11) {
        return (i11 * 31) + i10;
    }

    public static int n(Object obj, int i10) {
        return m(obj == null ? 0 : obj.hashCode(), i10);
    }

    public static int o(boolean z10, int i10) {
        return m(z10 ? 1 : 0, i10);
    }

    public static boolean p() {
        return !q();
    }

    public static boolean q() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean r(int i10) {
        return i10 > 0 || i10 == Integer.MIN_VALUE;
    }

    public static boolean s(int i10, int i11) {
        return r(i10) && r(i11);
    }

    public static String t(byte[] bArr) {
        String e10;
        char[] cArr = f10533b;
        synchronized (cArr) {
            e10 = e(bArr, cArr);
        }
        return e10;
    }
}
