package com.twitter.sdk.android.core.internal.scribe;

import java.io.IOException;

/* loaded from: classes.dex */
public interface EventTransform<T> {
    byte[] toBytes(T t10) throws IOException;
}
