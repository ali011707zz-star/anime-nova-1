package rd;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;

/* compiled from: CallAdapter.java */
/* loaded from: classes2.dex */
public interface c<R, T> {

    /* compiled from: CallAdapter.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public static Type b(int i10, ParameterizedType parameterizedType) {
            return v.h(i10, parameterizedType);
        }

        public static Class<?> c(Type type) {
            return v.i(type);
        }

        @Nullable
        public abstract c<?, ?> a(Type type, Annotation[] annotationArr, r rVar);
    }

    T a(b<R> bVar);

    Type b();
}
