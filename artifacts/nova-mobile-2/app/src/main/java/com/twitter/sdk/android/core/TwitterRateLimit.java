package com.twitter.sdk.android.core;

import okhttp3.Headers;

/* loaded from: classes.dex */
public class TwitterRateLimit {
    private static final String LIMIT_KEY = "x-rate-limit-limit";
    private static final String REMAINING_KEY = "x-rate-limit-remaining";
    private static final String RESET_KEY = "x-rate-limit-reset";
    private int remainingRequest;
    private int requestLimit;
    private long resetSeconds;

    public TwitterRateLimit(Headers headers) {
        if (headers != null) {
            for (int i10 = 0; i10 < headers.size(); i10++) {
                if (LIMIT_KEY.equals(headers.name(i10))) {
                    this.requestLimit = Integer.valueOf(headers.value(i10)).intValue();
                } else if (REMAINING_KEY.equals(headers.name(i10))) {
                    this.remainingRequest = Integer.valueOf(headers.value(i10)).intValue();
                } else if (RESET_KEY.equals(headers.name(i10))) {
                    this.resetSeconds = Long.valueOf(headers.value(i10)).longValue();
                }
            }
            return;
        }
        throw new IllegalArgumentException("headers must not be null");
    }

    public int getLimit() {
        return this.requestLimit;
    }

    public int getRemaining() {
        return this.remainingRequest;
    }

    public long getReset() {
        return this.resetSeconds;
    }
}
