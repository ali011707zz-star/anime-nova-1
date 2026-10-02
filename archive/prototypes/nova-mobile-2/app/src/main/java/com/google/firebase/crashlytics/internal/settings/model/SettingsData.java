package com.google.firebase.crashlytics.internal.settings.model;

/* loaded from: classes.dex */
public class SettingsData implements Settings {
    public final AppSettingsData appData;
    public final int cacheDuration;
    public final long expiresAtMillis;
    public final FeaturesSettingsData featuresData;
    public final SessionSettingsData sessionData;
    public final int settingsVersion;

    public SettingsData(long j10, AppSettingsData appSettingsData, SessionSettingsData sessionSettingsData, FeaturesSettingsData featuresSettingsData, int i10, int i11) {
        this.expiresAtMillis = j10;
        this.appData = appSettingsData;
        this.sessionData = sessionSettingsData;
        this.featuresData = featuresSettingsData;
        this.settingsVersion = i10;
        this.cacheDuration = i11;
    }

    public AppSettingsData getAppSettingsData() {
        return this.appData;
    }

    public long getExpiresAtMillis() {
        return this.expiresAtMillis;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.model.Settings
    public FeaturesSettingsData getFeaturesData() {
        return this.featuresData;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.model.Settings
    public SessionSettingsData getSessionData() {
        return this.sessionData;
    }

    public boolean isExpired(long j10) {
        return this.expiresAtMillis < j10;
    }
}
