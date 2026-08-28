package u7;

import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* compiled from: RuntimeCompat.java */
/* loaded from: classes.dex */
public final class b {

    /* compiled from: RuntimeCompat.java */
    /* loaded from: classes.dex */
    public class a implements FilenameFilter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Pattern f14492a;

        public a(Pattern pattern) {
            this.f14492a = pattern;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.f14492a.matcher(str).matches();
        }
    }

    public static int a() {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        return Build.VERSION.SDK_INT < 17 ? Math.max(b(), availableProcessors) : availableProcessors;
    }

    public static int b() {
        File[] fileArr;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                fileArr = new File("/sys/devices/system/cpu/").listFiles(new a(Pattern.compile("cpu[0-9]+")));
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (Throwable unused) {
            Log.isLoggable("GlideRuntimeCompat", 6);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            fileArr = null;
        }
        return Math.max(1, fileArr != null ? fileArr.length : 0);
    }
}
