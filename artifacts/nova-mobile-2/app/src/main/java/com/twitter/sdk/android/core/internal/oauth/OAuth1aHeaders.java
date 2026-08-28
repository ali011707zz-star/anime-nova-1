package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class OAuth1aHeaders {
    public static final String HEADER_AUTH_CREDENTIALS = "X-Verify-Credentials-Authorization";
    public static final String HEADER_AUTH_SERVICE_PROVIDER = "X-Auth-Service-Provider";

    public String getAuthorizationHeader(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        return getOAuth1aParameters(twitterAuthConfig, twitterAuthToken, str, str2, str3, map).getAuthorizationHeader();
    }

    public OAuth1aParameters getOAuth1aParameters(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        return new OAuth1aParameters(twitterAuthConfig, twitterAuthToken, str, str2, str3, map);
    }

    public Map<String, String> getOAuthEchoHeaders(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        HashMap hashMap = new HashMap(2);
        hashMap.put(HEADER_AUTH_CREDENTIALS, getAuthorizationHeader(twitterAuthConfig, twitterAuthToken, str, str2, str3, map));
        hashMap.put(HEADER_AUTH_SERVICE_PROVIDER, str3);
        return hashMap;
    }
}
