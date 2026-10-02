package io.wax911.support.common.callback;

import io.wax911.support.common.model.SocialUser;

/* compiled from: AuthCallback.kt */
/* loaded from: classes.dex */
public interface AuthCallback {
    void onCancel();

    void onError(Throwable th);

    void onSuccess(SocialUser socialUser);
}
