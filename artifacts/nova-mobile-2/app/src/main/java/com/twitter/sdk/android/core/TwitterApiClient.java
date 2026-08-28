package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.TwitterApi;
import com.twitter.sdk.android.core.internal.network.OkHttpClientHelper;
import com.twitter.sdk.android.core.models.BindingValues;
import com.twitter.sdk.android.core.models.BindingValuesAdapter;
import com.twitter.sdk.android.core.models.SafeListAdapter;
import com.twitter.sdk.android.core.models.SafeMapAdapter;
import com.twitter.sdk.android.core.services.AccountService;
import com.twitter.sdk.android.core.services.CollectionService;
import com.twitter.sdk.android.core.services.ConfigurationService;
import com.twitter.sdk.android.core.services.FavoriteService;
import com.twitter.sdk.android.core.services.ListService;
import com.twitter.sdk.android.core.services.MediaService;
import com.twitter.sdk.android.core.services.SearchService;
import com.twitter.sdk.android.core.services.StatusesService;
import ja.f;
import ja.g;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.OkHttpClient;
import rd.r;
import sd.a;

/* loaded from: classes.dex */
public class TwitterApiClient {
    public final r retrofit;
    public final ConcurrentHashMap<Class, Object> services;

    public TwitterApiClient() {
        this(OkHttpClientHelper.getOkHttpClient(TwitterCore.getInstance().getGuestSessionProvider()), new TwitterApi());
    }

    private ConcurrentHashMap buildConcurrentMap() {
        return new ConcurrentHashMap();
    }

    private f buildGson() {
        return new g().d(new SafeListAdapter()).d(new SafeMapAdapter()).c(BindingValues.class, new BindingValuesAdapter()).b();
    }

    private r buildRetrofit(OkHttpClient okHttpClient, TwitterApi twitterApi) {
        return new r.b().f(okHttpClient).b(twitterApi.getBaseHostUrl()).a(a.b(buildGson())).d();
    }

    public AccountService getAccountService() {
        return (AccountService) getService(AccountService.class);
    }

    public CollectionService getCollectionService() {
        return (CollectionService) getService(CollectionService.class);
    }

    public ConfigurationService getConfigurationService() {
        return (ConfigurationService) getService(ConfigurationService.class);
    }

    public FavoriteService getFavoriteService() {
        return (FavoriteService) getService(FavoriteService.class);
    }

    public ListService getListService() {
        return (ListService) getService(ListService.class);
    }

    public MediaService getMediaService() {
        return (MediaService) getService(MediaService.class);
    }

    public SearchService getSearchService() {
        return (SearchService) getService(SearchService.class);
    }

    public <T> T getService(Class<T> cls) {
        if (!this.services.contains(cls)) {
            this.services.putIfAbsent(cls, this.retrofit.b(cls));
        }
        return (T) this.services.get(cls);
    }

    public StatusesService getStatusesService() {
        return (StatusesService) getService(StatusesService.class);
    }

    public TwitterApiClient(OkHttpClient okHttpClient) {
        this(OkHttpClientHelper.getCustomOkHttpClient(okHttpClient, TwitterCore.getInstance().getGuestSessionProvider()), new TwitterApi());
    }

    public TwitterApiClient(TwitterSession twitterSession) {
        this(OkHttpClientHelper.getOkHttpClient(twitterSession, TwitterCore.getInstance().getAuthConfig()), new TwitterApi());
    }

    public TwitterApiClient(TwitterSession twitterSession, OkHttpClient okHttpClient) {
        this(OkHttpClientHelper.getCustomOkHttpClient(okHttpClient, twitterSession, TwitterCore.getInstance().getAuthConfig()), new TwitterApi());
    }

    public TwitterApiClient(OkHttpClient okHttpClient, TwitterApi twitterApi) {
        this.services = buildConcurrentMap();
        this.retrofit = buildRetrofit(okHttpClient, twitterApi);
    }
}
