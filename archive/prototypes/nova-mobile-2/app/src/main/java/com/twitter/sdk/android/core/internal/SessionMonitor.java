package com.twitter.sdk.android.core.internal;

import android.app.Activity;
import com.google.android.material.datepicker.UtcDates;
import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.internal.ActivityLifecycleManager;
import java.util.Calendar;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class SessionMonitor<T extends Session> {
    private final ExecutorService executorService;
    public final MonitorState monitorState;
    private final SessionManager<T> sessionManager;
    private final SessionVerifier sessionVerifier;
    private final SystemCurrentTimeProvider time;

    /* loaded from: classes.dex */
    public static class MonitorState {
        private static final long TIME_THRESHOLD_IN_MILLIS = 21600000;
        public long lastVerification;
        private final Calendar utcCalendar = Calendar.getInstance(TimeZone.getTimeZone(UtcDates.UTC));
        public boolean verifying;

        private boolean isOnSameDate(long j10, long j11) {
            this.utcCalendar.setTimeInMillis(j10);
            int i10 = this.utcCalendar.get(6);
            int i11 = this.utcCalendar.get(1);
            this.utcCalendar.setTimeInMillis(j11);
            return i10 == this.utcCalendar.get(6) && i11 == this.utcCalendar.get(1);
        }

        public synchronized boolean beginVerification(long j10) {
            long j11 = this.lastVerification;
            boolean z10 = j10 - j11 > TIME_THRESHOLD_IN_MILLIS;
            boolean z11 = !isOnSameDate(j10, j11);
            if (this.verifying || !(z10 || z11)) {
                return false;
            }
            this.verifying = true;
            return true;
        }

        public synchronized void endVerification(long j10) {
            this.verifying = false;
            this.lastVerification = j10;
        }
    }

    public SessionMonitor(SessionManager<T> sessionManager, ExecutorService executorService, SessionVerifier<T> sessionVerifier) {
        this(sessionManager, new SystemCurrentTimeProvider(), executorService, new MonitorState(), sessionVerifier);
    }

    public void monitorActivityLifecycle(ActivityLifecycleManager activityLifecycleManager) {
        activityLifecycleManager.registerCallbacks(new ActivityLifecycleManager.Callbacks() { // from class: com.twitter.sdk.android.core.internal.SessionMonitor.1
            @Override // com.twitter.sdk.android.core.internal.ActivityLifecycleManager.Callbacks
            public void onActivityStarted(Activity activity) {
                SessionMonitor.this.triggerVerificationIfNecessary();
            }
        });
    }

    public void triggerVerificationIfNecessary() {
        if (this.sessionManager.getActiveSession() != null && this.monitorState.beginVerification(this.time.getCurrentTimeMillis())) {
            this.executorService.submit(new Runnable() { // from class: com.twitter.sdk.android.core.internal.SessionMonitor.2
                @Override // java.lang.Runnable
                public void run() {
                    SessionMonitor.this.verifyAll();
                }
            });
        }
    }

    public void verifyAll() {
        Iterator<T> it2 = this.sessionManager.getSessionMap().values().iterator();
        while (it2.hasNext()) {
            this.sessionVerifier.verifySession(it2.next());
        }
        this.monitorState.endVerification(this.time.getCurrentTimeMillis());
    }

    public SessionMonitor(SessionManager<T> sessionManager, SystemCurrentTimeProvider systemCurrentTimeProvider, ExecutorService executorService, MonitorState monitorState, SessionVerifier sessionVerifier) {
        this.time = systemCurrentTimeProvider;
        this.sessionManager = sessionManager;
        this.executorService = executorService;
        this.monitorState = monitorState;
        this.sessionVerifier = sessionVerifier;
    }
}
