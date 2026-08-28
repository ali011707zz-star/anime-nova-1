package com.twitter.sdk.android.core.internal.persistence;

/* loaded from: classes.dex */
public interface PersistenceStrategy<T> {
    void clear();

    T restore();

    void save(T t10);
}
