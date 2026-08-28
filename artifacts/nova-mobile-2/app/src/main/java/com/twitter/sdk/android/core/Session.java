package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.AuthToken;
import ka.c;

/* loaded from: classes.dex */
public class Session<T extends AuthToken> {

    @c("auth_token")
    private final T authToken;

    /* renamed from: id, reason: collision with root package name */
    @c("id")
    private final long f4972id;

    public Session(T t10, long j10) {
        if (t10 != null) {
            this.authToken = t10;
            this.f4972id = j10;
            return;
        }
        throw new IllegalArgumentException("AuthToken must not be null.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Session session = (Session) obj;
        if (this.f4972id != session.f4972id) {
            return false;
        }
        T t10 = this.authToken;
        T t11 = session.authToken;
        return t10 != null ? t10.equals(t11) : t11 == null;
    }

    public T getAuthToken() {
        return this.authToken;
    }

    public long getId() {
        return this.f4972id;
    }

    public int hashCode() {
        T t10 = this.authToken;
        int hashCode = t10 != null ? t10.hashCode() : 0;
        long j10 = this.f4972id;
        return (hashCode * 31) + ((int) (j10 ^ (j10 >>> 32)));
    }
}
