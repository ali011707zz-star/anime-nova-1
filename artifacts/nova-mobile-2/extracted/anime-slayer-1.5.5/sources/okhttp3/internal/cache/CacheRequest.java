package okhttp3.internal.cache;

import cd.a0;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface CacheRequest {
    void abort();

    a0 body() throws IOException;
}
