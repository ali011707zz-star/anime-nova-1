package okhttp3.internal.cache;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Internal;
import okhttp3.internal.http.HttpDate;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;

/* loaded from: classes.dex */
public final class CacheStrategy {

    @Nullable
    public final Response cacheResponse;

    @Nullable
    public final Request networkRequest;

    /* loaded from: classes2.dex */
    public static class Factory {
        private int ageSeconds;
        public final Response cacheResponse;
        private String etag;
        private Date expires;
        private Date lastModified;
        private String lastModifiedString;
        public final long nowMillis;
        private long receivedResponseMillis;
        public final Request request;
        private long sentRequestMillis;
        private Date servedDate;
        private String servedDateString;

        public Factory(long j10, Request request, Response response) {
            this.ageSeconds = -1;
            this.nowMillis = j10;
            this.request = request;
            this.cacheResponse = response;
            if (response != null) {
                this.sentRequestMillis = response.sentRequestAtMillis();
                this.receivedResponseMillis = response.receivedResponseAtMillis();
                Headers headers = response.headers();
                int size = headers.size();
                for (int i10 = 0; i10 < size; i10++) {
                    String name = headers.name(i10);
                    String value = headers.value(i10);
                    if ("Date".equalsIgnoreCase(name)) {
                        this.servedDate = HttpDate.parse(value);
                        this.servedDateString = value;
                    } else if (HttpHeaders.EXPIRES.equalsIgnoreCase(name)) {
                        this.expires = HttpDate.parse(value);
                    } else if (HttpHeaders.LAST_MODIFIED.equalsIgnoreCase(name)) {
                        this.lastModified = HttpDate.parse(value);
                        this.lastModifiedString = value;
                    } else if (HttpHeaders.ETAG.equalsIgnoreCase(name)) {
                        this.etag = value;
                    } else if (HttpHeaders.AGE.equalsIgnoreCase(name)) {
                        this.ageSeconds = okhttp3.internal.http.HttpHeaders.parseSeconds(value, -1);
                    }
                }
            }
        }

        private long cacheResponseAge() {
            Date date = this.servedDate;
            long max = date != null ? Math.max(0L, this.receivedResponseMillis - date.getTime()) : 0L;
            int i10 = this.ageSeconds;
            if (i10 != -1) {
                max = Math.max(max, TimeUnit.SECONDS.toMillis(i10));
            }
            long j10 = this.receivedResponseMillis;
            return max + (j10 - this.sentRequestMillis) + (this.nowMillis - j10);
        }

        private long computeFreshnessLifetime() {
            long j10;
            long j11;
            if (this.cacheResponse.cacheControl().maxAgeSeconds() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.maxAgeSeconds());
            }
            if (this.expires != null) {
                Date date = this.servedDate;
                if (date != null) {
                    j11 = date.getTime();
                } else {
                    j11 = this.receivedResponseMillis;
                }
                long time = this.expires.getTime() - j11;
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.lastModified == null || this.cacheResponse.request().url().query() != null) {
                return 0L;
            }
            Date date2 = this.servedDate;
            if (date2 != null) {
                j10 = date2.getTime();
            } else {
                j10 = this.sentRequestMillis;
            }
            long time2 = j10 - this.lastModified.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        private CacheStrategy getCandidate() {
            if (this.cacheResponse == null) {
                return new CacheStrategy(this.request, null);
            }
            if (this.request.isHttps() && this.cacheResponse.handshake() == null) {
                return new CacheStrategy(this.request, null);
            }
            if (!CacheStrategy.isCacheable(this.cacheResponse, this.request)) {
                return new CacheStrategy(this.request, null);
            }
            CacheControl cacheControl = this.request.cacheControl();
            if (!cacheControl.noCache() && !hasConditions(this.request)) {
                CacheControl cacheControl2 = this.cacheResponse.cacheControl();
                long cacheResponseAge = cacheResponseAge();
                long computeFreshnessLifetime = computeFreshnessLifetime();
                if (cacheControl.maxAgeSeconds() != -1) {
                    computeFreshnessLifetime = Math.min(computeFreshnessLifetime, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
                }
                long j10 = 0;
                long millis = cacheControl.minFreshSeconds() != -1 ? TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds()) : 0L;
                if (!cacheControl2.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
                    j10 = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
                }
                if (!cacheControl2.noCache()) {
                    long j11 = millis + cacheResponseAge;
                    if (j11 < j10 + computeFreshnessLifetime) {
                        Response.Builder newBuilder = this.cacheResponse.newBuilder();
                        if (j11 >= computeFreshnessLifetime) {
                            newBuilder.addHeader(HttpHeaders.WARNING, "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (cacheResponseAge > 86400000 && isFreshnessLifetimeHeuristic()) {
                            newBuilder.addHeader(HttpHeaders.WARNING, "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new CacheStrategy(null, newBuilder.build());
                    }
                }
                String str = this.etag;
                String str2 = HttpHeaders.IF_MODIFIED_SINCE;
                if (str != null) {
                    str2 = HttpHeaders.IF_NONE_MATCH;
                } else if (this.lastModified != null) {
                    str = this.lastModifiedString;
                } else if (this.servedDate != null) {
                    str = this.servedDateString;
                } else {
                    return new CacheStrategy(this.request, null);
                }
                Headers.Builder newBuilder2 = this.request.headers().newBuilder();
                Internal.instance.addLenient(newBuilder2, str2, str);
                return new CacheStrategy(this.request.newBuilder().headers(newBuilder2.build()).build(), this.cacheResponse);
            }
            return new CacheStrategy(this.request, null);
        }

        private static boolean hasConditions(Request request) {
            return (request.header(HttpHeaders.IF_MODIFIED_SINCE) == null && request.header(HttpHeaders.IF_NONE_MATCH) == null) ? false : true;
        }

        private boolean isFreshnessLifetimeHeuristic() {
            return this.cacheResponse.cacheControl().maxAgeSeconds() == -1 && this.expires == null;
        }

        public CacheStrategy get() {
            CacheStrategy candidate = getCandidate();
            return (candidate.networkRequest == null || !this.request.cacheControl().onlyIfCached()) ? candidate : new CacheStrategy(null, null);
        }
    }

    public CacheStrategy(Request request, Response response) {
        this.networkRequest = request;
        this.cacheResponse = response;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.cacheControl().isPrivate() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isCacheable(Response response, Request request) {
        int code = response.code();
        if (code != 200 && code != 410 && code != 414 && code != 501 && code != 203 && code != 204) {
            if (code != 307) {
                if (code != 308 && code != 404 && code != 405) {
                    switch (code) {
                        case HttpStatus.SC_MULTIPLE_CHOICES /* 300 */:
                        case HttpStatus.SC_MOVED_PERMANENTLY /* 301 */:
                            break;
                        case HttpStatus.SC_MOVED_TEMPORARILY /* 302 */:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (response.header(HttpHeaders.EXPIRES) == null) {
                if (response.cacheControl().maxAgeSeconds() == -1) {
                    if (!response.cacheControl().isPublic()) {
                    }
                }
            }
        }
        return (response.cacheControl().noStore() || request.cacheControl().noStore()) ? false : true;
    }
}
