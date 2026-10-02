package q3;

import e3.i;
import java.util.HashSet;
import java.util.Set;

/* compiled from: LogcatLogger.java */
/* loaded from: classes.dex */
public class c implements i {

    /* renamed from: a, reason: collision with root package name */
    public static final Set<String> f12444a = new HashSet();

    @Override // e3.i
    public void a(String str, Throwable th) {
        Set<String> set = f12444a;
        if (set.contains(str)) {
            return;
        }
        set.add(str);
    }

    @Override // e3.i
    public void b(String str) {
        a(str, null);
    }

    @Override // e3.i
    public void c(String str, Throwable th) {
        boolean z10 = e3.c.f6007a;
    }

    @Override // e3.i
    public void d(String str) {
        e(str, null);
    }

    public void e(String str, Throwable th) {
        boolean z10 = e3.c.f6007a;
    }
}
