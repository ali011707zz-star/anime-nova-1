package y7;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import java.io.File;

/* compiled from: HardwareConfigState.java */
/* loaded from: classes.dex */
public final class r {

    /* renamed from: f, reason: collision with root package name */
    public static final File f16694f = new File("/proc/self/fd");

    /* renamed from: g, reason: collision with root package name */
    public static volatile r f16695g;

    /* renamed from: b, reason: collision with root package name */
    public final int f16697b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16698c;

    /* renamed from: d, reason: collision with root package name */
    public int f16699d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f16700e = true;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f16696a = d();

    public r() {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f16697b = 20000;
            this.f16698c = 0;
        } else {
            this.f16697b = 700;
            this.f16698c = 128;
        }
    }

    public static r a() {
        if (f16695g == null) {
            synchronized (r.class) {
                if (f16695g == null) {
                    f16695g = new r();
                }
            }
        }
        return f16695g;
    }

    public static boolean d() {
        String str = Build.MODEL;
        if (str == null || str.length() < 7) {
            return true;
        }
        String substring = str.substring(0, 7);
        substring.hashCode();
        char c10 = 65535;
        switch (substring.hashCode()) {
            case -1398613787:
                if (substring.equals("SM-A520")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1398431166:
                if (substring.equals("SM-G930")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1398431161:
                if (substring.equals("SM-G935")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1398431073:
                if (substring.equals("SM-G960")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1398431068:
                if (substring.equals("SM-G965")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1398343746:
                if (substring.equals("SM-J720")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1398222624:
                if (substring.equals("SM-N935")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return Build.VERSION.SDK_INT != 26;
            default:
                return true;
        }
    }

    public final synchronized boolean b() {
        boolean z10 = true;
        int i10 = this.f16699d + 1;
        this.f16699d = i10;
        if (i10 >= 50) {
            this.f16699d = 0;
            int length = f16694f.list().length;
            if (length >= this.f16697b) {
                z10 = false;
            }
            this.f16700e = z10;
            if (!z10 && Log.isLoggable("Downsampler", 5)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors ");
                sb2.append(length);
                sb2.append(", limit ");
                sb2.append(this.f16697b);
            }
        }
        return this.f16700e;
    }

    public boolean c(int i10, int i11, boolean z10, boolean z11) {
        int i12;
        return z10 && this.f16696a && Build.VERSION.SDK_INT >= 26 && !z11 && i10 >= (i12 = this.f16698c) && i11 >= i12 && b();
    }

    @TargetApi(26)
    public boolean e(int i10, int i11, BitmapFactory.Options options, boolean z10, boolean z11) {
        boolean c10 = c(i10, i11, z10, z11);
        if (c10) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return c10;
    }
}
