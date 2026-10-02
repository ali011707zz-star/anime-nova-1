package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import android.os.UserHandle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
@TargetApi(24)
/* loaded from: classes.dex */
public final class zzbt {
    private static final Method zza;
    private static final Method zzb;

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        Method method;
        Method method2 = null;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                method = JobScheduler.class.getDeclaredMethod("scheduleAsPackage", JobInfo.class, String.class, Integer.TYPE, String.class);
            } catch (NoSuchMethodException unused) {
            }
            zza = method;
            if (Build.VERSION.SDK_INT >= 24) {
                try {
                    method2 = UserHandle.class.getDeclaredMethod("myUserId", new Class[0]);
                } catch (NoSuchMethodException unused2) {
                }
            }
            zzb = method2;
        }
        method = null;
        zza = method;
        if (Build.VERSION.SDK_INT >= 24) {
        }
        zzb = method2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zza(Context context, JobInfo jobInfo, String str, String str2) {
        Integer num;
        int intValue;
        Method method;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        jobScheduler.getClass();
        if (zza != null && context.checkSelfPermission("android.permission.UPDATE_DEVICE_STATS") == 0) {
            Method method2 = zzb;
            if (method2 != null) {
                try {
                    num = (Integer) method2.invoke(UserHandle.class, new Object[0]);
                } catch (IllegalAccessException | InvocationTargetException unused) {
                }
                if (num != null) {
                    intValue = num.intValue();
                    method = zza;
                    if (method != null) {
                        try {
                            Integer num2 = (Integer) method.invoke(jobScheduler, jobInfo, "com.google.android.gms", Integer.valueOf(intValue), "UploadAlarm");
                            if (num2 != null) {
                                return num2.intValue();
                            }
                            return 0;
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                        }
                    }
                    return jobScheduler.schedule(jobInfo);
                }
            }
            intValue = 0;
            method = zza;
            if (method != null) {
            }
            return jobScheduler.schedule(jobInfo);
        }
        return jobScheduler.schedule(jobInfo);
    }
}
