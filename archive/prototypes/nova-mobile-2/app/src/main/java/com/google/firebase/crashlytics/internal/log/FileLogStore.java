package com.google.firebase.crashlytics.internal.log;

/* loaded from: classes.dex */
interface FileLogStore {
    void closeLogFile();

    void deleteLogFile();

    byte[] getLogAsBytes();

    String getLogAsString();

    void writeToLog(long j10, String str);
}
