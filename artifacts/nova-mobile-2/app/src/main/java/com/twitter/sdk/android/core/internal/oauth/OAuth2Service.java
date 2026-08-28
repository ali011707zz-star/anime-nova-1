package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.TwitterApi;
import com.twitter.sdk.android.core.internal.network.UrlUtils;
import rd.b;
import td.c;
import td.e;
import td.i;
import td.k;
import td.o;

/* loaded from: classes.dex */
public class OAuth2Service extends OAuthService {
    public OAuth2Api api;

    /* loaded from: classes.dex */
    public interface OAuth2Api {
        @e
        @k({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @o("/oauth2/token")
        b<OAuth2Token> getAppAuthToken(@i("Authorization") String str, @c("grant_type") String str2);

        @o("/1.1/guest/activate.json")
        b<GuestTokenResponse> getGuestToken(@i("Authorization") String str);
    }

    public OAuth2Service(TwitterCore twitterCore, TwitterApi twitterApi) {
        super(twitterCore, twitterApi);
        this.api = (OAuth2Api) getRetrofit().b(OAuth2Api.class);
    }

    private String getAuthHeader() {
        TwitterAuthConfig authConfig = getTwitterCore().getAuthConfig();
        return "Basic " + cd.i.g(UrlUtils.percentEncode(authConfig.getConsumerKey()) + ":" + UrlUtils.percentEncode(authConfig.getConsumerSecret())).a();
    }

    private String getAuthorizationHeader(OAuth2Token oAuth2Token) {
        return "Bearer " + oAuth2Token.getAccessToken();
    }

    public void requestAppAuthToken(Callback<OAuth2Token> callback) {
        this.api.getAppAuthToken(getAuthHeader(), OAuthConstants.GRANT_TYPE_CLIENT_CREDENTIALS).c0(callback);
    }

    public void requestGuestAuthToken(final Callback<GuestAuthToken> callback) {
        requestAppAuthToken(new Callback<OAuth2Token>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Service.1
            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException twitterException) {
                Twitter.getLogger().e("Twitter", "Failed to get app auth token", twitterException);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.failure(twitterException);
                }
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<OAuth2Token> result) {
                final OAuth2Token oAuth2Token = result.data;
                OAuth2Service.this.requestGuestToken(new Callback<GuestTokenResponse>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Service.1.1
                    @Override // com.twitter.sdk.android.core.Callback
                    public void failure(TwitterException twitterException) {
                        Twitter.getLogger().e("Twitter", "Your app may not allow guest auth. Please talk to us regarding upgrading your consumer key.", twitterException);
                        callback.failure(twitterException);
                    }

                    @Override // com.twitter.sdk.android.core.Callback
                    public void success(Result<GuestTokenResponse> result2) {
                        callback.success(new Result(new GuestAuthToken(oAuth2Token.getTokenType(), oAuth2Token.getAccessToken(), result2.data.guestToken), null));
                    }
                }, oAuth2Token);
            }
        });
    }

    public void requestGuestToken(Callback<GuestTokenResponse> callback, OAuth2Token oAuth2Token) {
        this.api.getGuestToken(getAuthorizationHeader(oAuth2Token)).c0(callback);
    }
}
