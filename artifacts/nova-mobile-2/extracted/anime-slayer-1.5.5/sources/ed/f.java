package ed;

import android.os.Looper;
import java.util.logging.Level;

/* compiled from: Logger.java */
/* loaded from: classes.dex */
public interface f {

    /* compiled from: Logger.java */
    /* loaded from: classes.dex */
    public static class a {
        public static f a() {
            if (fd.a.c() && b() != null) {
                return new fd.a("EventBus");
            }
            return new b();
        }

        public static Object b() {
            try {
                return Looper.getMainLooper();
            } catch (RuntimeException unused) {
                return null;
            }
        }
    }

    /* compiled from: Logger.java */
    /* loaded from: classes.dex */
    public static class b implements f {
        @Override // ed.f
        public void a(Level level, String str) {
            System.out.println("[" + level + "] " + str);
        }

        @Override // ed.f
        public void b(Level level, String str, Throwable th) {
            System.out.println("[" + level + "] " + str);
            th.printStackTrace(System.out);
        }
    }

    void a(Level level, String str);

    void b(Level level, String str, Throwable th);
}
