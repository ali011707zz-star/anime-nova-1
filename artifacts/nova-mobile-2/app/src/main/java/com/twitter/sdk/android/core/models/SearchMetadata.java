package com.twitter.sdk.android.core.models;

import com.google.android.gms.actions.SearchIntents;
import ka.c;

/* loaded from: classes.dex */
public class SearchMetadata {

    @c("completed_in")
    public final double completedIn;

    @c("count")
    public final long count;

    @c("max_id")
    public final long maxId;

    @c("max_id_str")
    public final String maxIdStr;

    @c("next_results")
    public final String nextResults;

    @c(SearchIntents.EXTRA_QUERY)
    public final String query;

    @c("refresh_url")
    public final String refreshUrl;

    @c("since_id")
    public final long sinceId;

    @c("since_id_str")
    public final String sinceIdStr;

    public SearchMetadata(int i10, int i11, String str, String str2, int i12, double d10, String str3, String str4, String str5) {
        this.maxId = i10;
        this.sinceId = i11;
        this.refreshUrl = str;
        this.nextResults = str2;
        this.count = i12;
        this.completedIn = d10;
        this.sinceIdStr = str3;
        this.query = str4;
        this.maxIdStr = str5;
    }
}
