package rd;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

/* compiled from: Converter.java */
/* loaded from: classes.dex */
public interface f<F, T> {

    /* compiled from: Converter.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public static Type getParameterUpperBound(int i10, ParameterizedType parameterizedType) {
            return v.h(i10, parameterizedType);
        }

        public static Class<?> getRawType(Type type) {
            return v.i(type);
        }

        @Nullable
        public f<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, r rVar) {
            return null;
        }

        @Nullable
        public f<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, r rVar) {
            return null;
        }

        @Nullable
        public f<?, String> stringConverter(Type type, Annotation[] annotationArr, r rVar) {
            return null;
        }
    }

    @Nullable
    T convert(F f10) throws IOException;
}
