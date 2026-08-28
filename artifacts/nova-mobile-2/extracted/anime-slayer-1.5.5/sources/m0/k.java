package m0;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.Method;

/* compiled from: TraceCompat.java */
@Deprecated
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public static long f10659a;

    /* renamed from: b, reason: collision with root package name */
    public static Method f10660b;

    /* renamed from: c, reason: collision with root package name */
    public static Method f10661c;

    /* renamed from: d, reason: collision with root package name */
    public static Method f10662d;

    /* renamed from: e, reason: collision with root package name */
    public static Method f10663e;

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 18 || i10 >= 29) {
            return;
        }
        try {
            f10659a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
            Class cls = Long.TYPE;
            f10660b = Trace.class.getMethod("isTagEnabled", cls);
            Class cls2 = Integer.TYPE;
            f10661c = Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
            f10662d = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
            f10663e = Trace.class.getMethod("traceCounter", cls, String.class, cls2);
        } catch (Exception unused) {
        }
    }

    public static void a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void b() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
}
