package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import com.twitter.sdk.android.core.internal.CommonUtils;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public abstract class EventsHandler<T> implements EventsStorageListener {
    public final Context context;
    public final ScheduledExecutorService executor;
    public EventsStrategy<T> strategy;

    public EventsHandler(Context context, EventsStrategy<T> eventsStrategy, EventsFilesManager eventsFilesManager, ScheduledExecutorService scheduledExecutorService) {
        this.context = context.getApplicationContext();
        this.executor = scheduledExecutorService;
        this.strategy = eventsStrategy;
        eventsFilesManager.registerRollOverListener(this);
    }

    public void disable() {
        executeAsync(new Runnable() { // from class: com.twitter.sdk.android.core.internal.scribe.EventsHandler.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    EventsHandler eventsHandler = EventsHandler.this;
                    EventsStrategy<T> eventsStrategy = eventsHandler.strategy;
                    eventsHandler.strategy = eventsHandler.getDisabledEventsStrategy();
                    eventsStrategy.deleteAllEvents();
                } catch (Exception e10) {
                    CommonUtils.logControlledError(EventsHandler.this.context, "Failed to disable events.", e10);
                }
            }
        });
    }

    public void executeAsync(Runnable runnable) {
        try {
            this.executor.submit(runnable);
        } catch (Exception e10) {
            CommonUtils.logControlledError(this.context, "Failed to submit events task", e10);
        }
    }

    public void executeSync(Runnable runnable) {
        try {
            this.executor.submit(runnable).get();
        } catch (Exception e10) {
            CommonUtils.logControlledError(this.context, "Failed to run events task", e10);
        }
    }

    public abstract EventsStrategy<T> getDisabledEventsStrategy();

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorageListener
    public void onRollOver(String str) {
        executeAsync(new Runnable() { // from class: com.twitter.sdk.android.core.internal.scribe.EventsHandler.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    EventsHandler.this.strategy.sendEvents();
                } catch (Exception e10) {
                    CommonUtils.logControlledError(EventsHandler.this.context, "Failed to send events files.", e10);
                }
            }
        });
    }

    public void recordEventAsync(final T t10, final boolean z10) {
        executeAsync(new Runnable() { // from class: com.twitter.sdk.android.core.internal.scribe.EventsHandler.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    EventsHandler.this.strategy.recordEvent(t10);
                    if (z10) {
                        EventsHandler.this.strategy.rollFileOver();
                    }
                } catch (Exception e10) {
                    CommonUtils.logControlledError(EventsHandler.this.context, "Failed to record event.", e10);
                }
            }
        });
    }

    public void recordEventSync(final T t10) {
        executeSync(new Runnable() { // from class: com.twitter.sdk.android.core.internal.scribe.EventsHandler.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    EventsHandler.this.strategy.recordEvent(t10);
                } catch (Exception e10) {
                    CommonUtils.logControlledError(EventsHandler.this.context, "Failed to record event", e10);
                }
            }
        });
    }
}
