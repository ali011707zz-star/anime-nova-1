package okhttp3.logging;

import androidx.recyclerview.widget.RecyclerView;
import cd.f;
import cd.h;
import cd.m;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import org.apache.http.protocol.HTTP;

/* loaded from: classes2.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    private static final Charset UTF8 = Charset.forName(HTTP.UTF_8);
    private volatile Set<String> headersToRedact;
    private volatile Level level;
    private final Logger logger;

    /* loaded from: classes2.dex */
    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    /* loaded from: classes2.dex */
    public interface Logger {
        public static final Logger DEFAULT = new Logger() { // from class: okhttp3.logging.HttpLoggingInterceptor.Logger.1
            @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
            public void log(String str) {
                Platform.get().log(4, str, null);
            }
        };

        void log(String str);
    }

    public HttpLoggingInterceptor() {
        this(Logger.DEFAULT);
    }

    private static boolean bodyHasUnknownEncoding(Headers headers) {
        String str = headers.get("Content-Encoding");
        return (str == null || str.equalsIgnoreCase(HTTP.IDENTITY_CODING) || str.equalsIgnoreCase("gzip")) ? false : true;
    }

    public static boolean isPlaintext(f fVar) {
        try {
            f fVar2 = new f();
            fVar.x(fVar2, 0L, fVar.N0() < 64 ? fVar.N0() : 64L);
            for (int i10 = 0; i10 < 16; i10++) {
                if (fVar2.M()) {
                    return true;
                }
                int L0 = fVar2.L0();
                if (Character.isISOControl(L0) && !Character.isWhitespace(L0)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    private void logHeader(Headers headers, int i10) {
        String value = this.headersToRedact.contains(headers.name(i10)) ? "██" : headers.value(i10);
        this.logger.log(headers.name(i10) + ": " + value);
    }

    public Level getLevel() {
        return this.level;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v20, types: [java.lang.Long] */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        long j10;
        char c10;
        String sb2;
        Level level = this.level;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain.proceed(request);
        }
        boolean z10 = level == Level.BODY;
        boolean z11 = z10 || level == Level.HEADERS;
        RequestBody body = request.body();
        boolean z12 = body != null;
        Connection connection = chain.connection();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("--> ");
        sb3.append(request.method());
        sb3.append(' ');
        sb3.append(request.url());
        sb3.append(connection != null ? " " + connection.protocol() : "");
        String sb4 = sb3.toString();
        if (!z11 && z12) {
            sb4 = sb4 + " (" + body.contentLength() + "-byte body)";
        }
        this.logger.log(sb4);
        if (z11) {
            if (z12) {
                if (body.contentType() != null) {
                    this.logger.log("Content-Type: " + body.contentType());
                }
                if (body.contentLength() != -1) {
                    this.logger.log("Content-Length: " + body.contentLength());
                }
            }
            Headers headers = request.headers();
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                String name = headers.name(i10);
                if (!"Content-Type".equalsIgnoreCase(name) && !"Content-Length".equalsIgnoreCase(name)) {
                    logHeader(headers, i10);
                }
            }
            if (z10 && z12) {
                if (bodyHasUnknownEncoding(request.headers())) {
                    this.logger.log("--> END " + request.method() + " (encoded body omitted)");
                } else {
                    f fVar = new f();
                    body.writeTo(fVar);
                    Charset charset = UTF8;
                    MediaType contentType = body.contentType();
                    if (contentType != null) {
                        charset = contentType.charset(charset);
                    }
                    this.logger.log("");
                    if (isPlaintext(fVar)) {
                        this.logger.log(fVar.D0(charset));
                        this.logger.log("--> END " + request.method() + " (" + body.contentLength() + "-byte body)");
                    } else {
                        this.logger.log("--> END " + request.method() + " (binary " + body.contentLength() + "-byte body omitted)");
                    }
                }
            } else {
                this.logger.log("--> END " + request.method());
            }
        }
        long nanoTime = System.nanoTime();
        try {
            Response proceed = chain.proceed(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            ResponseBody body2 = proceed.body();
            long contentLength = body2.contentLength();
            String str = contentLength != -1 ? contentLength + "-byte" : "unknown-length";
            Logger logger = this.logger;
            StringBuilder sb5 = new StringBuilder();
            sb5.append("<-- ");
            sb5.append(proceed.code());
            if (proceed.message().isEmpty()) {
                sb2 = "";
                j10 = contentLength;
                c10 = ' ';
            } else {
                StringBuilder sb6 = new StringBuilder();
                j10 = contentLength;
                c10 = ' ';
                sb6.append(' ');
                sb6.append(proceed.message());
                sb2 = sb6.toString();
            }
            sb5.append(sb2);
            sb5.append(c10);
            sb5.append(proceed.request().url());
            sb5.append(" (");
            sb5.append(millis);
            sb5.append("ms");
            sb5.append(z11 ? "" : ", " + str + " body");
            sb5.append(')');
            logger.log(sb5.toString());
            if (z11) {
                Headers headers2 = proceed.headers();
                int size2 = headers2.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    logHeader(headers2, i11);
                }
                if (z10 && HttpHeaders.hasBody(proceed)) {
                    if (bodyHasUnknownEncoding(proceed.headers())) {
                        this.logger.log("<-- END HTTP (encoded body omitted)");
                    } else {
                        h source = body2.source();
                        source.y(RecyclerView.FOREVER_NS);
                        f c11 = source.c();
                        m mVar = null;
                        if ("gzip".equalsIgnoreCase(headers2.get("Content-Encoding"))) {
                            ?? valueOf = Long.valueOf(c11.N0());
                            try {
                                m mVar2 = new m(c11.clone());
                                try {
                                    c11 = new f();
                                    c11.Z(mVar2);
                                    mVar2.close();
                                    mVar = valueOf;
                                } catch (Throwable th) {
                                    th = th;
                                    mVar = mVar2;
                                    if (mVar != null) {
                                        mVar.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                        Charset charset2 = UTF8;
                        MediaType contentType2 = body2.contentType();
                        if (contentType2 != null) {
                            charset2 = contentType2.charset(charset2);
                        }
                        if (!isPlaintext(c11)) {
                            this.logger.log("");
                            this.logger.log("<-- END HTTP (binary " + c11.N0() + "-byte body omitted)");
                            return proceed;
                        }
                        if (j10 != 0) {
                            this.logger.log("");
                            this.logger.log(c11.clone().D0(charset2));
                        }
                        if (mVar != null) {
                            this.logger.log("<-- END HTTP (" + c11.N0() + "-byte, " + mVar + "-gzipped-byte body)");
                        } else {
                            this.logger.log("<-- END HTTP (" + c11.N0() + "-byte body)");
                        }
                    }
                } else {
                    this.logger.log("<-- END HTTP");
                }
            }
            return proceed;
        } catch (Exception e10) {
            this.logger.log("<-- HTTP FAILED: " + e10);
            throw e10;
        }
    }

    public void redactHeader(String str) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        treeSet.addAll(this.headersToRedact);
        treeSet.add(str);
        this.headersToRedact = treeSet;
    }

    public HttpLoggingInterceptor setLevel(Level level) {
        if (level != null) {
            this.level = level;
            return this;
        }
        throw new NullPointerException("level == null. Use Level.NONE instead.");
    }

    public HttpLoggingInterceptor(Logger logger) {
        this.headersToRedact = Collections.emptySet();
        this.level = Level.NONE;
        this.logger = logger;
    }
}
