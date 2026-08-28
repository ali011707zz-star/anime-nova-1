package io.wax911.support.common;

import ac.g;
import android.os.Bundle;
import androidx.appcompat.app.e;
import androidx.lifecycle.k;
import io.wax911.support.common.callback.AuthCallback;
import io.wax911.support.common.model.AuthenticationMeta;
import io.wax911.support.common.model.SocialUser;
import jc.l;
import rc.c2;
import rc.d0;
import rc.g1;
import rc.h2;
import rc.q0;

/* compiled from: CommonAuthActivity.kt */
/* loaded from: classes.dex */
public abstract class CommonAuthActivity extends e implements q0 {
    private c2 job;

    public abstract AuthenticationMeta getAuthenticationMeta();

    @Override // rc.q0
    public g getCoroutineContext() {
        c2 c2Var = this.job;
        if (c2Var == null) {
            l.v("job");
            c2Var = null;
        }
        return c2Var.plus(g1.a());
    }

    public final void onCancellation() {
        AuthCallback callback;
        if (getLifecycle().b() != k.c.DESTROYED) {
            AuthenticationMeta authenticationMeta = getAuthenticationMeta();
            if (authenticationMeta != null && (callback = authenticationMeta.getCallback()) != null) {
                callback.onCancel();
            }
            finish();
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        d0 b10;
        b10 = h2.b(null, 1, null);
        this.job = b10;
        supportRequestWindowFeature(1);
        super.onCreate(bundle);
    }

    @Override // androidx.appcompat.app.e, androidx.fragment.app.e, android.app.Activity
    public void onDestroy() {
        c2 c2Var = this.job;
        if (c2Var == null) {
            l.v("job");
            c2Var = null;
        }
        c2.a.a(c2Var, null, 1, null);
        AuthenticationMeta authenticationMeta = getAuthenticationMeta();
        if (authenticationMeta != null) {
            authenticationMeta.clearCallback$support_common_release();
        }
        super.onDestroy();
    }

    public final void onExceptionThrown(Throwable th) {
        AuthCallback callback;
        l.f(th, "error");
        if (getLifecycle().b() != k.c.DESTROYED) {
            AuthenticationMeta authenticationMeta = getAuthenticationMeta();
            if (authenticationMeta != null && (callback = authenticationMeta.getCallback()) != null) {
                callback.onError(th);
            }
            finish();
        }
    }

    public final void onSocialSuccess(SocialUser socialUser) {
        AuthCallback callback;
        l.f(socialUser, "user");
        if (getLifecycle().b() != k.c.DESTROYED) {
            AuthenticationMeta authenticationMeta = getAuthenticationMeta();
            if (authenticationMeta != null && (callback = authenticationMeta.getCallback()) != null) {
                callback.onSuccess(socialUser);
            }
            finish();
        }
    }
}
