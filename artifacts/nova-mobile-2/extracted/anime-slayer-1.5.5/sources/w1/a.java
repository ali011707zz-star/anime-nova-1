package w1;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Trace;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: Trace.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static long f15232a;

    /* renamed from: b, reason: collision with root package name */
    public static Method f15233b;

    public static void a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            b.a(str);
        }
    }

    public static void b() {
        if (Build.VERSION.SDK_INT >= 18) {
            b.b();
        }
    }

    public static void c(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unable to call ");
        sb2.append(str);
        sb2.append(" via reflection");
    }

    @SuppressLint({"NewApi"})
    public static boolean d() {
        try {
            if (f15233b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        return e();
    }

    public static boolean e() {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (f15233b == null) {
                    f15232a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                    f15233b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
                }
                return ((Boolean) f15233b.invoke(null, Long.valueOf(f15232a))).booleanValue();
            } catch (Exception e10) {
                c("isTagEnabled", e10);
            }
        }
        return false;
    }
}
