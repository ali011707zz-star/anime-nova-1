package rd;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import javax.annotation.Nullable;
import okhttp3.ResponseBody;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import rd.f;

/* compiled from: OptionalConverterFactory.java */
@IgnoreJRERequirement
/* loaded from: classes.dex */
public final class l extends f.a {

    /* renamed from: a, reason: collision with root package name */
    public static final f.a f13425a = new l();

    /* compiled from: OptionalConverterFactory.java */
    @IgnoreJRERequirement
    /* loaded from: classes2.dex */
    public static final class a<T> implements f<ResponseBody, Optional<T>> {

        /* renamed from: a, reason: collision with root package name */
        public final f<ResponseBody, T> f13426a;

        public a(f<ResponseBody, T> fVar) {
            this.f13426a = fVar;
        }

        @Override // rd.f
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Optional<T> convert(ResponseBody responseBody) throws IOException {
            return Optional.ofNullable(this.f13426a.convert(responseBody));
        }
    }

    @Override // rd.f.a
    @Nullable
    public f<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, r rVar) {
        if (f.a.getRawType(type) != Optional.class) {
            return null;
        }
        return new a(rVar.i(f.a.getParameterUpperBound(0, (ParameterizedType) type), annotationArr));
    }
}
