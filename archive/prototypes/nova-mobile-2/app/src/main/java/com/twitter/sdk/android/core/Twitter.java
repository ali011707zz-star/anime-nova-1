package com.twitter.sdk.android.core;

import android.annotation.SuppressLint;
import android.content.Context;
import com.twitter.sdk.android.core.TwitterConfig;
import com.twitter.sdk.android.core.internal.ActivityLifecycleManager;
import com.twitter.sdk.android.core.internal.CommonUtils;
import com.twitter.sdk.android.core.internal.ExecutorUtils;
import com.twitter.sdk.android.core.internal.IdManager;
import java.io.File;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class Twitter {
    private static final String CONSUMER_KEY = "com.twitter.sdk.android.CONSUMER_KEY";
    private static final String CONSUMER_SECRET = "com.twitter.sdk.android.CONSUMER_SECRET";
    public static final Logger DEFAULT_LOGGER = new DefaultLogger();
    private static final String NOT_INITIALIZED_MESSAGE = "Must initialize Twitter before using getInstance()";
    public static final String TAG = "Twitter";

    @SuppressLint({"StaticFieldLeak"})
    public static volatile Twitter instance;
    private final Context context;
    private final boolean debug;
    private final ExecutorService executorService;
    private final IdManager idManager;
    private final ActivityLifecycleManager lifecycleManager;
    private final Logger logger;
    private final TwitterAuthConfig twitterAuthConfig;

    private Twitter(TwitterConfig twitterConfig) {
        Context context = twitterConfig.context;
        this.context = context;
        this.idManager = new IdManager(context);
        this.lifecycleManager = new ActivityLifecycleManager(context);
        TwitterAuthConfig twitterAuthConfig = twitterConfig.twitterAuthConfig;
        if (twitterAuthConfig == null) {
            this.twitterAuthConfig = new TwitterAuthConfig(CommonUtils.getStringResourceValue(context, CONSUMER_KEY, ""), CommonUtils.getStringResourceValue(context, CONSUMER_SECRET, ""));
        } else {
            this.twitterAuthConfig = twitterAuthConfig;
        }
        ExecutorService executorService = twitterConfig.executorService;
        if (executorService == null) {
            this.executorService = ExecutorUtils.buildThreadPoolExecutorService("twitter-worker");
        } else {
            this.executorService = executorService;
        }
        Logger logger = twitterConfig.logger;
        if (logger == null) {
            this.logger = DEFAULT_LOGGER;
        } else {
            this.logger = logger;
        }
        Boolean bool = twitterConfig.debug;
        if (bool == null) {
            this.debug = false;
        } else {
            this.debug = bool.booleanValue();
        }
    }

    public static void checkInitialized() {
        if (instance == null) {
            throw new IllegalStateException(NOT_INITIALIZED_MESSAGE);
        }
    }

    public static synchronized Twitter createTwitter(TwitterConfig twitterConfig) {
        synchronized (Twitter.class) {
            if (instance == null) {
                instance = new Twitter(twitterConfig);
                return instance;
            }
            return instance;
        }
    }

    public static Twitter getInstance() {
        checkInitialized();
        return instance;
    }

    public static Logger getLogger() {
        if (instance == null) {
            return DEFAULT_LOGGER;
        }
        return instance.logger;
    }

    public static void initialize(Context context) {
        createTwitter(new TwitterConfig.Builder(context).build());
    }

    public static boolean isDebug() {
        if (instance == null) {
            return false;
        }
        return instance.debug;
    }

    public ActivityLifecycleManager getActivityLifecycleManager() {
        return this.lifecycleManager;
    }

    public Context getContext(String str) {
        return new TwitterContext(this.context, str, ".TwitterKit" + File.separator + str);
    }

    public ExecutorService getExecutorService() {
        return this.executorService;
    }

    public IdManager getIdManager() {
        return this.idManager;
    }

    public TwitterAuthConfig getTwitterAuthConfig() {
        return this.twitterAuthConfig;
    }

    public static void initialize(TwitterConfig twitterConfig) {
        createTwitter(twitterConfig);
    }
}
