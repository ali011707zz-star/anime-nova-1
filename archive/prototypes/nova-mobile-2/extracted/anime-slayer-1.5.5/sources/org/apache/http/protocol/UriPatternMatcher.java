package org.apache.http.protocol;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class UriPatternMatcher {
    private final Map map = new HashMap();

    public synchronized Object lookup(String str) {
        Object obj;
        if (str != null) {
            int indexOf = str.indexOf("?");
            if (indexOf != -1) {
                str = str.substring(0, indexOf);
            }
            obj = this.map.get(str);
            if (obj == null) {
                String str2 = null;
                for (String str3 : this.map.keySet()) {
                    if (matchUriRequestPattern(str3, str) && (str2 == null || str2.length() < str3.length() || (str2.length() == str3.length() && str3.endsWith("*")))) {
                        obj = this.map.get(str3);
                        str2 = str3;
                    }
                }
            }
        } else {
            throw new IllegalArgumentException("Request URI may not be null");
        }
        return obj;
    }

    public boolean matchUriRequestPattern(String str, String str2) {
        if (str.equals("*")) {
            return true;
        }
        if (str.endsWith("*") && str2.startsWith(str.substring(0, str.length() - 1))) {
            return true;
        }
        return str.startsWith("*") && str2.endsWith(str.substring(1, str.length()));
    }

    public synchronized void register(String str, Object obj) {
        if (str != null) {
            this.map.put(str, obj);
        } else {
            throw new IllegalArgumentException("URI request pattern may not be null");
        }
    }

    public synchronized void setHandlers(Map map) {
        if (map != null) {
            this.map.clear();
            this.map.putAll(map);
        } else {
            throw new IllegalArgumentException("Map of handlers may not be null");
        }
    }

    public synchronized void setObjects(Map map) {
        if (map != null) {
            this.map.clear();
            this.map.putAll(map);
        } else {
            throw new IllegalArgumentException("Map of handlers may not be null");
        }
    }

    public synchronized void unregister(String str) {
        if (str == null) {
            return;
        }
        this.map.remove(str);
    }
}
