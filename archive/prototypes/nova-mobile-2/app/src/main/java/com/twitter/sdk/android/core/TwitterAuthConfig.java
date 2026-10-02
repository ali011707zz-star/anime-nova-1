package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class TwitterAuthConfig implements Parcelable {
    public static final Parcelable.Creator<TwitterAuthConfig> CREATOR = new Parcelable.Creator<TwitterAuthConfig>() { // from class: com.twitter.sdk.android.core.TwitterAuthConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TwitterAuthConfig createFromParcel(Parcel parcel) {
            return new TwitterAuthConfig(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TwitterAuthConfig[] newArray(int i10) {
            return new TwitterAuthConfig[i10];
        }
    };
    public static final int DEFAULT_AUTH_REQUEST_CODE = 140;
    private final String consumerKey;
    private final String consumerSecret;

    public static String sanitizeAttribute(String str) {
        if (str != null) {
            return str.trim();
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getConsumerKey() {
        return this.consumerKey;
    }

    public String getConsumerSecret() {
        return this.consumerSecret;
    }

    public int getRequestCode() {
        return DEFAULT_AUTH_REQUEST_CODE;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.consumerKey);
        parcel.writeString(this.consumerSecret);
    }

    public TwitterAuthConfig(String str, String str2) {
        if (str != null && str2 != null) {
            this.consumerKey = sanitizeAttribute(str);
            this.consumerSecret = sanitizeAttribute(str2);
            return;
        }
        throw new IllegalArgumentException("TwitterAuthConfig must not be created with null consumer key or secret.");
    }

    private TwitterAuthConfig(Parcel parcel) {
        this.consumerKey = parcel.readString();
        this.consumerSecret = parcel.readString();
    }
}
