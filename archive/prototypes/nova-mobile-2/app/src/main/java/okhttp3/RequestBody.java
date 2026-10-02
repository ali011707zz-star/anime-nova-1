package okhttp3;

import cd.c0;
import cd.g;
import cd.i;
import cd.p;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import okhttp3.internal.Util;

/* loaded from: classes.dex */
public abstract class RequestBody {
    public static RequestBody create(@Nullable MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        if (mediaType != null) {
            Charset charset2 = mediaType.charset();
            if (charset2 == null) {
                mediaType = MediaType.parse(mediaType + "; charset=utf-8");
            } else {
                charset = charset2;
            }
        }
        return create(mediaType, str.getBytes(charset));
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    @Nullable
    public abstract MediaType contentType();

    public abstract void writeTo(g gVar) throws IOException;

    public static RequestBody create(@Nullable final MediaType mediaType, final i iVar) {
        return new RequestBody() { // from class: okhttp3.RequestBody.1
            @Override // okhttp3.RequestBody
            public long contentLength() throws IOException {
                return iVar.y();
            }

            @Override // okhttp3.RequestBody
            @Nullable
            public MediaType contentType() {
                return MediaType.this;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(g gVar) throws IOException {
                gVar.B(iVar);
            }
        };
    }

    public static RequestBody create(@Nullable MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr, 0, bArr.length);
    }

    public static RequestBody create(@Nullable final MediaType mediaType, final byte[] bArr, final int i10, final int i11) {
        if (bArr != null) {
            Util.checkOffsetAndCount(bArr.length, i10, i11);
            return new RequestBody() { // from class: okhttp3.RequestBody.2
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return i11;
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(g gVar) throws IOException {
                    gVar.write(bArr, i10, i11);
                }
            };
        }
        throw new NullPointerException("content == null");
    }

    public static RequestBody create(@Nullable final MediaType mediaType, final File file) {
        if (file != null) {
            return new RequestBody() { // from class: okhttp3.RequestBody.3
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return file.length();
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(g gVar) throws IOException {
                    c0 c0Var = null;
                    try {
                        c0Var = p.k(file);
                        gVar.Z(c0Var);
                    } finally {
                        Util.closeQuietly(c0Var);
                    }
                }
            };
        }
        throw new NullPointerException("file == null");
    }
}
