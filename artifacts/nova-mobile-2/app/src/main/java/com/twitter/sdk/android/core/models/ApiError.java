package com.twitter.sdk.android.core.models;

import ka.c;

/* loaded from: classes.dex */
public class ApiError {

    @c("code")
    public final int code;

    @c("message")
    public final String message;

    public ApiError(String str, int i10) {
        this.message = str;
        this.code = i10;
    }
}
