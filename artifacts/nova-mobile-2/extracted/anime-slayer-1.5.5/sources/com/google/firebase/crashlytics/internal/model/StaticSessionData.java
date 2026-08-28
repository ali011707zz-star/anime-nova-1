package com.google.firebase.crashlytics.internal.model;

import com.google.auto.value.AutoValue;

@AutoValue
/* loaded from: classes.dex */
public abstract class StaticSessionData {

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class AppData {
        public static AppData create(String str, String str2, String str3, String str4, int i10, String str5) {
            return new AutoValue_StaticSessionData_AppData(str, str2, str3, str4, i10, str5);
        }

        public abstract String appIdentifier();

        public abstract int deliveryMechanism();

        public abstract String installUuid();

        public abstract String unityVersion();

        public abstract String versionCode();

        public abstract String versionName();
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class DeviceData {
        public static DeviceData create(int i10, String str, int i11, long j10, long j11, boolean z10, int i12, String str2, String str3) {
            return new AutoValue_StaticSessionData_DeviceData(i10, str, i11, j10, j11, z10, i12, str2, str3);
        }

        public abstract int arch();

        public abstract int availableProcessors();

        public abstract long diskSpace();

        public abstract boolean isEmulator();

        public abstract String manufacturer();

        public abstract String model();

        public abstract String modelClass();

        public abstract int state();

        public abstract long totalRam();
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class OsData {
        public static OsData create(String str, String str2, boolean z10) {
            return new AutoValue_StaticSessionData_OsData(str, str2, z10);
        }

        public abstract boolean isRooted();

        public abstract String osCodeName();

        public abstract String osRelease();
    }

    public static StaticSessionData create(AppData appData, OsData osData, DeviceData deviceData) {
        return new AutoValue_StaticSessionData(appData, osData, deviceData);
    }

    public abstract AppData appData();

    public abstract DeviceData deviceData();

    public abstract OsData osData();
}
