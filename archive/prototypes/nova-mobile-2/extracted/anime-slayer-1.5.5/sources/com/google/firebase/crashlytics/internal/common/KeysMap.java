package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.Logger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class KeysMap {
    private final Map<String, String> keys = new HashMap();
    private final int maxEntries;
    private final int maxEntryLength;

    public KeysMap(int i10, int i11) {
        this.maxEntries = i10;
        this.maxEntryLength = i11;
    }

    private String sanitizeKey(String str) {
        if (str != null) {
            return sanitizeAttribute(str);
        }
        throw new IllegalArgumentException("Custom attribute key must not be null.");
    }

    public synchronized Map<String, String> getKeys() {
        return Collections.unmodifiableMap(new HashMap(this.keys));
    }

    public String sanitizeAttribute(String str) {
        if (str == null) {
            return str;
        }
        String trim = str.trim();
        int length = trim.length();
        int i10 = this.maxEntryLength;
        return length > i10 ? trim.substring(0, i10) : trim;
    }

    public synchronized void setKeys(Map<String, String> map) {
        int i10 = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String sanitizeKey = sanitizeKey(entry.getKey());
            if (this.keys.size() >= this.maxEntries && !this.keys.containsKey(sanitizeKey)) {
                i10++;
            }
            String value = entry.getValue();
            this.keys.put(sanitizeKey, value == null ? "" : sanitizeAttribute(value));
        }
        if (i10 > 0) {
            Logger.getLogger().w("Ignored " + i10 + " entries when adding custom keys. Maximum allowable: " + this.maxEntries);
        }
    }
}
