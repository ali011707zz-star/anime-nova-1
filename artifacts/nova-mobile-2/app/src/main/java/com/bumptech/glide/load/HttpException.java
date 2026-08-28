package com.bumptech.glide.load;

import java.io.IOException;

/* loaded from: classes.dex */
public final class HttpException extends IOException {

    /* renamed from: f, reason: collision with root package name */
    public final int f4591f;

    public HttpException(int i10) {
        this("Http request failed with status code: " + i10, i10);
    }

    public HttpException(String str) {
        this(str, -1);
    }

    public HttpException(String str, int i10) {
        this(str, i10, null);
    }

    public HttpException(String str, int i10, Throwable th) {
        super(str, th);
        this.f4591f = i10;
    }
}
