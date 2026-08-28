package fd;

import android.util.Log;
import ed.f;
import java.util.logging.Level;

/* compiled from: AndroidLogger.java */
/* loaded from: classes.dex */
public class a implements f {

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f6635b;

    /* renamed from: a, reason: collision with root package name */
    public final String f6636a;

    static {
        boolean z10;
        try {
            Class.forName("android.util.Log");
            z10 = true;
        } catch (ClassNotFoundException unused) {
            z10 = false;
        }
        f6635b = z10;
    }

    public a(String str) {
        this.f6636a = str;
    }

    public static boolean c() {
        return f6635b;
    }

    @Override // ed.f
    public void a(Level level, String str) {
        if (level != Level.OFF) {
            d(level);
        }
    }

    @Override // ed.f
    public void b(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            d(level);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append("\n");
            sb2.append(Log.getStackTraceString(th));
        }
    }

    public final int d(Level level) {
        int intValue = level.intValue();
        if (intValue < 800) {
            return intValue < 500 ? 2 : 3;
        }
        if (intValue < 900) {
            return 4;
        }
        return intValue < 1000 ? 5 : 6;
    }
}
