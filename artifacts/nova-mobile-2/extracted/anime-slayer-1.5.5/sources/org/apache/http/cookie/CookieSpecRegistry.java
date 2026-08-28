package org.apache.http.cookie;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.params.HttpParams;

@ThreadSafe
/* loaded from: classes2.dex */
public final class CookieSpecRegistry {
    private final ConcurrentHashMap<String, CookieSpecFactory> registeredSpecs = new ConcurrentHashMap<>();

    public CookieSpec getCookieSpec(String str, HttpParams httpParams) throws IllegalStateException {
        if (str != null) {
            CookieSpecFactory cookieSpecFactory = this.registeredSpecs.get(str.toLowerCase(Locale.ENGLISH));
            if (cookieSpecFactory != null) {
                return cookieSpecFactory.newInstance(httpParams);
            }
            throw new IllegalStateException("Unsupported cookie spec: " + str);
        }
        throw new IllegalArgumentException("Name may not be null");
    }

    public List<String> getSpecNames() {
        return new ArrayList(this.registeredSpecs.keySet());
    }

    public void register(String str, CookieSpecFactory cookieSpecFactory) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        if (cookieSpecFactory != null) {
            this.registeredSpecs.put(str.toLowerCase(Locale.ENGLISH), cookieSpecFactory);
            return;
        }
        throw new IllegalArgumentException("Cookie spec factory may not be null");
    }

    public void setItems(Map<String, CookieSpecFactory> map) {
        if (map == null) {
            return;
        }
        this.registeredSpecs.clear();
        this.registeredSpecs.putAll(map);
    }

    public void unregister(String str) {
        if (str != null) {
            this.registeredSpecs.remove(str.toLowerCase(Locale.ENGLISH));
            return;
        }
        throw new IllegalArgumentException("Id may not be null");
    }

    public CookieSpec getCookieSpec(String str) throws IllegalStateException {
        return getCookieSpec(str, null);
    }
}
