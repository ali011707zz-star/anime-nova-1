package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.Session;
import java.util.Map;

/* loaded from: classes.dex */
public interface SessionManager<T extends Session> {
    void clearActiveSession();

    void clearSession(long j10);

    T getActiveSession();

    T getSession(long j10);

    Map<Long, T> getSessionMap();

    void setActiveSession(T t10);

    void setSession(long j10, T t10);
}
