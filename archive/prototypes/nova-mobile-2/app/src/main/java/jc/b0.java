package jc;

/* compiled from: TypeIntrinsics.java */
/* loaded from: classes2.dex */
public class b0 {
    public static Object a(Object obj, int i10) {
        if (obj != null && !c(obj, i10)) {
            f(obj, "kotlin.jvm.functions.Function" + i10);
        }
        return obj;
    }

    public static int b(Object obj) {
        if (obj instanceof h) {
            return ((h) obj).getArity();
        }
        if (obj instanceof ic.a) {
            return 0;
        }
        if (obj instanceof ic.l) {
            return 1;
        }
        if (obj instanceof ic.p) {
            return 2;
        }
        if (obj instanceof ic.q) {
            return 3;
        }
        if (obj instanceof ic.r) {
            return 4;
        }
        if (obj instanceof ic.s) {
            return 5;
        }
        if (obj instanceof ic.t) {
            return 6;
        }
        if (obj instanceof ic.u) {
            return 7;
        }
        if (obj instanceof ic.v) {
            return 8;
        }
        if (obj instanceof ic.w) {
            return 9;
        }
        if (obj instanceof ic.b) {
            return 10;
        }
        if (obj instanceof ic.c) {
            return 11;
        }
        if (obj instanceof ic.d) {
            return 12;
        }
        if (obj instanceof ic.e) {
            return 13;
        }
        if (obj instanceof ic.f) {
            return 14;
        }
        if (obj instanceof ic.g) {
            return 15;
        }
        if (obj instanceof ic.h) {
            return 16;
        }
        if (obj instanceof ic.i) {
            return 17;
        }
        if (obj instanceof ic.j) {
            return 18;
        }
        if (obj instanceof ic.k) {
            return 19;
        }
        if (obj instanceof ic.m) {
            return 20;
        }
        if (obj instanceof ic.n) {
            return 21;
        }
        return obj instanceof ic.o ? 22 : -1;
    }

    public static boolean c(Object obj, int i10) {
        return (obj instanceof vb.b) && b(obj) == i10;
    }

    public static <T extends Throwable> T d(T t10) {
        return (T) l.l(t10, b0.class.getName());
    }

    public static ClassCastException e(ClassCastException classCastException) {
        throw ((ClassCastException) d(classCastException));
    }

    public static void f(Object obj, String str) {
        g((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
    }

    public static void g(String str) {
        throw e(new ClassCastException(str));
    }
}
