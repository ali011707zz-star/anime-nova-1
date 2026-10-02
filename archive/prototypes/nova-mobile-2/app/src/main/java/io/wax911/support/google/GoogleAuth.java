package io.wax911.support.google;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.wax911.support.common.ICommonAuth;
import io.wax911.support.common.callback.AuthCallback;
import io.wax911.support.common.callback.RevokeCallback;
import io.wax911.support.common.model.AuthDataHolder;
import io.wax911.support.common.model.AuthenticationMeta;
import java.util.List;
import jc.l;

/* compiled from: GoogleAuth.kt */
/* loaded from: classes.dex */
public final class GoogleAuth implements ICommonAuth {
    public static final GoogleAuth INSTANCE = new GoogleAuth();

    private GoogleAuth() {
    }

    @Override // io.wax911.support.common.ICommonAuth
    public void connectToProvider(Context context, AuthCallback authCallback, List<String> list) {
        l.f(authCallback, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        l.f(list, "scopes");
        AuthDataHolder.Companion.getInstance().setGoogleAuthenticationMeta(new AuthenticationMeta(list, authCallback));
        GoogleAuthActivity.Companion.start(context);
    }

    @Override // io.wax911.support.common.ICommonAuth
    public void disconnectProvider(Context context) {
        AuthDataHolder.Companion.getInstance().setGoogleAuthenticationMeta(null);
        GoogleAuthActivity.Companion.setGoogleDisconnectRequested$support_google_release(context, true);
    }

    @Override // io.wax911.support.common.ICommonAuth
    public void revokeProvider(Context context, RevokeCallback revokeCallback) {
        GoogleAuthActivity.Companion.setGoogleRevokeRequested$support_google_release(context, true);
    }
}
