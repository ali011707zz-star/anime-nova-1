package io.wax911.support.twitter;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.twitter.sdk.android.core.TwitterCore;
import io.wax911.support.common.ICommonAuth;
import io.wax911.support.common.callback.AuthCallback;
import io.wax911.support.common.callback.RevokeCallback;
import io.wax911.support.common.model.AuthDataHolder;
import io.wax911.support.common.model.AuthenticationMeta;
import io.wax911.support.common.utils.CookiesUtils;
import java.util.List;
import jc.l;

/* compiled from: TwitterAuth.kt */
/* loaded from: classes.dex */
public final class TwitterAuth implements ICommonAuth {
    public static final TwitterAuth INSTANCE = new TwitterAuth();

    private TwitterAuth() {
    }

    @Override // io.wax911.support.common.ICommonAuth
    public void connectToProvider(Context context, AuthCallback authCallback, List<String> list) {
        l.f(authCallback, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        l.f(list, "scopes");
        AuthDataHolder.Companion.getInstance().setTwitterAuthenticationMeta(new AuthenticationMeta(list, authCallback));
        TwitterAuthActivity.Companion.start(context);
    }

    @Override // io.wax911.support.common.ICommonAuth
    public void disconnectProvider(Context context) {
        AuthDataHolder.Companion.getInstance().setTwitterAuthenticationMeta(null);
        TwitterCore.getInstance().getSessionManager().clearActiveSession();
        CookiesUtils.INSTANCE.clearCookies(context);
    }

    @Override // io.wax911.support.common.ICommonAuth
    public void revokeProvider(Context context, RevokeCallback revokeCallback) {
        toString();
    }
}
