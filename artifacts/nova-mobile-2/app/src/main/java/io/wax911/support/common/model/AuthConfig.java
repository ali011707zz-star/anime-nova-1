package io.wax911.support.common.model;

import jc.g;
import jc.l;

/* compiled from: AuthConfig.kt */
/* loaded from: classes.dex */
public final class AuthConfig {
    private final String facebookAppId;
    private final String googleWebClientId;
    private final String instagramClientId;
    private final String instagramClientSecret;
    private final String instagramRedirectUrl;
    private final String twitterConsumerKey;
    private final String twitterConsumerSecret;

    public AuthConfig() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public AuthConfig(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        l.f(str, "facebookAppId");
        l.f(str2, "googleWebClientId");
        l.f(str3, "twitterConsumerKey");
        l.f(str4, "twitterConsumerSecret");
        l.f(str5, "instagramClientId");
        l.f(str6, "instagramClientSecret");
        l.f(str7, "instagramRedirectUrl");
        this.facebookAppId = str;
        this.googleWebClientId = str2;
        this.twitterConsumerKey = str3;
        this.twitterConsumerSecret = str4;
        this.instagramClientId = str5;
        this.instagramClientSecret = str6;
        this.instagramRedirectUrl = str7;
    }

    public static /* synthetic */ AuthConfig copy$default(AuthConfig authConfig, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = authConfig.facebookAppId;
        }
        if ((i10 & 2) != 0) {
            str2 = authConfig.googleWebClientId;
        }
        String str8 = str2;
        if ((i10 & 4) != 0) {
            str3 = authConfig.twitterConsumerKey;
        }
        String str9 = str3;
        if ((i10 & 8) != 0) {
            str4 = authConfig.twitterConsumerSecret;
        }
        String str10 = str4;
        if ((i10 & 16) != 0) {
            str5 = authConfig.instagramClientId;
        }
        String str11 = str5;
        if ((i10 & 32) != 0) {
            str6 = authConfig.instagramClientSecret;
        }
        String str12 = str6;
        if ((i10 & 64) != 0) {
            str7 = authConfig.instagramRedirectUrl;
        }
        return authConfig.copy(str, str8, str9, str10, str11, str12, str7);
    }

    public final String component1() {
        return this.facebookAppId;
    }

    public final String component2() {
        return this.googleWebClientId;
    }

    public final String component3() {
        return this.twitterConsumerKey;
    }

    public final String component4() {
        return this.twitterConsumerSecret;
    }

    public final String component5() {
        return this.instagramClientId;
    }

    public final String component6() {
        return this.instagramClientSecret;
    }

    public final String component7() {
        return this.instagramRedirectUrl;
    }

    public final AuthConfig copy(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        l.f(str, "facebookAppId");
        l.f(str2, "googleWebClientId");
        l.f(str3, "twitterConsumerKey");
        l.f(str4, "twitterConsumerSecret");
        l.f(str5, "instagramClientId");
        l.f(str6, "instagramClientSecret");
        l.f(str7, "instagramRedirectUrl");
        return new AuthConfig(str, str2, str3, str4, str5, str6, str7);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthConfig)) {
            return false;
        }
        AuthConfig authConfig = (AuthConfig) obj;
        return l.a(this.facebookAppId, authConfig.facebookAppId) && l.a(this.googleWebClientId, authConfig.googleWebClientId) && l.a(this.twitterConsumerKey, authConfig.twitterConsumerKey) && l.a(this.twitterConsumerSecret, authConfig.twitterConsumerSecret) && l.a(this.instagramClientId, authConfig.instagramClientId) && l.a(this.instagramClientSecret, authConfig.instagramClientSecret) && l.a(this.instagramRedirectUrl, authConfig.instagramRedirectUrl);
    }

    public final String getFacebookAppId() {
        return this.facebookAppId;
    }

    public final String getGoogleWebClientId() {
        return this.googleWebClientId;
    }

    public final String getInstagramClientId() {
        return this.instagramClientId;
    }

    public final String getInstagramClientSecret() {
        return this.instagramClientSecret;
    }

    public final String getInstagramRedirectUrl() {
        return this.instagramRedirectUrl;
    }

    public final String getTwitterConsumerKey() {
        return this.twitterConsumerKey;
    }

    public final String getTwitterConsumerSecret() {
        return this.twitterConsumerSecret;
    }

    public int hashCode() {
        return (((((((((((this.facebookAppId.hashCode() * 31) + this.googleWebClientId.hashCode()) * 31) + this.twitterConsumerKey.hashCode()) * 31) + this.twitterConsumerSecret.hashCode()) * 31) + this.instagramClientId.hashCode()) * 31) + this.instagramClientSecret.hashCode()) * 31) + this.instagramRedirectUrl.hashCode();
    }

    public String toString() {
        return "AuthConfig(facebookAppId=" + this.facebookAppId + ", googleWebClientId=" + this.googleWebClientId + ", twitterConsumerKey=" + this.twitterConsumerKey + ", twitterConsumerSecret=" + this.twitterConsumerSecret + ", instagramClientId=" + this.instagramClientId + ", instagramClientSecret=" + this.instagramClientSecret + ", instagramRedirectUrl=" + this.instagramRedirectUrl + ')';
    }

    public /* synthetic */ AuthConfig(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i10, g gVar) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? "" : str3, (i10 & 8) != 0 ? "" : str4, (i10 & 16) != 0 ? "" : str5, (i10 & 32) != 0 ? "" : str6, (i10 & 64) != 0 ? "" : str7);
    }
}
