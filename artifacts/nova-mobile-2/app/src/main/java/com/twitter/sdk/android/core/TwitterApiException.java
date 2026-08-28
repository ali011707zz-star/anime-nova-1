package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.JsonSyntaxException;
import com.twitter.sdk.android.core.models.ApiError;
import com.twitter.sdk.android.core.models.ApiErrors;
import com.twitter.sdk.android.core.models.SafeListAdapter;
import com.twitter.sdk.android.core.models.SafeMapAdapter;
import ja.g;
import rd.q;

/* loaded from: classes.dex */
public class TwitterApiException extends TwitterException {
    public static final int DEFAULT_ERROR_CODE = 0;
    private final ApiError apiError;
    private final int code;
    private final q response;
    private final TwitterRateLimit twitterRateLimit;

    public TwitterApiException(q qVar) {
        this(qVar, readApiError(qVar), readApiRateLimit(qVar), qVar.b());
    }

    public static String createExceptionMessage(int i10) {
        return "HTTP request failed, Status: " + i10;
    }

    public static ApiError parseApiError(String str) {
        try {
            ApiErrors apiErrors = (ApiErrors) new g().d(new SafeListAdapter()).d(new SafeMapAdapter()).b().k(str, ApiErrors.class);
            if (apiErrors.errors.isEmpty()) {
                return null;
            }
            return apiErrors.errors.get(0);
        } catch (JsonSyntaxException e10) {
            Twitter.getLogger().e("Twitter", "Invalid json: " + str, e10);
            return null;
        }
    }

    public static ApiError readApiError(q qVar) {
        try {
            String J0 = qVar.d().source().c().clone().J0();
            if (TextUtils.isEmpty(J0)) {
                return null;
            }
            return parseApiError(J0);
        } catch (Exception e10) {
            Twitter.getLogger().e("Twitter", "Unexpected response", e10);
            return null;
        }
    }

    public static TwitterRateLimit readApiRateLimit(q qVar) {
        return new TwitterRateLimit(qVar.e());
    }

    public int getErrorCode() {
        ApiError apiError = this.apiError;
        if (apiError == null) {
            return 0;
        }
        return apiError.code;
    }

    public String getErrorMessage() {
        ApiError apiError = this.apiError;
        if (apiError == null) {
            return null;
        }
        return apiError.message;
    }

    public q getResponse() {
        return this.response;
    }

    public int getStatusCode() {
        return this.code;
    }

    public TwitterRateLimit getTwitterRateLimit() {
        return this.twitterRateLimit;
    }

    public TwitterApiException(q qVar, ApiError apiError, TwitterRateLimit twitterRateLimit, int i10) {
        super(createExceptionMessage(i10));
        this.apiError = apiError;
        this.twitterRateLimit = twitterRateLimit;
        this.code = i10;
        this.response = qVar;
    }
}
