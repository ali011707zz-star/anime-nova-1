package io.wax911.support.common.model;

import io.wax911.support.common.callback.AuthCallback;
import java.util.List;
import jc.l;

/* compiled from: AuthenticationMeta.kt */
/* loaded from: classes.dex */
public final class AuthenticationMeta {
    private AuthCallback callback;
    private List<String> scopes;

    public AuthenticationMeta(List<String> list, AuthCallback authCallback) {
        l.f(list, "scopes");
        this.scopes = list;
        this.callback = authCallback;
    }

    public final void clearCallback$support_common_release() {
        this.callback = null;
    }

    public final AuthCallback getCallback() {
        return this.callback;
    }

    public final List<String> getScopes() {
        return this.scopes;
    }

    public final void setCallback(AuthCallback authCallback) {
        this.callback = authCallback;
    }

    public final void setScopes(List<String> list) {
        l.f(list, "<set-?>");
        this.scopes = list;
    }
}
