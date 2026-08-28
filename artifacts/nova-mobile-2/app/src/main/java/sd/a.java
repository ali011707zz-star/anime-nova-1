package sd;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import rd.f;
import rd.r;

/* compiled from: GsonConverterFactory.java */
/* loaded from: classes2.dex */
public final class a extends f.a {

    /* renamed from: a, reason: collision with root package name */
    public final ja.f f13893a;

    public a(ja.f fVar) {
        this.f13893a = fVar;
    }

    public static a a() {
        return b(new ja.f());
    }

    public static a b(ja.f fVar) {
        if (fVar != null) {
            return new a(fVar);
        }
        throw new NullPointerException("gson == null");
    }

    @Override // rd.f.a
    public f<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, r rVar) {
        return new b(this.f13893a, this.f13893a.n(oa.a.get(type)));
    }

    @Override // rd.f.a
    public f<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, r rVar) {
        return new c(this.f13893a, this.f13893a.n(oa.a.get(type)));
    }
}
