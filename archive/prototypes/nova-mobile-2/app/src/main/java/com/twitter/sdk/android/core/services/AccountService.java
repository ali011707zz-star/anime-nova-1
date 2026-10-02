package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.User;
import rd.b;
import td.f;
import td.t;

/* loaded from: classes.dex */
public interface AccountService {
    @f("/1.1/account/verify_credentials.json")
    b<User> verifyCredentials(@t("include_entities") Boolean bool, @t("skip_status") Boolean bool2, @t("include_email") Boolean bool3);
}
