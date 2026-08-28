package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.twitter.sdk.android.core.internal.persistence.SerializationStrategy;
import ja.f;
import ka.c;

/* loaded from: classes.dex */
public class TwitterSession extends Session<TwitterAuthToken> {
    public static final long UNKNOWN_USER_ID = -1;
    public static final String UNKNOWN_USER_NAME = "";

    @c("user_name")
    private final String userName;

    /* loaded from: classes.dex */
    public static class Serializer implements SerializationStrategy<TwitterSession> {
        private final f gson = new f();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.twitter.sdk.android.core.internal.persistence.SerializationStrategy
        public TwitterSession deserialize(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                return (TwitterSession) this.gson.k(str, TwitterSession.class);
            } catch (Exception e10) {
                Twitter.getLogger().d("Twitter", e10.getMessage());
                return null;
            }
        }

        @Override // com.twitter.sdk.android.core.internal.persistence.SerializationStrategy
        public String serialize(TwitterSession twitterSession) {
            if (twitterSession == null || twitterSession.getAuthToken() == null) {
                return "";
            }
            try {
                return this.gson.t(twitterSession);
            } catch (Exception e10) {
                Twitter.getLogger().d("Twitter", e10.getMessage());
                return "";
            }
        }
    }

    public TwitterSession(TwitterAuthToken twitterAuthToken, long j10, String str) {
        super(twitterAuthToken, j10);
        this.userName = str;
    }

    @Override // com.twitter.sdk.android.core.Session
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        String str = this.userName;
        String str2 = ((TwitterSession) obj).userName;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public long getUserId() {
        return getId();
    }

    public String getUserName() {
        return this.userName;
    }

    @Override // com.twitter.sdk.android.core.Session
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.userName;
        return hashCode + (str != null ? str.hashCode() : 0);
    }
}
