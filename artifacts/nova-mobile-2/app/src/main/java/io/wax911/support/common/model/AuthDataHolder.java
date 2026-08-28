package io.wax911.support.common.model;

import jc.g;

/* compiled from: AuthDataHolder.kt */
/* loaded from: classes.dex */
public final class AuthDataHolder {
    public static final Companion Companion = new Companion(null);
    private static final AuthDataHolder instance = new AuthDataHolder();
    private AuthenticationMeta facebookAuthenticationMeta;
    private AuthenticationMeta googleAuthenticationMeta;
    private AuthenticationMeta instagramAuthenticationMeta;
    private AuthenticationMeta twitterAuthenticationMeta;

    /* compiled from: AuthDataHolder.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final AuthDataHolder getInstance() {
            return AuthDataHolder.instance;
        }
    }

    public final AuthenticationMeta getFacebookAuthenticationMeta() {
        return this.facebookAuthenticationMeta;
    }

    public final AuthenticationMeta getGoogleAuthenticationMeta() {
        return this.googleAuthenticationMeta;
    }

    public final AuthenticationMeta getInstagramAuthenticationMeta() {
        return this.instagramAuthenticationMeta;
    }

    public final AuthenticationMeta getTwitterAuthenticationMeta() {
        return this.twitterAuthenticationMeta;
    }

    public final void setFacebookAuthenticationMeta(AuthenticationMeta authenticationMeta) {
        this.facebookAuthenticationMeta = authenticationMeta;
    }

    public final void setGoogleAuthenticationMeta(AuthenticationMeta authenticationMeta) {
        this.googleAuthenticationMeta = authenticationMeta;
    }

    public final void setInstagramAuthenticationMeta(AuthenticationMeta authenticationMeta) {
        this.instagramAuthenticationMeta = authenticationMeta;
    }

    public final void setTwitterAuthenticationMeta(AuthenticationMeta authenticationMeta) {
        this.twitterAuthenticationMeta = authenticationMeta;
    }
}
