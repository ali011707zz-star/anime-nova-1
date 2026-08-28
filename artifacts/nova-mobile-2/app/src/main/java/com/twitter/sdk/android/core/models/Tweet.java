package com.twitter.sdk.android.core.models;

import java.util.List;
import ka.c;

/* loaded from: classes.dex */
public class Tweet implements Identifiable {
    public static final long INVALID_ID = -1;

    @c("card")
    public final Card card;

    @c("coordinates")
    public final Coordinates coordinates;

    @c("created_at")
    public final String createdAt;

    @c("current_user_retweet")
    public final Object currentUserRetweet;

    @c("display_text_range")
    public final List<Integer> displayTextRange;

    @c("entities")
    public final TweetEntities entities;

    @c("extended_entities")
    public final TweetEntities extendedEntities;

    @c("favorite_count")
    public final Integer favoriteCount;

    @c("favorited")
    public final boolean favorited;

    @c("filter_level")
    public final String filterLevel;

    /* renamed from: id, reason: collision with root package name */
    @c("id")
    public final long f4982id;

    @c("id_str")
    public final String idStr;

    @c("in_reply_to_screen_name")
    public final String inReplyToScreenName;

    @c("in_reply_to_status_id")
    public final long inReplyToStatusId;

    @c("in_reply_to_status_id_str")
    public final String inReplyToStatusIdStr;

    @c("in_reply_to_user_id")
    public final long inReplyToUserId;

    @c("in_reply_to_user_id_str")
    public final String inReplyToUserIdStr;

    @c("lang")
    public final String lang;

    @c("place")
    public final Place place;

    @c("possibly_sensitive")
    public final boolean possiblySensitive;

    @c("quoted_status")
    public final Tweet quotedStatus;

    @c("quoted_status_id")
    public final long quotedStatusId;

    @c("quoted_status_id_str")
    public final String quotedStatusIdStr;

    @c("retweet_count")
    public final int retweetCount;

    @c("retweeted")
    public final boolean retweeted;

    @c("retweeted_status")
    public final Tweet retweetedStatus;

    @c("scopes")
    public final Object scopes;

    @c("source")
    public final String source;

    @c(alternate = {"full_text"}, value = "text")
    public final String text;

    @c("truncated")
    public final boolean truncated;

    @c("user")
    public final User user;

    @c("withheld_copyright")
    public final boolean withheldCopyright;

    @c("withheld_in_countries")
    public final List<String> withheldInCountries;

    @c("withheld_scope")
    public final String withheldScope;

    public Tweet(Coordinates coordinates, String str, Object obj, TweetEntities tweetEntities, TweetEntities tweetEntities2, Integer num, boolean z10, String str2, long j10, String str3, String str4, long j11, String str5, long j12, String str6, String str7, Place place, boolean z11, Object obj2, long j13, String str8, Tweet tweet, int i10, boolean z12, Tweet tweet2, String str9, String str10, List<Integer> list, boolean z13, User user, boolean z14, List<String> list2, String str11, Card card) {
        this.coordinates = coordinates;
        this.createdAt = str;
        this.currentUserRetweet = obj;
        this.entities = tweetEntities;
        this.extendedEntities = tweetEntities2;
        this.favoriteCount = num;
        this.favorited = z10;
        this.filterLevel = str2;
        this.f4982id = j10;
        this.idStr = str3;
        this.inReplyToScreenName = str4;
        this.inReplyToStatusId = j11;
        this.inReplyToStatusIdStr = str5;
        this.inReplyToUserId = j12;
        this.inReplyToUserIdStr = str6;
        this.lang = str7;
        this.place = place;
        this.possiblySensitive = z11;
        this.scopes = obj2;
        this.quotedStatusId = j13;
        this.quotedStatusIdStr = str8;
        this.quotedStatus = tweet;
        this.retweetCount = i10;
        this.retweeted = z12;
        this.retweetedStatus = tweet2;
        this.source = str9;
        this.text = str10;
        this.displayTextRange = ModelUtils.getSafeList(list);
        this.truncated = z13;
        this.user = user;
        this.withheldCopyright = z14;
        this.withheldInCountries = ModelUtils.getSafeList(list2);
        this.withheldScope = str11;
        this.card = card;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof Tweet) && this.f4982id == ((Tweet) obj).f4982id;
    }

    @Override // com.twitter.sdk.android.core.models.Identifiable
    public long getId() {
        return this.f4982id;
    }

    public int hashCode() {
        return (int) this.f4982id;
    }
}
