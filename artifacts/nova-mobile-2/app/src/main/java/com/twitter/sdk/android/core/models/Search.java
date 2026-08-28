package com.twitter.sdk.android.core.models;

import java.util.List;
import ka.c;

/* loaded from: classes.dex */
public class Search {

    @c("search_metadata")
    public final SearchMetadata searchMetadata;

    @c("statuses")
    public final List<Tweet> tweets;

    public Search(List<Tweet> list, SearchMetadata searchMetadata) {
        this.tweets = ModelUtils.getSafeList(list);
        this.searchMetadata = searchMetadata;
    }
}
