package io.wax911.support.google;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import io.wax911.support.common.CommonAuthActivity;
import io.wax911.support.common.extension.CommonExtKt;
import io.wax911.support.common.model.AuthDataHolder;
import io.wax911.support.common.model.AuthenticationMeta;
import io.wax911.support.common.model.SocialUser;
import io.wax911.support.common.utils.PreferenceUtils;
import io.wax911.support.google.GoogleAuthActivity;
import jc.g;
import jc.l;

/* compiled from: GoogleAuthActivity.kt */
/* loaded from: classes.dex */
public final class GoogleAuthActivity extends CommonAuthActivity implements GoogleApiClient.OnConnectionFailedListener, GoogleApiClient.ConnectionCallbacks {
    public static final Companion Companion = new Companion(null);
    private static final String KEY_IS_GOOGLE_DISCONNECT_REQUESTED = l.m(GoogleAuth.class.getName(), "KEY_IS_GOOGLE_DISCONNECT_REQUESTED");
    private static final String KEY_IS_GOOGLE_REVOKE_REQUESTED = l.m(GoogleAuth.class.getName(), "KEY_IS_GOOGLE_REVOKE_REQUESTED");
    private static final int RC_SIGN_IN = 1000;
    private GoogleApiClient googleApiClient;
    private boolean retrySignIn;

    /* compiled from: GoogleAuthActivity.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final boolean isGoogleDisconnectRequested$support_google_release(Context context) {
            return PreferenceUtils.INSTANCE.getBoolean(context, GoogleAuthActivity.KEY_IS_GOOGLE_DISCONNECT_REQUESTED);
        }

        public final boolean isGoogleRevokeRequested$support_google_release(Context context) {
            return PreferenceUtils.INSTANCE.getBoolean(context, GoogleAuthActivity.KEY_IS_GOOGLE_REVOKE_REQUESTED);
        }

        public final void setGoogleDisconnectRequested$support_google_release(Context context, boolean z10) {
            PreferenceUtils.INSTANCE.saveBoolean(context, GoogleAuthActivity.KEY_IS_GOOGLE_DISCONNECT_REQUESTED, z10);
        }

        public final void setGoogleRevokeRequested$support_google_release(Context context, boolean z10) {
            PreferenceUtils.INSTANCE.saveBoolean(context, GoogleAuthActivity.KEY_IS_GOOGLE_REVOKE_REQUESTED, z10);
        }

        public final void start(Context context) {
            Intent intent = new Intent(context, (Class<?>) GoogleAuthActivity.class);
            intent.addFlags(268435456);
            if (context == null) {
                return;
            }
            context.startActivity(intent);
        }
    }

    private final void handleDisconnectRequest(final Runnable runnable) {
        Auth.GoogleSignInApi.signOut(this.googleApiClient).setResultCallback(new ResultCallback() { // from class: ob.b
            @Override // com.google.android.gms.common.api.ResultCallback
            public final void onResult(Result result) {
                GoogleAuthActivity.m6handleDisconnectRequest$lambda2(runnable, this, (Status) result);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: handleDisconnectRequest$lambda-2, reason: not valid java name */
    public static final void m6handleDisconnectRequest$lambda2(Runnable runnable, GoogleAuthActivity googleAuthActivity, Status status) {
        l.f(runnable, "$onSignOut");
        l.f(googleAuthActivity, "this$0");
        l.f(status, "it");
        runnable.run();
        Companion.setGoogleDisconnectRequested$support_google_release(googleAuthActivity, false);
    }

    private final void handleRevokeRequest(final Runnable runnable) {
        Auth.GoogleSignInApi.revokeAccess(this.googleApiClient).setResultCallback(new ResultCallback() { // from class: ob.a
            @Override // com.google.android.gms.common.api.ResultCallback
            public final void onResult(Result result) {
                GoogleAuthActivity.m7handleRevokeRequest$lambda3(runnable, this, (Status) result);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: handleRevokeRequest$lambda-3, reason: not valid java name */
    public static final void m7handleRevokeRequest$lambda3(Runnable runnable, GoogleAuthActivity googleAuthActivity, Status status) {
        l.f(runnable, "$onRevoke");
        l.f(googleAuthActivity, "this$0");
        l.f(status, "it");
        runnable.run();
        Companion.setGoogleRevokeRequested$support_google_release(googleAuthActivity, false);
    }

    private final void handleSignInResult(Task<GoogleSignInAccount> task) {
        try {
            GoogleSignInAccount result = task.getResult(ApiException.class);
            if (result != null) {
                SocialUser socialUser = new SocialUser(null, null, null, null, null, null, null, null, BaseProgressIndicator.MAX_ALPHA, null);
                socialUser.setUserId(result.getId());
                socialUser.setAccessToken(result.getIdToken());
                socialUser.setProfilePictureUrl(String.valueOf(result.getPhotoUrl()));
                socialUser.setEmail(result.getEmail());
                socialUser.setFullName(result.getDisplayName());
                onSocialSuccess(socialUser);
            } else {
                toString();
                onCancellation();
            }
        } catch (ApiException e10) {
            toString();
            l.m("signInResult:failed code=", Integer.valueOf(e10.getStatusCode()));
            onExceptionThrown(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startSignInFlows() {
        GoogleSignInApi googleSignInApi = Auth.GoogleSignInApi;
        googleSignInApi.signOut(this.googleApiClient);
        startActivityForResult(googleSignInApi.getSignInIntent(this.googleApiClient), 1000);
    }

    @Override // io.wax911.support.common.CommonAuthActivity
    public AuthenticationMeta getAuthenticationMeta() {
        return AuthDataHolder.Companion.getInstance().getGoogleAuthenticationMeta();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 != 1000) {
            onCancellation();
            return;
        }
        Task<GoogleSignInAccount> signedInAccountFromIntent = GoogleSignIn.getSignedInAccountFromIntent(intent);
        Companion companion = Companion;
        if ((companion.isGoogleDisconnectRequested$support_google_release(this) || companion.isGoogleRevokeRequested$support_google_release(this)) && !this.retrySignIn) {
            return;
        }
        this.retrySignIn = false;
        l.e(signedInAccountFromIntent, "googleSignInAccountTask");
        handleSignInResult(signedInAccountFromIntent);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        Runnable runnable = new Runnable() { // from class: io.wax911.support.google.GoogleAuthActivity$onConnected$$inlined$Runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                GoogleAuthActivity.this.retrySignIn = true;
                GoogleAuthActivity.this.startSignInFlows();
            }
        };
        Companion companion = Companion;
        if (companion.isGoogleDisconnectRequested$support_google_release(this)) {
            handleDisconnectRequest(runnable);
        } else if (companion.isGoogleRevokeRequested$support_google_release(this)) {
            handleRevokeRequest(runnable);
        } else {
            startSignInFlows();
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        l.f(connectionResult, "connectionResult");
        onExceptionThrown(new Throwable(connectionResult.getErrorMessage()));
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public void onConnectionSuspended(int i10) {
        onExceptionThrown(new Throwable("connection suspended."));
    }

    @Override // io.wax911.support.common.CommonAuthActivity, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.googleApiClient = new GoogleApiClient.Builder(this).enableAutoManage(this, this).addConnectionCallbacks(this).addApi(Auth.GOOGLE_SIGN_IN_API, new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestId().requestProfile().requestEmail().requestIdToken(CommonExtKt.getMetaValue(this, R.string.io_wax911_support_googleWebClientId)).build()).build();
    }
}
