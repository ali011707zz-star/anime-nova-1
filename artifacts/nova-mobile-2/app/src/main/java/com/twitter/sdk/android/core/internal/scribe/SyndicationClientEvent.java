package com.twitter.sdk.android.core.internal.scribe;

import java.util.List;
import ka.c;

/* loaded from: classes.dex */
public class SyndicationClientEvent extends ScribeEvent {
    public static final String CLIENT_NAME = "tfw";
    private static final String SCRIBE_CATEGORY = "tfw_client_event";

    @c("event_info")
    public final String eventInfo;

    @c("external_ids")
    public final ExternalIds externalIds;

    @c("language")
    public final String language;

    /* loaded from: classes.dex */
    public class ExternalIds {

        @c("6")
        public final String adId;

        public ExternalIds(String str) {
            this.adId = str;
        }
    }

    public SyndicationClientEvent(EventNamespace eventNamespace, String str, long j10, String str2, String str3, List<ScribeItem> list) {
        super(SCRIBE_CATEGORY, eventNamespace, j10, list);
        this.language = str2;
        this.eventInfo = str;
        this.externalIds = new ExternalIds(str3);
    }
}
