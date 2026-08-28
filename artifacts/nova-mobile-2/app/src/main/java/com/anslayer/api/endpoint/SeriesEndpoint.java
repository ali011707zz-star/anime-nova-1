package com.anslayer.api.endpoint;

import ac.d;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.apache.http.client.methods.HttpDelete;
import p4.k;
import p4.l;
import p4.p;
import rd.b;
import td.c;
import td.e;
import td.f;
import td.h;
import td.o;
import td.t;

/* compiled from: SeriesEndpoint.kt */
/* loaded from: classes.dex */
public interface SeriesEndpoint {

    /* compiled from: SeriesEndpoint.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public static /* synthetic */ b a(SeriesEndpoint seriesEndpoint, long j10, String str, String str2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: seriesDetails");
            }
            if ((i10 & 2) != 0) {
                str = "No";
            }
            if ((i10 & 4) != 0) {
                str2 = "Yes";
            }
            return seriesEndpoint.seriesDetails(j10, str, str2);
        }
    }

    @e
    @o("anime/save-anime-rating")
    b<ResponseBody> addAnimeRating(@c("anime_id") String str, @c("anime_rating") Integer num, @c("story_rating_by_user") Integer num2, @c("art_rating_by_user") Integer num3, @c("characters_rating_by_user") Integer num4, @c("ost_rating_by_user") Integer num5);

    @e
    @o("animes/add-content-rating")
    Object addContentRating(@c("anime_id") long j10, @c("content_type") String str, @c("level") int i10, d<? super l> dVar);

    @e
    @o("episode/save-episode-rating")
    b<ResponseBody> addEpisodeRating(@c("episode_id") String str, @c("episode_rating") Integer num);

    @e
    @o("episode/save-episode-rating")
    Object addEpisodeRatingV2(@c("episode_id") String str, @c("episode_rating") Integer num, d<? super ResponseBody> dVar);

    @e
    @o("episode/save-episode-to-watched-history")
    b<ResponseBody> addEpisodeToWatchHistory(@c("episode_id") long j10);

    @e
    @o("episode/save-episode-to-watched-history")
    Object addEpisodeToWatchHistoryV2(@c("episode_id") long j10, d<? super ResponseBody> dVar);

    @e
    @o("anime/save-anime-to-dropped")
    Object addToDropped(@c("anime_id") String str, d<? super ResponseBody> dVar);

    @e
    @o("anime/save-anime-to-favorites")
    b<ResponseBody> addToFavourites(@c("anime_id") Long l10);

    @e
    @o("anime/save-anime-to-on-hold")
    Object addToOnHold(@c("anime_id") String str, d<? super ResponseBody> dVar);

    @e
    @o("anime/save-anime-to-plan-to-watch")
    Object addToPlanToWatch(@c("anime_id") String str, d<? super ResponseBody> dVar);

    @e
    @o("anime/save-anime-to-watched")
    Object addToWatched(@c("anime_id") String str, d<? super ResponseBody> dVar);

    @e
    @o("anime/save-anime-to-watching")
    Object addToWatching(@c("anime_id") String str, d<? super ResponseBody> dVar);

    @f("animes/get-actors-details")
    Object animeCharacterRelationMore(@t("actor_id") int i10, @t("json") String str, d<? super n4.a> dVar);

    @f("animes/get-anime-characters")
    Object animeCharacters(@t("json") String str, d<? super p4.d> dVar);

    @f("animes/get-top-favorite-characters")
    Object animeCharactersFav(@t("json") String str, d<? super n4.b> dVar);

    @f("animes/get-anime-characters")
    Object animeCharactersMore(@t("json") String str, d<? super n4.b> dVar);

    @f("animes/get-anime-characters")
    Object animeStaffMore(@t("json") String str, d<? super n4.e> dVar);

    @e
    @o("animes/favorite-character")
    Object favoriteCharacter(@c("character_id") int i10, d<? super ResponseBody> dVar);

    @f("animes/get-actors-details")
    Object getActorDetails(@t("actor_id") int i10, d<? super p4.b> dVar);

    @f("animes/get-anime-stats")
    Object getAnimeStats(@t("anime_id") long j10, d<? super l4.c> dVar);

    @f("animes/get-characters-details")
    Object getCharacterDetails(@t("character_id") int i10, d<? super p4.f> dVar);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "animes/remove-content-rating")
    Object removeContentRating(@c("anime_id") long j10, @c("content_type") String str, d<? super l> dVar);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "episode/delete-episode-from-watched-history")
    b<ResponseBody> removeEpisodeFromWatchHistory(@c("episode_ids") String str);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-dropped")
    b<ResponseBody> removeFromDropped(@c("anime_ids") String str);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-dropped")
    Object removeFromDroppedV2(@c("anime_ids") String str, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-favorites")
    b<ResponseBody> removeFromFavourites(@c("anime_ids") String str);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-on-hold")
    b<ResponseBody> removeFromOnHold(@c("anime_ids") String str);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-on-hold")
    Object removeFromOnHoldV2(@c("anime_ids") String str, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-plan-to-watch")
    b<ResponseBody> removeFromPlanToWatch(@c("anime_ids") String str);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-plan-to-watch")
    Object removeFromPlanToWatchV2(@c("anime_ids") String str, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-watched-history")
    b<ResponseBody> removeFromWatchHistory(@c("anime_ids") String str);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-watched")
    b<ResponseBody> removeFromWatched(@c("anime_ids") String str);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-watched")
    Object removeFromWatchedV2(@c("anime_ids") String str, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-watching")
    b<ResponseBody> removeFromWatching(@c("anime_ids") String str);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "anime/delete-anime-from-watching")
    Object removeFromWatchingV2(@c("anime_ids") String str, d<? super ResponseBody> dVar);

    @f("anime/get-anime-details")
    b<n4.c<p>> seriesDetails(@t("anime_id") long j10, @t("fetch_episodes") String str, @t("more_info") String str2);

    @f("episodes/get-episodes")
    b<n4.c<n4.d<List<k>>>> seriesEpisodes(@t("json") String str);

    @e
    @o("episodes/get-episodes-new")
    Object seriesEpisodesPost(@c("inf") String str, @c("json") String str2, d<? super n4.c<n4.d<List<k>>>> dVar);

    @f("animes/get-anime-dropdowns")
    b<n4.c<o4.c>> seriesFilters();

    @f("animes/get-published-animes")
    b<n4.c<n4.d<List<p>>>> seriesPublished(@t("json") String str);

    @f("animes/get-published-animes")
    Object seriesPublishedV2(@t("json") String str, d<? super n4.c<n4.d<List<p>>>> dVar);

    @f("animes/get-published-animes")
    b<n4.c<n4.d<Map<String, List<p>>>>> seriesSchedule(@t("json") String str);

    @f("animes/get-published-animes")
    Object seriesScheduleV2(@t("json") String str, d<? super n4.c<n4.d<Map<String, List<p>>>>> dVar);

    @f("anime/get-anime-status")
    b<n4.c<Object>> seriesStatus(@t("anime_id") long j10);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "animes/un-favorite-character")
    Object unFavoriteCharacter(@c("character_id") int i10, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "animes/un-favorite-character")
    b<ResponseBody> unFavoriteCharacterV2(@c("character_id") String str);

    @f("animes/get-favorite-characters")
    Object userCharactersFav(@t("json") String str, d<? super n4.b> dVar);
}
