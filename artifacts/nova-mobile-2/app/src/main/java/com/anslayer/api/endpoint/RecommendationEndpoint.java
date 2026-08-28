package com.anslayer.api.endpoint;

import ac.d;
import java.util.List;
import okhttp3.ResponseBody;
import org.apache.http.client.methods.HttpDelete;
import rd.b;
import td.c;
import td.e;
import td.f;
import td.h;
import td.o;
import u4.a;
import wc.t;

/* compiled from: RecommendationEndpoint.kt */
/* loaded from: classes.dex */
public interface RecommendationEndpoint {
    @e
    @o("recommendations/create-recommendation")
    Object createRecommendation(@c("anime_id") long j10, @c("recommended_anime_id") long j11, @c("recommendation_comments") String str, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = t.f15537a, method = HttpDelete.METHOD_NAME, path = "recommendations/delete-user-recommendation")
    Object deleteRecommendation(@c("anime_recommendation_id") long j10, d<? super ResponseBody> dVar);

    @f("recommendations/get-published-recommendations")
    b<n4.c<n4.d<List<a>>>> getRecommendations(@td.t("json") String str);

    @f("recommendations/get-published-recommendations")
    Object getRecommendationsV2(@td.t("json") String str, d<? super n4.c<n4.d<List<a>>>> dVar);

    @e
    @o("recommendations/anime-recommendation-like")
    b<ResponseBody> likeAnimeRecommendation(@c("anime_recommendation_id") long j10);
}
