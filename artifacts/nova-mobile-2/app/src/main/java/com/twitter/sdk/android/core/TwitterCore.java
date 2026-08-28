package com.twitter.sdk.android.core;

import android.annotation.SuppressLint;
import android.content.Context;
import com.twitter.sdk.android.core.GuestSession;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.internal.SessionMonitor;
import com.twitter.sdk.android.core.internal.TwitterApi;
import com.twitter.sdk.android.core.internal.TwitterSessionVerifier;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import com.twitter.sdk.android.core.internal.persistence.PreferenceStoreImpl;
import com.twitter.sdk.android.core.internal.scribe.TwitterCoreScribeClientHolder;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class TwitterCore {
    public static final String KIT_SCRIBE_NAME = "TwitterCore";
    public static final String PREF_KEY_ACTIVE_GUEST_SESSION = "active_guestsession";
    public static final String PREF_KEY_ACTIVE_TWITTER_SESSION = "active_twittersession";
    public static final String PREF_KEY_GUEST_SESSION = "guestsession";
    public static final String PREF_KEY_TWITTER_SESSION = "twittersession";
    public static final String SESSION_PREF_FILE_NAME = "session_store";
    public static final String TAG = "Twitter";

    @SuppressLint({"StaticFieldLeak"})
    public static volatile TwitterCore instance;
    private final ConcurrentHashMap<Session, TwitterApiClient> apiClients;
    private final TwitterAuthConfig authConfig;
    private final Context context;
    private volatile TwitterApiClient guestClient;
    public SessionManager<GuestSession> guestSessionManager;
    private volatile GuestSessionProvider guestSessionProvider;
    public SessionMonitor<TwitterSession> sessionMonitor;
    public SessionManager<TwitterSession> twitterSessionManager;

    public TwitterCore(TwitterAuthConfig twitterAuthConfig) {
        this(twitterAuthConfig, new ConcurrentHashMap(), null);
    }

    private synchronized void createGuestClient() {
        if (this.guestClient == null) {
            this.guestClient = new TwitterApiClient();
        }
    }

    private synchronized void createGuestSessionProvider() {
        if (this.guestSessionProvider == null) {
            this.guestSessionProvider = new GuestSessionProvider(new OAuth2Service(this, new TwitterApi()), this.guestSessionManager);
        }
    }

    public static TwitterCore getInstance() {
        if (instance == null) {
            synchronized (TwitterCore.class) {
                if (instance == null) {
                    instance = new TwitterCore(Twitter.getInstance().getTwitterAuthConfig());
                    Twitter.getInstance().getExecutorService().execute(new Runnable() { // from class: com.twitter.sdk.android.core.TwitterCore.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TwitterCore.instance.doInBackground();
                        }
                    });
                }
            }
        }
        return instance;
    }

    private void setUpScribeClient() {
        TwitterCoreScribeClientHolder.initialize(this.context, getSessionManager(), getGuestSessionProvider(), Twitter.getInstance().getIdManager(), KIT_SCRIBE_NAME, getVersion());
    }

    public void addApiClient(TwitterSession twitterSession, TwitterApiClient twitterApiClient) {
        if (this.apiClients.containsKey(twitterSession)) {
            return;
        }
        this.apiClients.putIfAbsent(twitterSession, twitterApiClient);
    }

    public void addGuestApiClient(TwitterApiClient twitterApiClient) {
        if (this.guestClient == null) {
            createGuestClient(twitterApiClient);
        }
    }

    public void doInBackground() {
        this.twitterSessionManager.getActiveSession();
        this.guestSessionManager.getActiveSession();
        getGuestSessionProvider();
        setUpScribeClient();
        this.sessionMonitor.monitorActivityLifecycle(Twitter.getInstance().getActivityLifecycleManager());
    }

    public TwitterApiClient getApiClient() {
        TwitterSession activeSession = this.twitterSessionManager.getActiveSession();
        if (activeSession == null) {
            return getGuestApiClient();
        }
        return getApiClient(activeSession);
    }

    public TwitterAuthConfig getAuthConfig() {
        return this.authConfig;
    }

    public TwitterApiClient getGuestApiClient() {
        if (this.guestClient == null) {
            createGuestClient();
        }
        return this.guestClient;
    }

    public GuestSessionProvider getGuestSessionProvider() {
        if (this.guestSessionProvider == null) {
            createGuestSessionProvider();
        }
        return this.guestSessionProvider;
    }

    public String getIdentifier() {
        return "com.twitter.sdk.android:twitter-core";
    }

    public SessionManager<TwitterSession> getSessionManager() {
        return this.twitterSessionManager;
    }

    public String getVersion() {
        return "3.0.0.7";
    }

    public TwitterCore(TwitterAuthConfig twitterAuthConfig, ConcurrentHashMap<Session, TwitterApiClient> concurrentHashMap, TwitterApiClient twitterApiClient) {
        this.authConfig = twitterAuthConfig;
        this.apiClients = concurrentHashMap;
        this.guestClient = twitterApiClient;
        Context context = Twitter.getInstance().getContext(getIdentifier());
        this.context = context;
        this.twitterSessionManager = new PersistedSessionManager(new PreferenceStoreImpl(context, SESSION_PREF_FILE_NAME), new TwitterSession.Serializer(), PREF_KEY_ACTIVE_TWITTER_SESSION, PREF_KEY_TWITTER_SESSION);
        this.guestSessionManager = new PersistedSessionManager(new PreferenceStoreImpl(context, SESSION_PREF_FILE_NAME), new GuestSession.Serializer(), PREF_KEY_ACTIVE_GUEST_SESSION, PREF_KEY_GUEST_SESSION);
        this.sessionMonitor = new SessionMonitor<>(this.twitterSessionManager, Twitter.getInstance().getExecutorService(), new TwitterSessionVerifier());
    }

    private synchronized void createGuestClient(TwitterApiClient twitterApiClient) {
        if (this.guestClient == null) {
            this.guestClient = twitterApiClient;
        }
    }

    public TwitterApiClient getApiClient(TwitterSession twitterSession) {
        if (!this.apiClients.containsKey(twitterSession)) {
            this.apiClients.putIfAbsent(twitterSession, new TwitterApiClient(twitterSession));
        }
        return this.apiClients.get(twitterSession);
    }
}
