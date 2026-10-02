package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.oauth.OAuth1aHeaders;
import java.util.Map;
import org.apache.http.client.methods.HttpGet;

/* loaded from: classes.dex */
public class OAuthSigning {
    public static final String VERIFY_CREDENTIALS_URL = "https://api.twitter.com/1.1/account/verify_credentials.json";
    public final TwitterAuthConfig authConfig;
    public final TwitterAuthToken authToken;
    public final OAuth1aHeaders oAuth1aHeaders;

    public OAuthSigning(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken) {
        this(twitterAuthConfig, twitterAuthToken, new OAuth1aHeaders());
    }

    public String getAuthorizationHeader(String str, String str2, Map<String, String> map) {
        return this.oAuth1aHeaders.getAuthorizationHeader(this.authConfig, this.authToken, null, str, str2, map);
    }

    public Map<String, String> getOAuthEchoHeaders(String str, String str2, Map<String, String> map) {
        return this.oAuth1aHeaders.getOAuthEchoHeaders(this.authConfig, this.authToken, null, str, str2, map);
    }

    public Map<String, String> getOAuthEchoHeadersForVerifyCredentials() {
        return this.oAuth1aHeaders.getOAuthEchoHeaders(this.authConfig, this.authToken, null, HttpGet.METHOD_NAME, VERIFY_CREDENTIALS_URL, null);
    }

    public OAuthSigning(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, OAuth1aHeaders oAuth1aHeaders) {
        if (twitterAuthConfig == null) {
            throw new IllegalArgumentException("authConfig must not be null");
        }
        if (twitterAuthToken != null) {
            this.authConfig = twitterAuthConfig;
            this.authToken = twitterAuthToken;
            this.oAuth1aHeaders = oAuth1aHeaders;
            return;
        }
        throw new IllegalArgumentException("authToken must not be null");
    }
}
