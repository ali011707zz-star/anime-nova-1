package org.apache.http.impl.client;

import java.util.HashMap;
import org.apache.http.HttpHost;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthScheme;
import org.apache.http.client.AuthCache;

@NotThreadSafe
/* loaded from: classes2.dex */
public class BasicAuthCache implements AuthCache {
    private final HashMap<HttpHost, AuthScheme> map = new HashMap<>();

    @Override // org.apache.http.client.AuthCache
    public void clear() {
        this.map.clear();
    }

    @Override // org.apache.http.client.AuthCache
    public AuthScheme get(HttpHost httpHost) {
        if (httpHost != null) {
            return this.map.get(httpHost);
        }
        throw new IllegalArgumentException("HTTP host may not be null");
    }

    @Override // org.apache.http.client.AuthCache
    public void put(HttpHost httpHost, AuthScheme authScheme) {
        if (httpHost != null) {
            this.map.put(httpHost, authScheme);
            return;
        }
        throw new IllegalArgumentException("HTTP host may not be null");
    }

    @Override // org.apache.http.client.AuthCache
    public void remove(HttpHost httpHost) {
        if (httpHost != null) {
            this.map.remove(httpHost);
            return;
        }
        throw new IllegalArgumentException("HTTP host may not be null");
    }

    public String toString() {
        return this.map.toString();
    }
}
