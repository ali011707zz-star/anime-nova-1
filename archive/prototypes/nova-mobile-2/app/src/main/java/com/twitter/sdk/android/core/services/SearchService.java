package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Search;
import com.twitter.sdk.android.core.services.params.Geocode;
import rd.b;
import td.f;
import td.t;

/* loaded from: classes.dex */
public interface SearchService {
    @f("/1.1/search/tweets.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<Search> tweets(@t("q") String str, @t(encoded = true, value = "geocode") Geocode geocode, @t("lang") String str2, @t("locale") String str3, @t("result_type") String str4, @t("count") Integer num, @t("until") String str5, @t("since_id") Long l10, @t("max_id") Long l11, @t("include_entities") Boolean bool);
}
