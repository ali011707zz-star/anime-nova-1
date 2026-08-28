package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
import rd.b;
import td.c;
import td.e;
import td.f;
import td.o;
import td.s;
import td.t;

/* loaded from: classes.dex */
public interface StatusesService {
    @e
    @o("/1.1/statuses/destroy/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<Tweet> destroy(@s("id") Long l10, @c("trim_user") Boolean bool);

    @f("/1.1/statuses/home_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<List<Tweet>> homeTimeline(@t("count") Integer num, @t("since_id") Long l10, @t("max_id") Long l11, @t("trim_user") Boolean bool, @t("exclude_replies") Boolean bool2, @t("contributor_details") Boolean bool3, @t("include_entities") Boolean bool4);

    @f("/1.1/statuses/lookup.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<List<Tweet>> lookup(@t("id") String str, @t("include_entities") Boolean bool, @t("trim_user") Boolean bool2, @t("map") Boolean bool3);

    @f("/1.1/statuses/mentions_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<List<Tweet>> mentionsTimeline(@t("count") Integer num, @t("since_id") Long l10, @t("max_id") Long l11, @t("trim_user") Boolean bool, @t("contributor_details") Boolean bool2, @t("include_entities") Boolean bool3);

    @e
    @o("/1.1/statuses/retweet/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<Tweet> retweet(@s("id") Long l10, @c("trim_user") Boolean bool);

    @f("/1.1/statuses/retweets_of_me.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<List<Tweet>> retweetsOfMe(@t("count") Integer num, @t("since_id") Long l10, @t("max_id") Long l11, @t("trim_user") Boolean bool, @t("include_entities") Boolean bool2, @t("include_user_entities") Boolean bool3);

    @f("/1.1/statuses/show.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<Tweet> show(@t("id") Long l10, @t("trim_user") Boolean bool, @t("include_my_retweet") Boolean bool2, @t("include_entities") Boolean bool3);

    @e
    @o("/1.1/statuses/unretweet/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<Tweet> unretweet(@s("id") Long l10, @c("trim_user") Boolean bool);

    @e
    @o("/1.1/statuses/update.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<Tweet> update(@c("status") String str, @c("in_reply_to_status_id") Long l10, @c("possibly_sensitive") Boolean bool, @c("lat") Double d10, @c("long") Double d11, @c("place_id") String str2, @c("display_coordinates") Boolean bool2, @c("trim_user") Boolean bool3, @c("media_ids") String str3);

    @f("/1.1/statuses/user_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<List<Tweet>> userTimeline(@t("user_id") Long l10, @t("screen_name") String str, @t("count") Integer num, @t("since_id") Long l11, @t("max_id") Long l12, @t("trim_user") Boolean bool, @t("exclude_replies") Boolean bool2, @t("contributor_details") Boolean bool3, @t("include_rts") Boolean bool4);
}
