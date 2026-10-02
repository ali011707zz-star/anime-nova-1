package okhttp3.internal.http;

import cd.h;
import javax.annotation.Nullable;
import okhttp3.MediaType;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public final class RealResponseBody extends ResponseBody {
    private final long contentLength;

    @Nullable
    private final String contentTypeString;
    private final h source;

    public RealResponseBody(@Nullable String str, long j10, h hVar) {
        this.contentTypeString = str;
        this.contentLength = j10;
        this.source = hVar;
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        String str = this.contentTypeString;
        if (str != null) {
            return MediaType.parse(str);
        }
        return null;
    }

    @Override // okhttp3.ResponseBody
    public h source() {
        return this.source;
    }
}
