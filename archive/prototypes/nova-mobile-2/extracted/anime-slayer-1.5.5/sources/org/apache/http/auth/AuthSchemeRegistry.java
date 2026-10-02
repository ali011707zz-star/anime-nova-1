package org.apache.http.auth;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.params.HttpParams;

@ThreadSafe
/* loaded from: classes2.dex */
public final class AuthSchemeRegistry {
    private final ConcurrentHashMap<String, AuthSchemeFactory> registeredSchemes = new ConcurrentHashMap<>();

    public AuthScheme getAuthScheme(String str, HttpParams httpParams) throws IllegalStateException {
        if (str != null) {
            AuthSchemeFactory authSchemeFactory = this.registeredSchemes.get(str.toLowerCase(Locale.ENGLISH));
            if (authSchemeFactory != null) {
                return authSchemeFactory.newInstance(httpParams);
            }
            throw new IllegalStateException("Unsupported authentication scheme: " + str);
        }
        throw new IllegalArgumentException("Name may not be null");
    }

    public List<String> getSchemeNames() {
        return new ArrayList(this.registeredSchemes.keySet());
    }

    public void register(String str, AuthSchemeFactory authSchemeFactory) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        if (authSchemeFactory != null) {
            this.registeredSchemes.put(str.toLowerCase(Locale.ENGLISH), authSchemeFactory);
            return;
        }
        throw new IllegalArgumentException("Authentication scheme factory may not be null");
    }

    public void setItems(Map<String, AuthSchemeFactory> map) {
        if (map == null) {
            return;
        }
        this.registeredSchemes.clear();
        this.registeredSchemes.putAll(map);
    }

    public void unregister(String str) {
        if (str != null) {
            this.registeredSchemes.remove(str.toLowerCase(Locale.ENGLISH));
            return;
        }
        throw new IllegalArgumentException("Name may not be null");
    }
}
