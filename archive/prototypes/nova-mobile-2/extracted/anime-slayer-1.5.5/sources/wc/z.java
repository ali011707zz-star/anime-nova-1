package wc;

import java.util.ArrayDeque;
import java.util.Iterator;
import rc.j0;
import rc.u0;
import vb.j;

/* compiled from: StackTraceRecovery.kt */
/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public static final String f15545a;

    /* renamed from: b, reason: collision with root package name */
    public static final String f15546b;

    static {
        Object a10;
        Object a11;
        try {
            j.a aVar = vb.j.f15020f;
            a10 = vb.j.a(Class.forName("cc.a").getCanonicalName());
        } catch (Throwable th) {
            j.a aVar2 = vb.j.f15020f;
            a10 = vb.j.a(vb.k.a(th));
        }
        if (vb.j.b(a10) != null) {
            a10 = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f15545a = (String) a10;
        try {
            j.a aVar3 = vb.j.f15020f;
            a11 = vb.j.a(z.class.getCanonicalName());
        } catch (Throwable th2) {
            j.a aVar4 = vb.j.f15020f;
            a11 = vb.j.a(vb.k.a(th2));
        }
        if (vb.j.b(a11) != null) {
            a11 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        f15546b = (String) a11;
    }

    public static final StackTraceElement b(String str) {
        return new StackTraceElement(jc.l.m("\b\b\b(", str), "\b", "\b", -1);
    }

    public static final <E extends Throwable> vb.i<E, StackTraceElement[]> c(E e10) {
        boolean z10;
        Throwable cause = e10.getCause();
        if (cause != null && jc.l.a(cause.getClass(), e10.getClass())) {
            StackTraceElement[] stackTrace = e10.getStackTrace();
            int length = stackTrace.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    z10 = false;
                    break;
                }
                if (h(stackTrace[i10])) {
                    z10 = true;
                    break;
                }
                i10++;
            }
            if (z10) {
                return vb.n.a(cause, stackTrace);
            }
            return vb.n.a(e10, new StackTraceElement[0]);
        }
        return vb.n.a(e10, new StackTraceElement[0]);
    }

    public static final <E extends Throwable> E d(E e10, E e11, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(b("Coroutine boundary"));
        StackTraceElement[] stackTrace = e10.getStackTrace();
        int g10 = g(stackTrace, f15545a);
        int i10 = 0;
        if (g10 == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            if (array != null) {
                e11.setStackTrace((StackTraceElement[]) array);
                return e11;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + g10];
        if (g10 > 0) {
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                stackTraceElementArr[i11] = stackTrace[i11];
                if (i12 >= g10) {
                    break;
                }
                i11 = i12;
            }
        }
        Iterator<StackTraceElement> it2 = arrayDeque.iterator();
        while (it2.hasNext()) {
            int i13 = i10 + 1;
            stackTraceElementArr[i10 + g10] = it2.next();
            i10 = i13;
        }
        e11.setStackTrace(stackTraceElementArr);
        return e11;
    }

    public static final ArrayDeque<StackTraceElement> e(cc.e eVar) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = eVar.getStackTraceElement();
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
        }
        while (true) {
            eVar = eVar.getCallerFrame();
            if (eVar == null) {
                return arrayDeque;
            }
            StackTraceElement stackTraceElement2 = eVar.getStackTraceElement();
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
            }
        }
    }

    public static final boolean f(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && jc.l.a(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && jc.l.a(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && jc.l.a(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    public static final int g(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (jc.l.a(str, stackTraceElementArr[i10].getClassName())) {
                return i10;
            }
        }
        return -1;
    }

    public static final boolean h(StackTraceElement stackTraceElement) {
        return qc.t.z(stackTraceElement.getClassName(), "\b\b\b", false, 2, null);
    }

    public static final void i(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            } else if (h(stackTraceElementArr[i10])) {
                break;
            } else {
                i10++;
            }
        }
        int i11 = i10 + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (i11 > length2) {
            return;
        }
        while (true) {
            int i12 = length2 - 1;
            if (f(stackTraceElementArr[length2], arrayDeque.getLast())) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i11) {
                return;
            } else {
                length2 = i12;
            }
        }
    }

    public static final <E extends Throwable> E j(E e10, cc.e eVar) {
        vb.i c10 = c(e10);
        Throwable th = (Throwable) c10.a();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) c10.b();
        Throwable m10 = m(th);
        if (m10 == null) {
            return e10;
        }
        ArrayDeque<StackTraceElement> e11 = e(eVar);
        if (e11.isEmpty()) {
            return e10;
        }
        if (th != e10) {
            i(stackTraceElementArr, e11);
        }
        return (E) d(th, m10, e11);
    }

    public static final <E extends Throwable> E k(E e10) {
        Throwable m10;
        return (u0.d() && (m10 = m(e10)) != null) ? (E) l(m10) : e10;
    }

    public static final <E extends Throwable> E l(E e10) {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = e10.getStackTrace();
        int length = stackTrace.length;
        int g10 = g(stackTrace, f15546b);
        int i10 = g10 + 1;
        int g11 = g(stackTrace, f15545a);
        int i11 = (length - g10) - (g11 == -1 ? 0 : length - g11);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 == 0) {
                stackTraceElement = b("Coroutine boundary");
            } else {
                stackTraceElement = stackTrace[(i10 + i12) - 1];
            }
            stackTraceElementArr[i12] = stackTraceElement;
        }
        e10.setStackTrace(stackTraceElementArr);
        return e10;
    }

    public static final <E extends Throwable> E m(E e10) {
        E e11 = (E) i.e(e10);
        if (e11 == null) {
            return null;
        }
        if ((e10 instanceof j0) || jc.l.a(e11.getMessage(), e10.getMessage())) {
            return e11;
        }
        return null;
    }

    public static final <E extends Throwable> E n(E e10) {
        E e11 = (E) e10.getCause();
        if (e11 != null && jc.l.a(e11.getClass(), e10.getClass())) {
            StackTraceElement[] stackTrace = e10.getStackTrace();
            int length = stackTrace.length;
            boolean z10 = false;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                if (h(stackTrace[i10])) {
                    z10 = true;
                    break;
                }
                i10++;
            }
            if (z10) {
                return e11;
            }
        }
        return e10;
    }
}
