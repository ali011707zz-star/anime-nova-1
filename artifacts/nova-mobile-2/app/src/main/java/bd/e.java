package bd;

import jc.l;
import vb.p;

/* compiled from: LogcatLogger.kt */
/* loaded from: classes.dex */
public interface e {

    /* renamed from: a, reason: collision with root package name */
    public static final a f3616a = a.f3617a;

    /* compiled from: LogcatLogger.kt */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ a f3617a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static volatile e f3618b = b.f3620b;

        /* renamed from: c, reason: collision with root package name */
        public static volatile Throwable f3619c;

        public final e a() {
            return f3618b;
        }

        public final void b(e eVar) {
            l.f(eVar, "logger");
            synchronized (this) {
                if (f3617a.c()) {
                    c cVar = c.ERROR;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Installing ");
                    sb2.append(eVar);
                    sb2.append(" even though a logger was previously installed here: ");
                    Throwable th = f3619c;
                    l.c(th);
                    sb2.append(f.a(th));
                    eVar.a(cVar, "LogcatLogger", sb2.toString());
                }
                f3619c = new RuntimeException("Previous logger installed here");
                f3618b = eVar;
                p pVar = p.f15031a;
            }
        }

        public final boolean c() {
            return f3619c != null;
        }
    }

    /* compiled from: LogcatLogger.kt */
    /* loaded from: classes2.dex */
    public static final class b implements e {

        /* renamed from: b, reason: collision with root package name */
        public static final b f3620b = new b();

        @Override // bd.e
        public boolean b(c cVar) {
            l.f(cVar, "priority");
            return false;
        }

        @Override // bd.e
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Void a(c cVar, String str, String str2) {
            l.f(cVar, "priority");
            l.f(str, "tag");
            l.f(str2, "message");
            throw new IllegalStateException("Should never receive any log".toString());
        }
    }

    void a(c cVar, String str, String str2);

    boolean b(c cVar);
}
