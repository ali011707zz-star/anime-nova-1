package dc;

import java.lang.reflect.Method;
import jc.l;
import wb.i;

/* compiled from: PlatformImplementations.kt */
/* loaded from: classes2.dex */
public class a {

    /* compiled from: PlatformImplementations.kt */
    /* renamed from: dc.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0109a {

        /* renamed from: a, reason: collision with root package name */
        public static final C0109a f5797a = new C0109a();

        /* renamed from: b, reason: collision with root package name */
        public static final Method f5798b;

        /* renamed from: c, reason: collision with root package name */
        public static final Method f5799c;

        /* JADX WARN: Removed duplicated region for block: B:10:0x003f A[LOOP:0: B:2:0x0015->B:10:0x003f, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0043 A[EDGE_INSN: B:11:0x0043->B:12:0x0043 BREAK  A[LOOP:0: B:2:0x0015->B:10:0x003f], SYNTHETIC] */
        static {
            Method method;
            Method method2;
            boolean z10;
            Method[] methods = Throwable.class.getMethods();
            l.e(methods, "throwableMethods");
            int length = methods.length;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                method = null;
                if (i11 >= length) {
                    method2 = null;
                    break;
                }
                method2 = methods[i11];
                if (l.a(method2.getName(), "addSuppressed")) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    l.e(parameterTypes, "it.parameterTypes");
                    if (l.a(i.w(parameterTypes), Throwable.class)) {
                        z10 = true;
                        if (!z10) {
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
                z10 = false;
                if (!z10) {
                }
            }
            f5798b = method2;
            int length2 = methods.length;
            while (true) {
                if (i10 >= length2) {
                    break;
                }
                Method method3 = methods[i10];
                if (l.a(method3.getName(), "getSuppressed")) {
                    method = method3;
                    break;
                }
                i10++;
            }
            f5799c = method;
        }
    }

    public void a(Throwable th, Throwable th2) {
        l.f(th, "cause");
        l.f(th2, "exception");
        Method method = C0109a.f5798b;
        if (method != null) {
            method.invoke(th, th2);
        }
    }

    public lc.c b() {
        return new lc.b();
    }
}
