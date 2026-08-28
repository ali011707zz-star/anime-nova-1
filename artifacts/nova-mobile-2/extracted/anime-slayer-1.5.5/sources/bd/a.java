package bd;

import android.app.Application;
import android.os.Build;
import android.util.Log;
import bd.e;
import jc.g;
import jc.l;
import qc.u;

/* compiled from: AndroidLogcatLogger.kt */
/* loaded from: classes.dex */
public final class a implements e {

    /* renamed from: c, reason: collision with root package name */
    public static final C0071a f3606c = new C0071a(null);

    /* renamed from: b, reason: collision with root package name */
    public final int f3607b;

    /* compiled from: AndroidLogcatLogger.kt */
    /* renamed from: bd.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0071a {
        public C0071a() {
        }

        public /* synthetic */ C0071a(g gVar) {
            this();
        }

        public final void a(Application application, c cVar) {
            boolean b10;
            l.f(application, "application");
            l.f(cVar, "minPriority");
            e.a aVar = e.f3616a;
            if (aVar.c()) {
                return;
            }
            b10 = b.b(application);
            if (b10) {
                aVar.b(new a(cVar));
            }
        }
    }

    public a(c cVar) {
        l.f(cVar, "minPriority");
        this.f3607b = cVar.b();
    }

    @Override // bd.e
    public void a(c cVar, String str, String str2) {
        int min;
        l.f(cVar, "priority");
        l.f(str, "tag");
        l.f(str2, "message");
        int i10 = 0;
        if (str.length() > 23 && Build.VERSION.SDK_INT < 26) {
            str = str.substring(0, 23);
            l.e(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        if (str2.length() < 4000) {
            c(cVar.b(), str, str2);
            return;
        }
        int length = str2.length();
        while (i10 < length) {
            int M = u.M(str2, '\n', i10, false, 4, null);
            if (M == -1) {
                M = length;
            }
            while (true) {
                min = Math.min(M, i10 + 4000);
                String substring = str2.substring(i10, min);
                l.e(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                c(cVar.b(), str, substring);
                if (min >= M) {
                    break;
                } else {
                    i10 = min;
                }
            }
            i10 = min + 1;
        }
    }

    @Override // bd.e
    public boolean b(c cVar) {
        l.f(cVar, "priority");
        return cVar.b() >= this.f3607b;
    }

    public final void c(int i10, String str, String str2) {
        if (i10 == 7) {
            Log.wtf(str, str2);
        }
    }
}
