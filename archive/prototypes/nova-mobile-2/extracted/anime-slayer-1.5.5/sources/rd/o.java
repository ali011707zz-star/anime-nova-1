package rd;

import java.io.IOException;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;

/* compiled from: RequestBuilder.java */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: l, reason: collision with root package name */
    public static final char[] f13474l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: m, reason: collision with root package name */
    public static final Pattern f13475m = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* renamed from: a, reason: collision with root package name */
    public final String f13476a;

    /* renamed from: b, reason: collision with root package name */
    public final HttpUrl f13477b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public String f13478c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public HttpUrl.Builder f13479d;

    /* renamed from: e, reason: collision with root package name */
    public final Request.Builder f13480e = new Request.Builder();

    /* renamed from: f, reason: collision with root package name */
    public final Headers.Builder f13481f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public MediaType f13482g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f13483h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    public MultipartBody.Builder f13484i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public FormBody.Builder f13485j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public RequestBody f13486k;

    /* compiled from: RequestBuilder.java */
    /* loaded from: classes2.dex */
    public static class a extends RequestBody {

        /* renamed from: a, reason: collision with root package name */
        public final RequestBody f13487a;

        /* renamed from: b, reason: collision with root package name */
        public final MediaType f13488b;

        public a(RequestBody requestBody, MediaType mediaType) {
            this.f13487a = requestBody;
            this.f13488b = mediaType;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() throws IOException {
            return this.f13487a.contentLength();
        }

        @Override // okhttp3.RequestBody
        public MediaType contentType() {
            return this.f13488b;
        }

        @Override // okhttp3.RequestBody
        public void writeTo(cd.g gVar) throws IOException {
            this.f13487a.writeTo(gVar);
        }
    }

    public o(String str, HttpUrl httpUrl, @Nullable String str2, @Nullable Headers headers, @Nullable MediaType mediaType, boolean z10, boolean z11, boolean z12) {
        this.f13476a = str;
        this.f13477b = httpUrl;
        this.f13478c = str2;
        this.f13482g = mediaType;
        this.f13483h = z10;
        if (headers != null) {
            this.f13481f = headers.newBuilder();
        } else {
            this.f13481f = new Headers.Builder();
        }
        if (z11) {
            this.f13485j = new FormBody.Builder();
        } else if (z12) {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            this.f13484i = builder;
            builder.setType(MultipartBody.FORM);
        }
    }

    public static String i(String str, boolean z10) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            int codePointAt = str.codePointAt(i10);
            if (codePointAt >= 32 && codePointAt < 127 && " \"<>^`{}|\\?#".indexOf(codePointAt) == -1 && (z10 || (codePointAt != 47 && codePointAt != 37))) {
                i10 += Character.charCount(codePointAt);
            } else {
                cd.f fVar = new cd.f();
                fVar.m(str, 0, i10);
                j(fVar, str, i10, length, z10);
                return fVar.J0();
            }
        }
        return str;
    }

    public static void j(cd.f fVar, String str, int i10, int i11, boolean z10) {
        cd.f fVar2 = null;
        while (i10 < i11) {
            int codePointAt = str.codePointAt(i10);
            if (!z10 || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt >= 32 && codePointAt < 127 && " \"<>^`{}|\\?#".indexOf(codePointAt) == -1 && (z10 || (codePointAt != 47 && codePointAt != 37))) {
                    fVar.e1(codePointAt);
                } else {
                    if (fVar2 == null) {
                        fVar2 = new cd.f();
                    }
                    fVar2.e1(codePointAt);
                    while (!fVar2.M()) {
                        int readByte = fVar2.readByte() & 255;
                        fVar.O(37);
                        char[] cArr = f13474l;
                        fVar.O(cArr[(readByte >> 4) & 15]);
                        fVar.O(cArr[readByte & 15]);
                    }
                }
            }
            i10 += Character.charCount(codePointAt);
        }
    }

    public void a(String str, String str2, boolean z10) {
        if (z10) {
            this.f13485j.addEncoded(str, str2);
        } else {
            this.f13485j.add(str, str2);
        }
    }

    public void b(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                this.f13482g = MediaType.get(str2);
                return;
            } catch (IllegalArgumentException e10) {
                throw new IllegalArgumentException("Malformed content type: " + str2, e10);
            }
        }
        this.f13481f.add(str, str2);
    }

    public void c(Headers headers) {
        this.f13481f.addAll(headers);
    }

    public void d(Headers headers, RequestBody requestBody) {
        this.f13484i.addPart(headers, requestBody);
    }

    public void e(MultipartBody.Part part) {
        this.f13484i.addPart(part);
    }

    public void f(String str, String str2, boolean z10) {
        if (this.f13478c != null) {
            String i10 = i(str2, z10);
            String replace = this.f13478c.replace("{" + str + "}", i10);
            if (!f13475m.matcher(replace).matches()) {
                this.f13478c = replace;
                return;
            }
            throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): " + str2);
        }
        throw new AssertionError();
    }

    public void g(String str, @Nullable String str2, boolean z10) {
        String str3 = this.f13478c;
        if (str3 != null) {
            HttpUrl.Builder newBuilder = this.f13477b.newBuilder(str3);
            this.f13479d = newBuilder;
            if (newBuilder != null) {
                this.f13478c = null;
            } else {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f13477b + ", Relative: " + this.f13478c);
            }
        }
        if (z10) {
            this.f13479d.addEncodedQueryParameter(str, str2);
        } else {
            this.f13479d.addQueryParameter(str, str2);
        }
    }

    public <T> void h(Class<T> cls, @Nullable T t10) {
        this.f13480e.tag(cls, t10);
    }

    public Request.Builder k() {
        HttpUrl resolve;
        HttpUrl.Builder builder = this.f13479d;
        if (builder != null) {
            resolve = builder.build();
        } else {
            resolve = this.f13477b.resolve(this.f13478c);
            if (resolve == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f13477b + ", Relative: " + this.f13478c);
            }
        }
        RequestBody requestBody = this.f13486k;
        if (requestBody == null) {
            FormBody.Builder builder2 = this.f13485j;
            if (builder2 != null) {
                requestBody = builder2.build();
            } else {
                MultipartBody.Builder builder3 = this.f13484i;
                if (builder3 != null) {
                    requestBody = builder3.build();
                } else if (this.f13483h) {
                    requestBody = RequestBody.create((MediaType) null, new byte[0]);
                }
            }
        }
        MediaType mediaType = this.f13482g;
        if (mediaType != null) {
            if (requestBody != null) {
                requestBody = new a(requestBody, mediaType);
            } else {
                this.f13481f.add("Content-Type", mediaType.toString());
            }
        }
        return this.f13480e.url(resolve).headers(this.f13481f.build()).method(this.f13476a, requestBody);
    }

    public void l(RequestBody requestBody) {
        this.f13486k = requestBody;
    }

    public void m(Object obj) {
        this.f13478c = obj.toString();
    }
}
