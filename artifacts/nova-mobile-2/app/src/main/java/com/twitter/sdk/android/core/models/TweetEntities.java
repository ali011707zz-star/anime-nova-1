package com.twitter.sdk.android.core.models;

import java.util.List;
import ka.c;

/* loaded from: classes.dex */
public class TweetEntities {

    @c("hashtags")
    public final List<HashtagEntity> hashtags;

    @c("media")
    public final List<MediaEntity> media;

    @c("symbols")
    public final List<SymbolEntity> symbols;

    @c("urls")
    public final List<UrlEntity> urls;

    @c("user_mentions")
    public final List<MentionEntity> userMentions;

    public TweetEntities(List<UrlEntity> list, List<MentionEntity> list2, List<MediaEntity> list3, List<HashtagEntity> list4, List<SymbolEntity> list5) {
        this.urls = ModelUtils.getSafeList(list);
        this.userMentions = ModelUtils.getSafeList(list2);
        this.media = ModelUtils.getSafeList(list3);
        this.hashtags = ModelUtils.getSafeList(list4);
        this.symbols = ModelUtils.getSafeList(list5);
    }
}
