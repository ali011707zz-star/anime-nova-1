package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.internal.Logger;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class DataCollectionArbiter {
    private Boolean crashlyticsDataCollectionEnabled;
    public TaskCompletionSource<Void> dataCollectionEnabledTask;
    private final TaskCompletionSource<Void> dataCollectionExplicitlyApproved;
    private final FirebaseApp firebaseApp;
    private boolean setInManifest;
    private final SharedPreferences sharedPreferences;
    private final Object taskLock;
    public boolean taskResolved;

    public DataCollectionArbiter(FirebaseApp firebaseApp) {
        Object obj = new Object();
        this.taskLock = obj;
        this.dataCollectionEnabledTask = new TaskCompletionSource<>();
        this.taskResolved = false;
        this.setInManifest = false;
        this.dataCollectionExplicitlyApproved = new TaskCompletionSource<>();
        Context applicationContext = firebaseApp.getApplicationContext();
        this.firebaseApp = firebaseApp;
        this.sharedPreferences = CommonUtils.getSharedPrefs(applicationContext);
        Boolean dataCollectionValueFromSharedPreferences = getDataCollectionValueFromSharedPreferences();
        this.crashlyticsDataCollectionEnabled = dataCollectionValueFromSharedPreferences == null ? getDataCollectionValueFromManifest(applicationContext) : dataCollectionValueFromSharedPreferences;
        synchronized (obj) {
            if (isAutomaticDataCollectionEnabled()) {
                this.dataCollectionEnabledTask.trySetResult(null);
                this.taskResolved = true;
            }
        }
    }

    private Boolean getDataCollectionValueFromManifest(Context context) {
        Boolean readCrashlyticsDataCollectionEnabledFromManifest = readCrashlyticsDataCollectionEnabledFromManifest(context);
        if (readCrashlyticsDataCollectionEnabledFromManifest == null) {
            this.setInManifest = false;
            return null;
        }
        this.setInManifest = true;
        return Boolean.valueOf(Boolean.TRUE.equals(readCrashlyticsDataCollectionEnabledFromManifest));
    }

    private Boolean getDataCollectionValueFromSharedPreferences() {
        if (!this.sharedPreferences.contains("firebase_crashlytics_collection_enabled")) {
            return null;
        }
        this.setInManifest = false;
        return Boolean.valueOf(this.sharedPreferences.getBoolean("firebase_crashlytics_collection_enabled", true));
    }

    private void logDataCollectionState(boolean z10) {
        String str;
        String str2 = z10 ? "ENABLED" : "DISABLED";
        if (this.crashlyticsDataCollectionEnabled == null) {
            str = "global Firebase setting";
        } else {
            str = this.setInManifest ? "firebase_crashlytics_collection_enabled manifest flag" : "API";
        }
        Logger.getLogger().d(String.format("Crashlytics automatic data collection %s by %s.", str2, str));
    }

    private static Boolean readCrashlyticsDataCollectionEnabledFromManifest(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_crashlytics_collection_enabled")) {
                return null;
            }
            return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
        } catch (PackageManager.NameNotFoundException e10) {
            Logger.getLogger().e("Could not read data collection permission from manifest", e10);
            return null;
        }
    }

    public void grantDataCollectionPermission(boolean z10) {
        if (z10) {
            this.dataCollectionExplicitlyApproved.trySetResult(null);
            return;
        }
        throw new IllegalStateException("An invalid data collection token was used.");
    }

    public synchronized boolean isAutomaticDataCollectionEnabled() {
        boolean isDataCollectionDefaultEnabled;
        Boolean bool = this.crashlyticsDataCollectionEnabled;
        if (bool != null) {
            isDataCollectionDefaultEnabled = bool.booleanValue();
        } else {
            isDataCollectionDefaultEnabled = this.firebaseApp.isDataCollectionDefaultEnabled();
        }
        logDataCollectionState(isDataCollectionDefaultEnabled);
        return isDataCollectionDefaultEnabled;
    }

    public Task<Void> waitForAutomaticDataCollectionEnabled() {
        Task<Void> task;
        synchronized (this.taskLock) {
            task = this.dataCollectionEnabledTask.getTask();
        }
        return task;
    }

    public Task<Void> waitForDataCollectionPermission(Executor executor) {
        return Utils.race(executor, this.dataCollectionExplicitlyApproved.getTask(), waitForAutomaticDataCollectionEnabled());
    }
}
