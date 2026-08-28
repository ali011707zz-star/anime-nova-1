package rd;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.Call;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.apache.http.client.methods.HttpHead;
import rd.v;

/* compiled from: HttpServiceMethod.java */
/* loaded from: classes.dex */
public abstract class h<ResponseT, ReturnT> extends s<ReturnT> {

    /* renamed from: a, reason: collision with root package name */
    public final p f13389a;

    /* renamed from: b, reason: collision with root package name */
    public final Call.Factory f13390b;

    /* renamed from: c, reason: collision with root package name */
    public final f<ResponseBody, ResponseT> f13391c;

    /* compiled from: HttpServiceMethod.java */
    /* loaded from: classes2.dex */
    public static final class a<ResponseT, ReturnT> extends h<ResponseT, ReturnT> {

        /* renamed from: d, reason: collision with root package name */
        public final rd.c<ResponseT, ReturnT> f13392d;

        public a(p pVar, Call.Factory factory, f<ResponseBody, ResponseT> fVar, rd.c<ResponseT, ReturnT> cVar) {
            super(pVar, factory, fVar);
            this.f13392d = cVar;
        }

        @Override // rd.h
        public ReturnT c(rd.b<ResponseT> bVar, Object[] objArr) {
            return this.f13392d.a(bVar);
        }
    }

    /* compiled from: HttpServiceMethod.java */
    /* loaded from: classes2.dex */
    public static final class b<ResponseT> extends h<ResponseT, Object> {

        /* renamed from: d, reason: collision with root package name */
        public final rd.c<ResponseT, rd.b<ResponseT>> f13393d;

        /* renamed from: e, reason: collision with root package name */
        public final boolean f13394e;

        public b(p pVar, Call.Factory factory, f<ResponseBody, ResponseT> fVar, rd.c<ResponseT, rd.b<ResponseT>> cVar, boolean z10) {
            super(pVar, factory, fVar);
            this.f13393d = cVar;
            this.f13394e = z10;
        }

        @Override // rd.h
        public Object c(rd.b<ResponseT> bVar, Object[] objArr) {
            rd.b<ResponseT> a10 = this.f13393d.a(bVar);
            ac.d dVar = (ac.d) objArr[objArr.length - 1];
            try {
                if (this.f13394e) {
                    return j.b(a10, dVar);
                }
                return j.a(a10, dVar);
            } catch (Exception e10) {
                return j.d(e10, dVar);
            }
        }
    }

    /* compiled from: HttpServiceMethod.java */
    /* loaded from: classes2.dex */
    public static final class c<ResponseT> extends h<ResponseT, Object> {

        /* renamed from: d, reason: collision with root package name */
        public final rd.c<ResponseT, rd.b<ResponseT>> f13395d;

        public c(p pVar, Call.Factory factory, f<ResponseBody, ResponseT> fVar, rd.c<ResponseT, rd.b<ResponseT>> cVar) {
            super(pVar, factory, fVar);
            this.f13395d = cVar;
        }

        @Override // rd.h
        public Object c(rd.b<ResponseT> bVar, Object[] objArr) {
            rd.b<ResponseT> a10 = this.f13395d.a(bVar);
            ac.d dVar = (ac.d) objArr[objArr.length - 1];
            try {
                return j.c(a10, dVar);
            } catch (Exception e10) {
                return j.d(e10, dVar);
            }
        }
    }

    public h(p pVar, Call.Factory factory, f<ResponseBody, ResponseT> fVar) {
        this.f13389a = pVar;
        this.f13390b = factory;
        this.f13391c = fVar;
    }

    public static <ResponseT, ReturnT> rd.c<ResponseT, ReturnT> d(r rVar, Method method, Type type, Annotation[] annotationArr) {
        try {
            return (rd.c<ResponseT, ReturnT>) rVar.a(type, annotationArr);
        } catch (RuntimeException e10) {
            throw v.o(method, e10, "Unable to create call adapter for %s", type);
        }
    }

    public static <ResponseT> f<ResponseBody, ResponseT> e(r rVar, Method method, Type type) {
        try {
            return rVar.i(type, method.getAnnotations());
        } catch (RuntimeException e10) {
            throw v.o(method, e10, "Unable to create converter for %s", type);
        }
    }

    public static <ResponseT, ReturnT> h<ResponseT, ReturnT> f(r rVar, Method method, p pVar) {
        Type genericReturnType;
        boolean z10;
        boolean z11 = pVar.f13499k;
        Annotation[] annotations = method.getAnnotations();
        if (z11) {
            Type[] genericParameterTypes = method.getGenericParameterTypes();
            Type g10 = v.g(0, (ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]);
            if (v.i(g10) == q.class && (g10 instanceof ParameterizedType)) {
                g10 = v.h(0, (ParameterizedType) g10);
                z10 = true;
            } else {
                z10 = false;
            }
            genericReturnType = new v.b(null, rd.b.class, g10);
            annotations = u.a(annotations);
        } else {
            genericReturnType = method.getGenericReturnType();
            z10 = false;
        }
        rd.c d10 = d(rVar, method, genericReturnType, annotations);
        Type b10 = d10.b();
        if (b10 != Response.class) {
            if (b10 != q.class) {
                if (pVar.f13491c.equals(HttpHead.METHOD_NAME) && !Void.class.equals(b10)) {
                    throw v.n(method, "HEAD method must use Void as response type.", new Object[0]);
                }
                f e10 = e(rVar, method, b10);
                Call.Factory factory = rVar.f13529b;
                if (!z11) {
                    return new a(pVar, factory, e10, d10);
                }
                if (z10) {
                    return new c(pVar, factory, e10, d10);
                }
                return new b(pVar, factory, e10, d10, false);
            }
            throw v.n(method, "Response must include generic type (e.g., Response<String>)", new Object[0]);
        }
        throw v.n(method, "'" + v.i(b10).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
    }

    @Override // rd.s
    @Nullable
    public final ReturnT a(Object[] objArr) {
        return c(new k(this.f13389a, objArr, this.f13390b, this.f13391c), objArr);
    }

    @Nullable
    public abstract ReturnT c(rd.b<ResponseT> bVar, Object[] objArr);
}
