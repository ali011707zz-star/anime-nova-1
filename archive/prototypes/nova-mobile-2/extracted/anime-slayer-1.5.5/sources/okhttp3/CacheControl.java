package okhttp3;

import com.google.android.gms.common.api.Api;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import org.apache.http.HttpHeaders;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes.dex */
public final class CacheControl {

    @Nullable
    public String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Api.BaseClientBuilder.API_PRIORITY_OTHER, TimeUnit.SECONDS).build();

    /* loaded from: classes2.dex */
    public static final class Builder {
        public boolean immutable;
        public int maxAgeSeconds = -1;
        public int maxStaleSeconds = -1;
        public int minFreshSeconds = -1;
        public boolean noCache;
        public boolean noStore;
        public boolean noTransform;
        public boolean onlyIfCached;

        public CacheControl build() {
            return new CacheControl(this);
        }

        public Builder immutable() {
            this.immutable = true;
            return this;
        }

        public Builder maxAge(int i10, TimeUnit timeUnit) {
            if (i10 >= 0) {
                long seconds = timeUnit.toSeconds(i10);
                this.maxAgeSeconds = seconds > 2147483647L ? Api.BaseClientBuilder.API_PRIORITY_OTHER : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxAge < 0: " + i10);
        }

        public Builder maxStale(int i10, TimeUnit timeUnit) {
            if (i10 >= 0) {
                long seconds = timeUnit.toSeconds(i10);
                this.maxStaleSeconds = seconds > 2147483647L ? Api.BaseClientBuilder.API_PRIORITY_OTHER : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i10);
        }

        public Builder minFresh(int i10, TimeUnit timeUnit) {
            if (i10 >= 0) {
                long seconds = timeUnit.toSeconds(i10);
                this.minFreshSeconds = seconds > 2147483647L ? Api.BaseClientBuilder.API_PRIORITY_OTHER : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("minFresh < 0: " + i10);
        }

        public Builder noCache() {
            this.noCache = true;
            return this;
        }

        public Builder noStore() {
            this.noStore = true;
            return this;
        }

        public Builder noTransform() {
            this.noTransform = true;
            return this;
        }

        public Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }
    }

    private CacheControl(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, @Nullable String str) {
        this.noCache = z10;
        this.noStore = z11;
        this.maxAgeSeconds = i10;
        this.sMaxAgeSeconds = i11;
        this.isPrivate = z12;
        this.isPublic = z13;
        this.mustRevalidate = z14;
        this.maxStaleSeconds = i12;
        this.minFreshSeconds = i13;
        this.onlyIfCached = z15;
        this.noTransform = z16;
        this.immutable = z17;
        this.headerValue = str;
    }

    private String headerValue() {
        StringBuilder sb2 = new StringBuilder();
        if (this.noCache) {
            sb2.append("no-cache, ");
        }
        if (this.noStore) {
            sb2.append("no-store, ");
        }
        if (this.maxAgeSeconds != -1) {
            sb2.append("max-age=");
            sb2.append(this.maxAgeSeconds);
            sb2.append(", ");
        }
        if (this.sMaxAgeSeconds != -1) {
            sb2.append("s-maxage=");
            sb2.append(this.sMaxAgeSeconds);
            sb2.append(", ");
        }
        if (this.isPrivate) {
            sb2.append("private, ");
        }
        if (this.isPublic) {
            sb2.append("public, ");
        }
        if (this.mustRevalidate) {
            sb2.append("must-revalidate, ");
        }
        if (this.maxStaleSeconds != -1) {
            sb2.append("max-stale=");
            sb2.append(this.maxStaleSeconds);
            sb2.append(", ");
        }
        if (this.minFreshSeconds != -1) {
            sb2.append("min-fresh=");
            sb2.append(this.minFreshSeconds);
            sb2.append(", ");
        }
        if (this.onlyIfCached) {
            sb2.append("only-if-cached, ");
        }
        if (this.noTransform) {
            sb2.append("no-transform, ");
        }
        if (this.immutable) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            return "";
        }
        sb2.delete(sb2.length() - 2, sb2.length());
        return sb2.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CacheControl parse(Headers headers) {
        int i10;
        int i11;
        String str;
        Headers headers2 = headers;
        int size = headers.size();
        int i12 = 0;
        boolean z10 = true;
        String str2 = null;
        boolean z11 = false;
        boolean z12 = false;
        int i13 = -1;
        int i14 = -1;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        int i15 = -1;
        int i16 = -1;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        while (i12 < size) {
            String name = headers2.name(i12);
            String value = headers2.value(i12);
            if (name.equalsIgnoreCase(HttpHeaders.CACHE_CONTROL)) {
                if (str2 == null) {
                    str2 = value;
                    for (i10 = 0; i10 < value.length(); i10 = i11) {
                        int skipUntil = okhttp3.internal.http.HttpHeaders.skipUntil(value, i10, "=,;");
                        String trim = value.substring(i10, skipUntil).trim();
                        if (skipUntil == value.length() || value.charAt(skipUntil) == ',' || value.charAt(skipUntil) == ';') {
                            i11 = skipUntil + 1;
                            str = null;
                        } else {
                            int skipWhitespace = okhttp3.internal.http.HttpHeaders.skipWhitespace(value, skipUntil + 1);
                            if (skipWhitespace < value.length() && value.charAt(skipWhitespace) == '\"') {
                                int i17 = skipWhitespace + 1;
                                int skipUntil2 = okhttp3.internal.http.HttpHeaders.skipUntil(value, i17, "\"");
                                str = value.substring(i17, skipUntil2);
                                i11 = skipUntil2 + 1;
                            } else {
                                i11 = okhttp3.internal.http.HttpHeaders.skipUntil(value, skipWhitespace, ",;");
                                str = value.substring(skipWhitespace, i11).trim();
                            }
                        }
                        if ("no-cache".equalsIgnoreCase(trim)) {
                            z11 = true;
                        } else if ("no-store".equalsIgnoreCase(trim)) {
                            z12 = true;
                        } else if (ClientCookie.MAX_AGE_ATTR.equalsIgnoreCase(trim)) {
                            i13 = okhttp3.internal.http.HttpHeaders.parseSeconds(str, -1);
                        } else if ("s-maxage".equalsIgnoreCase(trim)) {
                            i14 = okhttp3.internal.http.HttpHeaders.parseSeconds(str, -1);
                        } else if ("private".equalsIgnoreCase(trim)) {
                            z13 = true;
                        } else if ("public".equalsIgnoreCase(trim)) {
                            z14 = true;
                        } else if ("must-revalidate".equalsIgnoreCase(trim)) {
                            z15 = true;
                        } else if ("max-stale".equalsIgnoreCase(trim)) {
                            i15 = okhttp3.internal.http.HttpHeaders.parseSeconds(str, Api.BaseClientBuilder.API_PRIORITY_OTHER);
                        } else if ("min-fresh".equalsIgnoreCase(trim)) {
                            i16 = okhttp3.internal.http.HttpHeaders.parseSeconds(str, -1);
                        } else if ("only-if-cached".equalsIgnoreCase(trim)) {
                            z16 = true;
                        } else if ("no-transform".equalsIgnoreCase(trim)) {
                            z17 = true;
                        } else if ("immutable".equalsIgnoreCase(trim)) {
                            z18 = true;
                        }
                    }
                    i12++;
                    headers2 = headers;
                }
            } else if (!name.equalsIgnoreCase(HttpHeaders.PRAGMA)) {
                i12++;
                headers2 = headers;
            }
            z10 = false;
            while (i10 < value.length()) {
            }
            i12++;
            headers2 = headers;
        }
        return new CacheControl(z11, z12, i13, i14, z13, z14, z15, i15, i16, z16, z17, z18, !z10 ? null : str2);
    }

    public boolean immutable() {
        return this.immutable;
    }

    public boolean isPrivate() {
        return this.isPrivate;
    }

    public boolean isPublic() {
        return this.isPublic;
    }

    public int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public boolean noCache() {
        return this.noCache;
    }

    public boolean noStore() {
        return this.noStore;
    }

    public boolean noTransform() {
        return this.noTransform;
    }

    public boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        String headerValue = headerValue();
        this.headerValue = headerValue;
        return headerValue;
    }

    public CacheControl(Builder builder) {
        this.noCache = builder.noCache;
        this.noStore = builder.noStore;
        this.maxAgeSeconds = builder.maxAgeSeconds;
        this.sMaxAgeSeconds = -1;
        this.isPrivate = false;
        this.isPublic = false;
        this.mustRevalidate = false;
        this.maxStaleSeconds = builder.maxStaleSeconds;
        this.minFreshSeconds = builder.minFreshSeconds;
        this.onlyIfCached = builder.onlyIfCached;
        this.noTransform = builder.noTransform;
        this.immutable = builder.immutable;
    }
}
