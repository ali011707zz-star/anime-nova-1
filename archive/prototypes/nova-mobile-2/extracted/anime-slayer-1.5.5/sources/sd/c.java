package sd;

import com.google.gson.JsonIOException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import ja.s;
import java.io.IOException;
import okhttp3.ResponseBody;
import rd.f;

/* compiled from: GsonResponseBodyConverter.java */
/* loaded from: classes2.dex */
public final class c<T> implements f<ResponseBody, T> {

    /* renamed from: a, reason: collision with root package name */
    public final ja.f f13898a;

    /* renamed from: b, reason: collision with root package name */
    public final s<T> f13899b;

    public c(ja.f fVar, s<T> sVar) {
        this.f13898a = fVar;
        this.f13899b = sVar;
    }

    @Override // rd.f
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public T convert(ResponseBody responseBody) throws IOException {
        JsonReader q10 = this.f13898a.q(responseBody.charStream());
        try {
            T read = this.f13899b.read(q10);
            if (q10.peek() == JsonToken.END_DOCUMENT) {
                return read;
            }
            throw new JsonIOException("JSON document was not fully consumed.");
        } finally {
            responseBody.close();
        }
    }
}
