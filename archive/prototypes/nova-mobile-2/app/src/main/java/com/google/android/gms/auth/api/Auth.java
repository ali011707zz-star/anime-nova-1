package com.google.android.gms.auth.api;

import android.os.Bundle;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzf;
import com.google.android.gms.auth.api.signin.internal.zzg;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.p000authapi.zzi;
import com.google.android.gms.internal.p000authapi.zzr;

/* loaded from: classes.dex */
public final class Auth {
    public static final Api<AuthCredentialsOptions> CREDENTIALS_API;
    public static final CredentialsApi CredentialsApi;
    public static final Api<GoogleSignInOptions> GOOGLE_SIGN_IN_API;
    public static final GoogleSignInApi GoogleSignInApi;

    @KeepForSdk
    @Deprecated
    public static final Api<AuthProxyOptions> PROXY_API;

    @KeepForSdk
    @Deprecated
    public static final ProxyApi ProxyApi;
    public static final Api.ClientKey<zzr> zzg;
    public static final Api.ClientKey<zzg> zzh;
    private static final Api.AbstractClientBuilder<zzr, AuthCredentialsOptions> zzi;
    private static final Api.AbstractClientBuilder<zzg, GoogleSignInOptions> zzj;

    @Deprecated
    /* loaded from: classes.dex */
    public static class AuthCredentialsOptions implements Api.ApiOptions.Optional {
        private static final AuthCredentialsOptions zzk = new Builder().zzc();
        private final String zzl = null;
        private final boolean zzm;

        @Deprecated
        /* loaded from: classes.dex */
        public static class Builder {
            public Boolean zzn = Boolean.FALSE;

            public Builder forceEnableSaveDialog() {
                this.zzn = Boolean.TRUE;
                return this;
            }

            public AuthCredentialsOptions zzc() {
                return new AuthCredentialsOptions(this);
            }
        }

        public AuthCredentialsOptions(Builder builder) {
            this.zzm = builder.zzn.booleanValue();
        }

        public final Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", null);
            bundle.putBoolean("force_save_dialog", this.zzm);
            return bundle;
        }
    }

    static {
        Api.ClientKey<zzr> clientKey = new Api.ClientKey<>();
        zzg = clientKey;
        Api.ClientKey<zzg> clientKey2 = new Api.ClientKey<>();
        zzh = clientKey2;
        zzc zzcVar = new zzc();
        zzi = zzcVar;
        zzd zzdVar = new zzd();
        zzj = zzdVar;
        PROXY_API = AuthProxy.API;
        CREDENTIALS_API = new Api<>("Auth.CREDENTIALS_API", zzcVar, clientKey);
        GOOGLE_SIGN_IN_API = new Api<>("Auth.GOOGLE_SIGN_IN_API", zzdVar, clientKey2);
        ProxyApi = AuthProxy.ProxyApi;
        CredentialsApi = new zzi();
        GoogleSignInApi = new zzf();
    }

    private Auth() {
    }
}
