package com.twitter.sdk.android.core.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.twitter.sdk.android.core.Twitter;

/* loaded from: classes.dex */
class AdvertisingInfoReflectionStrategy implements AdvertisingInfoStrategy {
    private static final String CLASS_NAME_ADVERTISING_ID_CLIENT = "com.google.android.gms.ads.identifier.AdvertisingIdClient";
    private static final String CLASS_NAME_ADVERTISING_ID_CLIENT_INFO = "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info";
    private static final String CLASS_NAME_GOOGLE_PLAY_SERVICES_UTILS = "com.google.android.gms.common.GooglePlayServicesUtil";
    private static final int GOOGLE_PLAY_SERVICES_SUCCESS_CODE = 0;
    private static final String METHOD_NAME_GET_ADVERTISING_ID_INFO = "getAdvertisingIdInfo";
    private static final String METHOD_NAME_GET_ID = "getId";
    private static final String METHOD_NAME_IS_GOOGLE_PLAY_SERVICES_AVAILABLE = "isGooglePlayServicesAvailable";
    private static final String METHOD_NAME_IS_LIMITED_AD_TRACKING_ENABLED = "isLimitAdTrackingEnabled";
    private final Context context;

    public AdvertisingInfoReflectionStrategy(Context context) {
        this.context = context.getApplicationContext();
    }

    private String getAdvertisingId() {
        try {
            return (String) AdvertisingIdClient.Info.class.getMethod(METHOD_NAME_GET_ID, new Class[0]).invoke(getInfo(), new Object[0]);
        } catch (Exception unused) {
            Twitter.getLogger().w("Twitter", "Could not call getId on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return null;
        }
    }

    private Object getInfo() {
        try {
            return AdvertisingIdClient.class.getMethod(METHOD_NAME_GET_ADVERTISING_ID_INFO, Context.class).invoke(null, this.context);
        } catch (Exception unused) {
            Twitter.getLogger().w("Twitter", "Could not call getAdvertisingIdInfo on com.google.android.gms.ads.identifier.AdvertisingIdClient");
            return null;
        }
    }

    private boolean isLimitAdTrackingEnabled() {
        try {
            return ((Boolean) AdvertisingIdClient.Info.class.getMethod(METHOD_NAME_IS_LIMITED_AD_TRACKING_ENABLED, new Class[0]).invoke(getInfo(), new Object[0])).booleanValue();
        } catch (Exception unused) {
            Twitter.getLogger().w("Twitter", "Could not call isLimitAdTrackingEnabled on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return false;
        }
    }

    @Override // com.twitter.sdk.android.core.internal.AdvertisingInfoStrategy
    public AdvertisingInfo getAdvertisingInfo() {
        if (isGooglePlayServiceAvailable(this.context)) {
            return new AdvertisingInfo(getAdvertisingId(), isLimitAdTrackingEnabled());
        }
        return null;
    }

    public boolean isGooglePlayServiceAvailable(Context context) {
        try {
            String str = GooglePlayServicesUtil.GMS_ERROR_DIALOG;
            return ((Integer) GooglePlayServicesUtil.class.getMethod(METHOD_NAME_IS_GOOGLE_PLAY_SERVICES_AVAILABLE, Context.class).invoke(null, context)).intValue() == 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
