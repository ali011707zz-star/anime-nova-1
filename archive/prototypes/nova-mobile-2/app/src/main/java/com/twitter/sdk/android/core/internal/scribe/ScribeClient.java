package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.CommonUtils;
import com.twitter.sdk.android.core.internal.IdManager;
import com.twitter.sdk.android.core.internal.SystemCurrentTimeProvider;
import com.twitter.sdk.android.core.internal.persistence.FileStoreImpl;
import com.twitter.sdk.android.core.internal.scribe.ScribeEvent;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public class ScribeClient {
    private static final String STORAGE_DIR_BASE = "_se_to_send";
    private static final String WORKING_FILENAME_BASE = "_se.tap";
    private final TwitterAuthConfig authConfig;
    private final Context context;
    private final ScheduledExecutorService executor;
    private final GuestSessionProvider guestSessionProvider;
    private final IdManager idManager;
    private final ScribeConfig scribeConfig;
    public final ConcurrentHashMap<Long, ScribeHandler> scribeHandlers = new ConcurrentHashMap<>(2);
    private final SessionManager<? extends Session<TwitterAuthToken>> sessionManager;
    private final ScribeEvent.Transform transform;

    public ScribeClient(Context context, ScheduledExecutorService scheduledExecutorService, ScribeConfig scribeConfig, ScribeEvent.Transform transform, TwitterAuthConfig twitterAuthConfig, SessionManager<? extends Session<TwitterAuthToken>> sessionManager, GuestSessionProvider guestSessionProvider, IdManager idManager) {
        this.context = context;
        this.executor = scheduledExecutorService;
        this.scribeConfig = scribeConfig;
        this.transform = transform;
        this.authConfig = twitterAuthConfig;
        this.sessionManager = sessionManager;
        this.guestSessionProvider = guestSessionProvider;
        this.idManager = idManager;
    }

    private ScribeHandler newScribeHandler(long j10) throws IOException {
        Context context = this.context;
        ScribeFilesManager scribeFilesManager = new ScribeFilesManager(this.context, this.transform, new SystemCurrentTimeProvider(), new QueueFileEventStorage(context, new FileStoreImpl(context).getFilesDir(), getWorkingFileNameForOwner(j10), getStorageDirForOwner(j10)), this.scribeConfig.maxFilesToKeep);
        return new ScribeHandler(this.context, getScribeStrategy(j10, scribeFilesManager), scribeFilesManager, this.executor);
    }

    public ScribeHandler getScribeHandler(long j10) throws IOException {
        if (!this.scribeHandlers.containsKey(Long.valueOf(j10))) {
            this.scribeHandlers.putIfAbsent(Long.valueOf(j10), newScribeHandler(j10));
        }
        return this.scribeHandlers.get(Long.valueOf(j10));
    }

    public EventsStrategy<ScribeEvent> getScribeStrategy(long j10, ScribeFilesManager scribeFilesManager) {
        if (this.scribeConfig.isEnabled) {
            CommonUtils.logControlled(this.context, "Scribe enabled");
            return new EnabledScribeStrategy(this.context, this.executor, scribeFilesManager, this.scribeConfig, new ScribeFilesSender(this.context, this.scribeConfig, j10, this.authConfig, this.sessionManager, this.guestSessionProvider, this.executor, this.idManager));
        }
        CommonUtils.logControlled(this.context, "Scribe disabled");
        return new DisabledEventsStrategy();
    }

    public String getStorageDirForOwner(long j10) {
        return j10 + STORAGE_DIR_BASE;
    }

    public String getWorkingFileNameForOwner(long j10) {
        return j10 + WORKING_FILENAME_BASE;
    }

    public boolean scribe(ScribeEvent scribeEvent, long j10) {
        try {
            getScribeHandler(j10).scribe(scribeEvent);
            return true;
        } catch (IOException e10) {
            CommonUtils.logControlledError(this.context, "Failed to scribe event", e10);
            return false;
        }
    }

    public boolean scribeAndFlush(ScribeEvent scribeEvent, long j10) {
        try {
            getScribeHandler(j10).scribeAndFlush(scribeEvent);
            return true;
        } catch (IOException e10) {
            CommonUtils.logControlledError(this.context, "Failed to scribe event", e10);
            return false;
        }
    }
}
