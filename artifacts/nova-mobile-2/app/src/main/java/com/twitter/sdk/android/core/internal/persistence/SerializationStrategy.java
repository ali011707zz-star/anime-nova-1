package com.twitter.sdk.android.core.internal.persistence;

/* loaded from: classes.dex */
public interface SerializationStrategy<T> {
    T deserialize(String str);

    String serialize(T t10);
}
