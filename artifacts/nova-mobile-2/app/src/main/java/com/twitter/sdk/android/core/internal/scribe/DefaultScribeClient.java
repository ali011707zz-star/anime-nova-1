package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.internal.ExecutorUtils;
import com.twitter.sdk.android.core.internal.IdManager;
import com.twitter.sdk.android.core.internal.scribe.ScribeEvent;
import ja.d;
import ja.f;
import ja.g;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public class DefaultScribeClient extends ScribeClient {
    private static final String DEBUG_BUILD = "debug";
    private static final String SCRIBE_PATH_TYPE = "sdk";
    private static final String SCRIBE_PATH_VERSION = "i";
    private static final String SCRIBE_URL = "https://syndication.twitter.com";
    private static volatile ScheduledExecutorService executor;
    private final String advertisingId;
    private final Context context;
    private final SessionManager<? extends Session<TwitterAuthToken>> sessionManager;

    public DefaultScribeClient(Context context, SessionManager<? extends Session<TwitterAuthToken>> sessionManager, GuestSessionProvider guestSessionProvider, IdManager idManager, ScribeConfig scribeConfig) {
        this(context, TwitterCore.getInstance().getAuthConfig(), sessionManager, guestSessionProvider, idManager, scribeConfig);
    }

    private static ScheduledExecutorService getExecutor() {
        if (executor == null) {
            synchronized (DefaultScribeClient.class) {
                if (executor == null) {
                    executor = ExecutorUtils.buildSingleThreadScheduledExecutorService("scribe");
                }
            }
        }
        return executor;
    }

    private static f getGson() {
        return new g().e(d.f9093i).b();
    }

    private String getLanguage() {
        return this.context.getResources().getConfiguration().locale.getLanguage();
    }

    public static ScribeConfig getScribeConfig(String str, String str2) {
        return new ScribeConfig(isEnabled(), getScribeUrl(SCRIBE_URL, ""), SCRIBE_PATH_VERSION, SCRIBE_PATH_TYPE, "", getUserAgent(str, str2), 100, ScribeConfig.DEFAULT_SEND_INTERVAL_SECONDS);
    }

    public static String getScribeUrl(String str, String str2) {
        return !TextUtils.isEmpty(str2) ? str2 : str;
    }

    public static String getUserAgent(String str, String str2) {
        return "TwitterKit/3.0 (Android " + Build.VERSION.SDK_INT + ") " + str + "/" + str2;
    }

    private static boolean isEnabled() {
        return true;
    }

    public Session getActiveSession() {
        return this.sessionManager.getActiveSession();
    }

    public long getScribeSessionId(Session session) {
        if (session != null) {
            return session.getId();
        }
        return 0L;
    }

    public void scribe(EventNamespace... eventNamespaceArr) {
        for (EventNamespace eventNamespace : eventNamespaceArr) {
            scribe(eventNamespace, Collections.emptyList());
        }
    }

    public DefaultScribeClient(Context context, TwitterAuthConfig twitterAuthConfig, SessionManager<? extends Session<TwitterAuthToken>> sessionManager, GuestSessionProvider guestSessionProvider, IdManager idManager, ScribeConfig scribeConfig) {
        super(context, getExecutor(), scribeConfig, new ScribeEvent.Transform(getGson()), twitterAuthConfig, sessionManager, guestSessionProvider, idManager);
        this.context = context;
        this.sessionManager = sessionManager;
        this.advertisingId = idManager.getAdvertisingId();
    }

    public void scribe(EventNamespace eventNamespace, List<ScribeItem> list) {
        scribe(ScribeEventFactory.newScribeEvent(eventNamespace, "", System.currentTimeMillis(), getLanguage(), this.advertisingId, list));
    }

    public void scribe(ScribeEvent scribeEvent) {
        super.scribe(scribeEvent, getScribeSessionId(getActiveSession()));
    }

    public void scribe(EventNamespace eventNamespace, String str) {
        scribe(ScribeEventFactory.newScribeEvent(eventNamespace, str, System.currentTimeMillis(), getLanguage(), this.advertisingId, Collections.emptyList()));
    }
}
