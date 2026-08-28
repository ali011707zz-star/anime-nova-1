package com.google.firebase.crashlytics.internal.common;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;

/* loaded from: classes.dex */
public class UserMetadata {
    private String userId = null;
    private final KeysMap customKeys = new KeysMap(64, RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE);
    private final KeysMap internalKeys = new KeysMap(64, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST);

    public Map<String, String> getCustomKeys() {
        return this.customKeys.getKeys();
    }

    public Map<String, String> getInternalKeys() {
        return this.internalKeys.getKeys();
    }

    public void setCustomKeys(Map<String, String> map) {
        this.customKeys.setKeys(map);
    }
}
