package com.anslayer.api.endpoint;

import ac.d;
import java.util.List;
import okhttp3.ResponseBody;
import rd.b;
import t4.a;
import td.c;
import td.e;
import td.o;

/* compiled from: AuthEndpoint.kt */
/* loaded from: classes.dex */
public interface AuthEndpoint {
    @e
    @o("oauth/change-password")
    Object changePassword(@c("current_password") String str, @c("new_password") String str2, @c("confirm_password") String str3, d<? super ResponseBody> dVar);

    @e
    @o("oauth/forgot-password")
    b<ResponseBody> forgotPassword(@c("email") String str);

    @e
    @o("oauth/google-login")
    Object googleLogin(@c("google_access_token") String str, @c("device_id") String str2, d<? super n4.c<a>> dVar);

    @e
    @o("oauth/google-link")
    Object linkGoogleAccount(@c("google_access_token") String str, d<? super ResponseBody> dVar);

    @e
    @o("oauth/twitter-link")
    Object linkTwitterAccount(@c("twitter_access_token") String str, @c("twitter_access_token_secret") String str2, d<? super ResponseBody> dVar);

    @e
    @o("oauth/login")
    Object login(@c("username") String str, @c("password") String str2, @c("device_id") String str3, d<? super n4.c<a>> dVar);

    @e
    @o("oauth/logout")
    Object logout(@c("access_token_") String str, @c("refresh_token_") String str2, d<? super ResponseBody> dVar);

    @e
    @o("oauth/refresh-token")
    b<n4.c<t4.b>> refreshToken(@c("refresh_token") String str);

    @e
    @o("oauth/refresh-token")
    Object refreshTokenSuspend(@c("refresh_token") String str, d<? super n4.c<t4.b>> dVar);

    @e
    @o("oauth/restore-fb")
    Object restoreFacebook(@c("token") String str, d<? super n4.c<List<Object>>> dVar);

    @e
    @o("oauth/twitter-login")
    Object twitterLogin(@c("twitter_access_token") String str, @c("twitter_access_token_secret") String str2, @c("device_id") String str3, d<? super n4.c<a>> dVar);
}
