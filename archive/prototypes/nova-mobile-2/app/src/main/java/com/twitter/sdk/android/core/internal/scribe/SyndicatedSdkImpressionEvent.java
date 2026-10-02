package com.twitter.sdk.android.core.internal.scribe;

import java.util.Collections;
import java.util.List;
import ka.c;

/* loaded from: classes.dex */
public class SyndicatedSdkImpressionEvent extends ScribeEvent {
    public static final String CLIENT_NAME = "android";
    private static final String SCRIBE_CATEGORY = "syndicated_sdk_impression";

    @c("device_id_created_at")
    public final long deviceIdCreatedAt;

    @c("external_ids")
    public final ExternalIds externalIds;

    @c("language")
    public final String language;

    /* loaded from: classes.dex */
    public class ExternalIds {

        @c("AD_ID")
        public final String adId;

        public ExternalIds(String str) {
            this.adId = str;
        }
    }

    public SyndicatedSdkImpressionEvent(EventNamespace eventNamespace, long j10, String str, String str2) {
        this(eventNamespace, j10, str, str2, Collections.emptyList());
    }

    public SyndicatedSdkImpressionEvent(EventNamespace eventNamespace, long j10, String str, String str2, List<ScribeItem> list) {
        super(SCRIBE_CATEGORY, eventNamespace, j10, list);
        this.language = str;
        this.externalIds = new ExternalIds(str2);
        this.deviceIdCreatedAt = 0L;
    }
}
