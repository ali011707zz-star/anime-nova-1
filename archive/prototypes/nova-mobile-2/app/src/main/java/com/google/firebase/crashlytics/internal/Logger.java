package com.google.firebase.crashlytics.internal;

import android.util.Log;

/* loaded from: classes.dex */
public class Logger {
    public static final Logger DEFAULT_LOGGER = new Logger("FirebaseCrashlytics");
    private int logLevel = 4;
    private final String tag;

    public Logger(String str) {
        this.tag = str;
    }

    private boolean canLog(int i10) {
        return this.logLevel <= i10 || Log.isLoggable(this.tag, i10);
    }

    public static Logger getLogger() {
        return DEFAULT_LOGGER;
    }

    public void d(String str, Throwable th) {
        canLog(3);
    }

    public void e(String str, Throwable th) {
        canLog(6);
    }

    public void i(String str, Throwable th) {
        canLog(4);
    }

    public void v(String str, Throwable th) {
        canLog(2);
    }

    public void w(String str, Throwable th) {
        canLog(5);
    }

    public void d(String str) {
        d(str, null);
    }

    public void e(String str) {
        e(str, null);
    }

    public void i(String str) {
        i(str, null);
    }

    public void v(String str) {
        v(str, null);
    }

    public void w(String str) {
        w(str, null);
    }
}
