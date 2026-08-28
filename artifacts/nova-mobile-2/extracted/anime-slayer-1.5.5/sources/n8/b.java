package n8;

import android.content.Context;
import java.io.File;

/* compiled from: ReLinker.java */
/* loaded from: classes.dex */
public class b {

    /* compiled from: ReLinker.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(Context context, String[] strArr, String str, File file, n8.c cVar);
    }

    /* compiled from: ReLinker.java */
    /* renamed from: n8.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0276b {
        String a(String str);

        String b(String str);

        void c(String str);

        String[] d();

        void e(String str);
    }

    /* compiled from: ReLinker.java */
    /* loaded from: classes.dex */
    public interface c {
        void a(Throwable th);

        void b();
    }

    /* compiled from: ReLinker.java */
    /* loaded from: classes.dex */
    public interface d {
        void log(String str);
    }

    public static void a(Context context, String str) {
        b(context, str, null, null);
    }

    public static void b(Context context, String str, String str2, c cVar) {
        new n8.c().f(context, str, str2, cVar);
    }
}
