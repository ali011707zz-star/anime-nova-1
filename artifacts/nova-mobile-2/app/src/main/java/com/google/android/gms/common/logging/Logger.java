package com.google.android.gms.common.logging;

import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import java.util.Locale;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class Logger {
    private final String zza;
    private final String zzb;
    private final GmsLogger zzc;
    private final int zzd;

    @KeepForSdk
    public Logger(@RecentlyNonNull String str, @RecentlyNonNull String... strArr) {
        String sb2;
        if (strArr.length == 0) {
            sb2 = "";
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append('[');
            for (String str2 : strArr) {
                if (sb3.length() > 1) {
                    sb3.append(",");
                }
                sb3.append(str2);
            }
            sb3.append("] ");
            sb2 = sb3.toString();
        }
        this.zzb = sb2;
        this.zza = str;
        this.zzc = new GmsLogger(str);
        int i10 = 2;
        while (i10 <= 7 && !Log.isLoggable(this.zza, i10)) {
            i10++;
        }
        this.zzd = i10;
    }

    @KeepForSdk
    public void d(@RecentlyNonNull String str, @RecentlyNonNull Throwable th, Object... objArr) {
        if (isLoggable(3)) {
            format(str, objArr);
        }
    }

    @KeepForSdk
    public void e(@RecentlyNonNull String str, @RecentlyNonNull Throwable th, Object... objArr) {
        format(str, objArr);
    }

    @RecentlyNonNull
    @KeepForSdk
    public String format(@RecentlyNonNull String str, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.zzb.concat(str);
    }

    @RecentlyNonNull
    @KeepForSdk
    public String getTag() {
        return this.zza;
    }

    @KeepForSdk
    public void i(@RecentlyNonNull String str, Object... objArr) {
        format(str, objArr);
    }

    @KeepForSdk
    public boolean isLoggable(int i10) {
        return this.zzd <= i10;
    }

    @KeepForSdk
    public void v(@RecentlyNonNull String str, @RecentlyNonNull Throwable th, Object... objArr) {
        if (isLoggable(2)) {
            format(str, objArr);
        }
    }

    @KeepForSdk
    public void w(@RecentlyNonNull String str, Object... objArr) {
        format(str, objArr);
    }

    @KeepForSdk
    public void wtf(@RecentlyNonNull String str, @RecentlyNonNull Throwable th, Object... objArr) {
        Log.wtf(this.zza, format(str, objArr), th);
    }

    @KeepForSdk
    public void e(@RecentlyNonNull String str, Object... objArr) {
        format(str, objArr);
    }

    @KeepForSdk
    public void wtf(@RecentlyNonNull Throwable th) {
        Log.wtf(this.zza, th);
    }

    @KeepForSdk
    public void d(@RecentlyNonNull String str, Object... objArr) {
        if (isLoggable(3)) {
            format(str, objArr);
        }
    }

    @KeepForSdk
    public void v(@RecentlyNonNull String str, Object... objArr) {
        if (isLoggable(2)) {
            format(str, objArr);
        }
    }
}
