package com.google.firebase.crashlytics.internal.settings.model;

/* loaded from: classes.dex */
public class SessionSettingsData {
    public final int maxCompleteSessionsCount;
    public final int maxCustomExceptionEvents;

    public SessionSettingsData(int i10, int i11) {
        this.maxCustomExceptionEvents = i10;
        this.maxCompleteSessionsCount = i11;
    }
}
