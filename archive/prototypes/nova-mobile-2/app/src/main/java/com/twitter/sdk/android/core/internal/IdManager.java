package com.twitter.sdk.android.core.internal;

import android.content.Context;
import android.os.Build;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.internal.persistence.PreferenceStore;
import com.twitter.sdk.android.core.internal.persistence.PreferenceStoreImpl;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class IdManager {
    public static final String ADVERTISING_PREFERENCES = "com.twitter.sdk.android.AdvertisingPreferences";
    public static final String COLLECT_IDENTIFIERS_ENABLED = "com.twitter.sdk.android.COLLECT_IDENTIFIERS_ENABLED";
    public static final String PREFKEY_INSTALLATION_UUID = "installation_uuid";
    public AdvertisingInfo advertisingInfo;
    public AdvertisingInfoProvider advertisingInfoProvider;
    private final String appIdentifier;
    private final boolean collectHardwareIds;
    public boolean fetchedAdvertisingInfo;
    private final ReentrantLock installationIdLock;
    private final PreferenceStore preferenceStore;
    private static final Pattern ID_PATTERN = Pattern.compile("[^\\p{Alnum}]");
    private static final String FORWARD_SLASH_REGEX = Pattern.quote("/");

    public IdManager(Context context) {
        this(context, new PreferenceStoreImpl(context, ADVERTISING_PREFERENCES));
    }

    private String createInstallationUUID() {
        this.installationIdLock.lock();
        try {
            String string = this.preferenceStore.get().getString(PREFKEY_INSTALLATION_UUID, null);
            if (string == null) {
                string = formatId(UUID.randomUUID().toString());
                PreferenceStore preferenceStore = this.preferenceStore;
                preferenceStore.save(preferenceStore.edit().putString(PREFKEY_INSTALLATION_UUID, string));
            }
            return string;
        } finally {
            this.installationIdLock.unlock();
        }
    }

    private String formatId(String str) {
        if (str == null) {
            return null;
        }
        return ID_PATTERN.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    private String removeForwardSlashesIn(String str) {
        return str.replaceAll(FORWARD_SLASH_REGEX, "");
    }

    public String getAdvertisingId() {
        AdvertisingInfo advertisingInfo;
        if (!this.collectHardwareIds || (advertisingInfo = getAdvertisingInfo()) == null) {
            return null;
        }
        return advertisingInfo.advertisingId;
    }

    public synchronized AdvertisingInfo getAdvertisingInfo() {
        if (!this.fetchedAdvertisingInfo) {
            this.advertisingInfo = this.advertisingInfoProvider.getAdvertisingInfo();
            this.fetchedAdvertisingInfo = true;
        }
        return this.advertisingInfo;
    }

    public String getAppIdentifier() {
        return this.appIdentifier;
    }

    public String getDeviceUUID() {
        if (!this.collectHardwareIds) {
            return "";
        }
        String string = this.preferenceStore.get().getString(PREFKEY_INSTALLATION_UUID, null);
        return string == null ? createInstallationUUID() : string;
    }

    public String getModelName() {
        return String.format(Locale.US, "%s/%s", removeForwardSlashesIn(Build.MANUFACTURER), removeForwardSlashesIn(Build.MODEL));
    }

    public String getOsBuildVersionString() {
        return removeForwardSlashesIn(Build.VERSION.INCREMENTAL);
    }

    public String getOsDisplayVersionString() {
        return removeForwardSlashesIn(Build.VERSION.RELEASE);
    }

    public String getOsVersionString() {
        return getOsDisplayVersionString() + "/" + getOsBuildVersionString();
    }

    public Boolean isLimitAdTrackingEnabled() {
        AdvertisingInfo advertisingInfo;
        if (!this.collectHardwareIds || (advertisingInfo = getAdvertisingInfo()) == null) {
            return null;
        }
        return Boolean.valueOf(advertisingInfo.limitAdTrackingEnabled);
    }

    public IdManager(Context context, PreferenceStore preferenceStore) {
        this(context, preferenceStore, new AdvertisingInfoProvider(context, preferenceStore));
    }

    public IdManager(Context context, PreferenceStore preferenceStore, AdvertisingInfoProvider advertisingInfoProvider) {
        this.installationIdLock = new ReentrantLock();
        if (context != null) {
            this.appIdentifier = context.getPackageName();
            this.advertisingInfoProvider = advertisingInfoProvider;
            this.preferenceStore = preferenceStore;
            boolean booleanResourceValue = CommonUtils.getBooleanResourceValue(context, COLLECT_IDENTIFIERS_ENABLED, true);
            this.collectHardwareIds = booleanResourceValue;
            if (booleanResourceValue) {
                return;
            }
            Twitter.getLogger().d("Twitter", "Device ID collection disabled for " + context.getPackageName());
            return;
        }
        throw new IllegalArgumentException("appContext must not be null");
    }
}
