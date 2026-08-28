package rd;

import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* compiled from: Response.java */
/* loaded from: classes.dex */
public final class q<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Response f13525a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final T f13526b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final ResponseBody f13527c;

    public q(Response response, @Nullable T t10, @Nullable ResponseBody responseBody) {
        this.f13525a = response;
        this.f13526b = t10;
        this.f13527c = responseBody;
    }

    public static <T> q<T> c(ResponseBody responseBody, Response response) {
        v.b(responseBody, "body == null");
        v.b(response, "rawResponse == null");
        if (!response.isSuccessful()) {
            return new q<>(response, null, responseBody);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }

    public static <T> q<T> h(@Nullable T t10, Response response) {
        v.b(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new q<>(response, t10, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    @Nullable
    public T a() {
        return this.f13526b;
    }

    public int b() {
        return this.f13525a.code();
    }

    @Nullable
    public ResponseBody d() {
        return this.f13527c;
    }

    public Headers e() {
        return this.f13525a.headers();
    }

    public boolean f() {
        return this.f13525a.isSuccessful();
    }

    public String g() {
        return this.f13525a.message();
    }

    public String toString() {
        return this.f13525a.toString();
    }
}
