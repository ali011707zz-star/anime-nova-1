package org.apache.http.util;

import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class ExceptionUtils {
    private static final Method INIT_CAUSE_METHOD = getInitCauseMethod();
    public static /* synthetic */ Class class$java$lang$Throwable;

    private ExceptionUtils() {
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    private static Method getInitCauseMethod() {
        try {
            Class<?>[] clsArr = new Class[1];
            Class<?> cls = class$java$lang$Throwable;
            if (cls == null) {
                cls = class$("java.lang.Throwable");
                class$java$lang$Throwable = cls;
            }
            clsArr[0] = cls;
            Class cls2 = class$java$lang$Throwable;
            if (cls2 == null) {
                cls2 = class$("java.lang.Throwable");
                class$java$lang$Throwable = cls2;
            }
            return cls2.getMethod("initCause", clsArr);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static void initCause(Throwable th, Throwable th2) {
        Method method = INIT_CAUSE_METHOD;
        if (method != null) {
            try {
                method.invoke(th, th2);
            } catch (Exception unused) {
            }
        }
    }
}
