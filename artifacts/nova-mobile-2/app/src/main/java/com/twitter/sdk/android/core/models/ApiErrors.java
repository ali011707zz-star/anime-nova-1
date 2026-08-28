package com.twitter.sdk.android.core.models;

import java.util.List;
import ka.c;

/* loaded from: classes.dex */
public class ApiErrors {

    @c("errors")
    public final List<ApiError> errors;

    public ApiErrors(List<ApiError> list) {
        this.errors = ModelUtils.getSafeList(list);
    }
}
