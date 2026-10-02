package com.twitter.sdk.android.core.internal.scribe;

import android.text.TextUtils;
import com.twitter.sdk.android.core.identity.AuthHandler;
import ja.f;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import ka.c;
import org.apache.http.protocol.HTTP;

/* loaded from: classes.dex */
public class ScribeEvent {
    private static final String CURRENT_FORMAT_VERSION = "2";

    @c("_category_")
    public final String category;

    @c("event_namespace")
    public final EventNamespace eventNamespace;

    @c("format_version")
    public final String formatVersion;

    @c("items")
    public final List<ScribeItem> items;

    @c(AuthHandler.EXTRA_TOKEN_SECRET)
    public final String timestamp;

    /* loaded from: classes.dex */
    public static class Transform implements EventTransform<ScribeEvent> {
        private final f gson;

        public Transform(f fVar) {
            this.gson = fVar;
        }

        @Override // com.twitter.sdk.android.core.internal.scribe.EventTransform
        public byte[] toBytes(ScribeEvent scribeEvent) throws IOException {
            return this.gson.t(scribeEvent).getBytes(HTTP.UTF_8);
        }
    }

    public ScribeEvent(String str, EventNamespace eventNamespace, long j10) {
        this(str, eventNamespace, j10, Collections.emptyList());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ScribeEvent scribeEvent = (ScribeEvent) obj;
        String str = this.category;
        if (str == null ? scribeEvent.category != null : !str.equals(scribeEvent.category)) {
            return false;
        }
        EventNamespace eventNamespace = this.eventNamespace;
        if (eventNamespace == null ? scribeEvent.eventNamespace != null : !eventNamespace.equals(scribeEvent.eventNamespace)) {
            return false;
        }
        String str2 = this.formatVersion;
        if (str2 == null ? scribeEvent.formatVersion != null : !str2.equals(scribeEvent.formatVersion)) {
            return false;
        }
        String str3 = this.timestamp;
        if (str3 == null ? scribeEvent.timestamp != null : !str3.equals(scribeEvent.timestamp)) {
            return false;
        }
        List<ScribeItem> list = this.items;
        List<ScribeItem> list2 = scribeEvent.items;
        return list == null ? list2 == null : list.equals(list2);
    }

    public int hashCode() {
        EventNamespace eventNamespace = this.eventNamespace;
        int hashCode = (eventNamespace != null ? eventNamespace.hashCode() : 0) * 31;
        String str = this.timestamp;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.formatVersion;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.category;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        List<ScribeItem> list = this.items;
        return hashCode4 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("event_namespace=");
        sb2.append(this.eventNamespace);
        sb2.append(", ts=");
        sb2.append(this.timestamp);
        sb2.append(", format_version=");
        sb2.append(this.formatVersion);
        sb2.append(", _category_=");
        sb2.append(this.category);
        sb2.append(", items=");
        sb2.append("[" + TextUtils.join(", ", this.items) + "]");
        return sb2.toString();
    }

    public ScribeEvent(String str, EventNamespace eventNamespace, long j10, List<ScribeItem> list) {
        this.category = str;
        this.eventNamespace = eventNamespace;
        this.timestamp = String.valueOf(j10);
        this.formatVersion = CURRENT_FORMAT_VERSION;
        this.items = Collections.unmodifiableList(list);
    }
}
