package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.persistence.SerializationStrategy;
import ja.f;
import ja.g;

/* loaded from: classes.dex */
public class GuestSession extends Session<GuestAuthToken> {
    public static final long LOGGED_OUT_USER_ID = 0;

    /* loaded from: classes.dex */
    public static class Serializer implements SerializationStrategy<GuestSession> {
        private final f gson = new g().c(GuestAuthToken.class, new AuthTokenAdapter()).b();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.twitter.sdk.android.core.internal.persistence.SerializationStrategy
        public GuestSession deserialize(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                return (GuestSession) this.gson.k(str, GuestSession.class);
            } catch (Exception e10) {
                Twitter.getLogger().d("Twitter", "Failed to deserialize session " + e10.getMessage());
                return null;
            }
        }

        @Override // com.twitter.sdk.android.core.internal.persistence.SerializationStrategy
        public String serialize(GuestSession guestSession) {
            if (guestSession == null || guestSession.getAuthToken() == null) {
                return "";
            }
            try {
                return this.gson.t(guestSession);
            } catch (Exception e10) {
                Twitter.getLogger().d("Twitter", "Failed to serialize session " + e10.getMessage());
                return "";
            }
        }
    }

    public GuestSession(GuestAuthToken guestAuthToken) {
        super(guestAuthToken, 0L);
    }
}
