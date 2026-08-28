package retrofit2;

import javax.annotation.Nullable;
import rd.q;
import rd.v;

/* loaded from: classes.dex */
public class HttpException extends RuntimeException {

    /* renamed from: f, reason: collision with root package name */
    public final int f13554f;

    /* renamed from: g, reason: collision with root package name */
    public final String f13555g;

    /* renamed from: h, reason: collision with root package name */
    public final transient q<?> f13556h;

    public HttpException(q<?> qVar) {
        super(b(qVar));
        this.f13554f = qVar.b();
        this.f13555g = qVar.g();
        this.f13556h = qVar;
    }

    public static String b(q<?> qVar) {
        v.b(qVar, "response == null");
        return "HTTP " + qVar.b() + " " + qVar.g();
    }

    public int a() {
        return this.f13554f;
    }

    @Nullable
    public q<?> c() {
        return this.f13556h;
    }
}
