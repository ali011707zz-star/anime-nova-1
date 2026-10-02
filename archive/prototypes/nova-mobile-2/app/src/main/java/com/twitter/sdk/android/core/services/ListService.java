package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
import rd.b;
import td.f;
import td.t;

/* loaded from: classes.dex */
public interface ListService {
    @f("/1.1/lists/statuses.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    b<List<Tweet>> statuses(@t("list_id") Long l10, @t("slug") String str, @t("owner_screen_name") String str2, @t("owner_id") Long l11, @t("since_id") Long l12, @t("max_id") Long l13, @t("count") Integer num, @t("include_entities") Boolean bool, @t("include_rts") Boolean bool2);
}
