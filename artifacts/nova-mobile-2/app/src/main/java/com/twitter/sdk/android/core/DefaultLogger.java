package com.twitter.sdk.android.core;

/* loaded from: classes.dex */
public class DefaultLogger implements Logger {
    private int logLevel;

    public DefaultLogger(int i10) {
        this.logLevel = i10;
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void d(String str, String str2, Throwable th) {
        isLoggable(str, 3);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void e(String str, String str2, Throwable th) {
        isLoggable(str, 6);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public int getLogLevel() {
        return this.logLevel;
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void i(String str, String str2, Throwable th) {
        isLoggable(str, 4);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public boolean isLoggable(String str, int i10) {
        return this.logLevel <= i10;
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void log(int i10, String str, String str2) {
        log(i10, str, str2, false);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void setLogLevel(int i10) {
        this.logLevel = i10;
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void v(String str, String str2, Throwable th) {
        isLoggable(str, 2);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void w(String str, String str2, Throwable th) {
        isLoggable(str, 5);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void d(String str, String str2) {
        d(str, str2, null);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void e(String str, String str2) {
        e(str, str2, null);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void i(String str, String str2) {
        i(str, str2, null);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void log(int i10, String str, String str2, boolean z10) {
        if (z10) {
            return;
        }
        isLoggable(str, i10);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void v(String str, String str2) {
        v(str, str2, null);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void w(String str, String str2) {
        w(str, str2, null);
    }

    public DefaultLogger() {
        this.logLevel = 4;
    }
}
