package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class HeartBeatInfoStorage {
    private static final SimpleDateFormat FORMATTER = new SimpleDateFormat("dd/MM/yyyy z");
    private static HeartBeatInfoStorage instance;
    private final SharedPreferences heartBeatSharedPreferences;
    private final SharedPreferences sharedPreferences;

    private HeartBeatInfoStorage(Context context) {
        this.sharedPreferences = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        this.heartBeatSharedPreferences = context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }

    public static synchronized HeartBeatInfoStorage getInstance(Context context) {
        HeartBeatInfoStorage heartBeatInfoStorage;
        synchronized (HeartBeatInfoStorage.class) {
            if (instance == null) {
                instance = new HeartBeatInfoStorage(context);
            }
            heartBeatInfoStorage = instance;
        }
        return heartBeatInfoStorage;
    }

    public static boolean isSameDateUtc(long j10, long j11) {
        Date date = new Date(j10);
        Date date2 = new Date(j11);
        SimpleDateFormat simpleDateFormat = FORMATTER;
        return !simpleDateFormat.format(date).equals(simpleDateFormat.format(date2));
    }

    public synchronized boolean shouldSendGlobalHeartBeat(long j10) {
        return shouldSendSdkHeartBeat("fire-global", j10);
    }

    public synchronized boolean shouldSendSdkHeartBeat(String str, long j10) {
        if (this.sharedPreferences.contains(str)) {
            if (!isSameDateUtc(this.sharedPreferences.getLong(str, -1L), j10)) {
                return false;
            }
            this.sharedPreferences.edit().putLong(str, j10).apply();
            return true;
        }
        this.sharedPreferences.edit().putLong(str, j10).apply();
        return true;
    }
}
