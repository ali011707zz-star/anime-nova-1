package com.twitter.sdk.android.core;

import rd.q;

/* loaded from: classes.dex */
public class Result<T> {
    public final T data;
    public final q response;

    public Result(T t10, q qVar) {
        this.data = t10;
        this.response = qVar;
    }
}
