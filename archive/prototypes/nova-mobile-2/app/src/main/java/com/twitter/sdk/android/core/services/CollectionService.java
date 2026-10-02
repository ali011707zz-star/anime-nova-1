package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.TwitterCollection;
import rd.b;
import td.f;
import td.t;

/* loaded from: classes.dex */
public interface CollectionService {
    @f("/1.1/collections/entries.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<TwitterCollection> collection(@t("id") String str, @t("count") Integer num, @t("max_position") Long l10, @t("min_position") Long l11);
}
