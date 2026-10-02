package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
import rd.b;
import td.c;
import td.e;
import td.f;
import td.o;
import td.t;

/* loaded from: classes.dex */
public interface FavoriteService {
    @e
    @o("/1.1/favorites/create.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<Tweet> create(@c("id") Long l10, @c("include_entities") Boolean bool);

    @e
    @o("/1.1/favorites/destroy.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<Tweet> destroy(@c("id") Long l10, @c("include_entities") Boolean bool);

    @f("/1.1/favorites/list.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<List<Tweet>> list(@t("user_id") Long l10, @t("screen_name") String str, @t("count") Integer num, @t("since_id") String str2, @t("max_id") String str3, @t("include_entities") Boolean bool);
}
