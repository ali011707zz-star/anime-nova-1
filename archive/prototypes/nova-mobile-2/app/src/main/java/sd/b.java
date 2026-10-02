package sd;

import com.google.gson.stream.JsonWriter;
import ja.s;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.apache.http.protocol.HTTP;
import rd.f;

/* compiled from: GsonRequestBodyConverter.java */
/* loaded from: classes2.dex */
public final class b<T> implements f<T, RequestBody> {

    /* renamed from: c, reason: collision with root package name */
    public static final MediaType f13894c = MediaType.get("application/json; charset=UTF-8");

    /* renamed from: d, reason: collision with root package name */
    public static final Charset f13895d = Charset.forName(HTTP.UTF_8);

    /* renamed from: a, reason: collision with root package name */
    public final ja.f f13896a;

    /* renamed from: b, reason: collision with root package name */
    public final s<T> f13897b;

    public b(ja.f fVar, s<T> sVar) {
        this.f13896a = fVar;
        this.f13897b = sVar;
    }

    @Override // rd.f
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public RequestBody convert(T t10) throws IOException {
        cd.f fVar = new cd.f();
        JsonWriter r10 = this.f13896a.r(new OutputStreamWriter(fVar.V(), f13895d));
        this.f13897b.write(r10, t10);
        r10.close();
        return RequestBody.create(f13894c, fVar.w0());
    }
}
