package org.apache.http.client.utils;

import java.lang.reflect.InvocationTargetException;
import org.apache.http.annotation.Immutable;

@Immutable
/* loaded from: classes2.dex */
public class CloneUtils {
    private CloneUtils() {
    }

    public static Object clone(Object obj) throws CloneNotSupportedException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Cloneable) {
            try {
                try {
                    return obj.getClass().getMethod("clone", null).invoke(obj, null);
                } catch (IllegalAccessException e10) {
                    throw new IllegalAccessError(e10.getMessage());
                } catch (InvocationTargetException e11) {
                    Throwable cause = e11.getCause();
                    if (cause instanceof CloneNotSupportedException) {
                        throw ((CloneNotSupportedException) cause);
                    }
                    throw new Error("Unexpected exception", cause);
                }
            } catch (NoSuchMethodException e12) {
                throw new NoSuchMethodError(e12.getMessage());
            }
        }
        throw new CloneNotSupportedException();
    }
}
