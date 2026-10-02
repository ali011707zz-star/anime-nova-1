package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
class ScribeHandler extends EventsHandler<ScribeEvent> {
    public ScribeHandler(Context context, EventsStrategy<ScribeEvent> eventsStrategy, EventsFilesManager eventsFilesManager, ScheduledExecutorService scheduledExecutorService) {
        super(context, eventsStrategy, eventsFilesManager, scheduledExecutorService);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsHandler
    public EventsStrategy<ScribeEvent> getDisabledEventsStrategy() {
        return new DisabledEventsStrategy();
    }

    public void scribe(ScribeEvent scribeEvent) {
        recordEventAsync(scribeEvent, false);
    }

    public void scribeAndFlush(ScribeEvent scribeEvent) {
        recordEventAsync(scribeEvent, true);
    }
}
