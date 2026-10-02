package rd;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import javax.annotation.Nullable;

/* compiled from: ServiceMethod.java */
/* loaded from: classes.dex */
public abstract class s<T> {
    public static <T> s<T> b(r rVar, Method method) {
        p b10 = p.b(rVar, method);
        Type genericReturnType = method.getGenericReturnType();
        if (!v.k(genericReturnType)) {
            if (genericReturnType != Void.TYPE) {
                return h.f(rVar, method, b10);
            }
            throw v.n(method, "Service methods cannot return void.", new Object[0]);
        }
        throw v.n(method, "Method return type must not include a type variable or wildcard: %s", genericReturnType);
    }

    @Nullable
    public abstract T a(Object[] objArr);
}
