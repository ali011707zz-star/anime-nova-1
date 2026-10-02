package com.twitter.sdk.android.core;

import ka.c;

/* loaded from: classes.dex */
public abstract class AuthToken {

    @c("created_at")
    public final long createdAt;

    public AuthToken() {
        this(System.currentTimeMillis());
    }

    public abstract boolean isExpired();

    public AuthToken(long j10) {
        this.createdAt = j10;
    }
}
