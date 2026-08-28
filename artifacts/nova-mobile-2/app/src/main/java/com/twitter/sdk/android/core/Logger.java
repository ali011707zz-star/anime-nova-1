package com.twitter.sdk.android.core;

/* loaded from: classes.dex */
public interface Logger {
    void d(String str, String str2);

    void d(String str, String str2, Throwable th);

    void e(String str, String str2);

    void e(String str, String str2, Throwable th);

    int getLogLevel();

    void i(String str, String str2);

    void i(String str, String str2, Throwable th);

    boolean isLoggable(String str, int i10);

    void log(int i10, String str, String str2);

    void log(int i10, String str, String str2, boolean z10);

    void setLogLevel(int i10);

    void v(String str, String str2);

    void v(String str, String str2, Throwable th);

    void w(String str, String str2);

    void w(String str, String str2, Throwable th);
}
