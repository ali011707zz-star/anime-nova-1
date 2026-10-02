package com.google.android.gms.auth.api.credentials;

import com.google.android.gms.common.api.Response;

/* loaded from: classes.dex */
public class CredentialRequestResponse extends Response<CredentialRequestResult> {
    public Credential getCredential() {
        return getResult().getCredential();
    }
}
