package com.google.android.gms.common.internal;

import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public final class GmsLogger {
    private final String zza;
    private final String zzb;

    @KeepForSdk
    public GmsLogger(@RecentlyNonNull String str) {
        this(str, null);
    }

    private final String zza(String str) {
        String str2 = this.zzb;
        return str2 == null ? str : str2.concat(str);
    }

    private final String zzb(String str, Object... objArr) {
        String format = String.format(str, objArr);
        String str2 = this.zzb;
        return str2 == null ? format : str2.concat(format);
    }

    @KeepForSdk
    public boolean canLog(int i10) {
        return Log.isLoggable(this.zza, i10);
    }

    @KeepForSdk
    public boolean canLogPii() {
        return false;
    }

    @KeepForSdk
    public void d(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        if (canLog(3)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void e(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        if (canLog(6)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void efmt(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Object... objArr) {
        if (canLog(6)) {
            zzb(str2, objArr);
        }
    }

    @KeepForSdk
    public void i(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        if (canLog(4)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void pii(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
    }

    @KeepForSdk
    public void pii(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Throwable th) {
    }

    @KeepForSdk
    public void v(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        if (canLog(2)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void w(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        if (canLog(5)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void wfmt(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Object... objArr) {
        if (canLog(5)) {
            zzb(str2, objArr);
        }
    }

    @KeepForSdk
    public void wtf(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Throwable th) {
        if (canLog(7)) {
            zza(str2);
            Log.wtf(str, zza(str2), th);
        }
    }

    @KeepForSdk
    public GmsLogger(@RecentlyNonNull String str, String str2) {
        Preconditions.checkNotNull(str, "log tag cannot be null");
        Preconditions.checkArgument(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.zza = str;
        if (str2 == null || str2.length() <= 0) {
            this.zzb = null;
        } else {
            this.zzb = str2;
        }
    }

    @KeepForSdk
    public void d(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Throwable th) {
        if (canLog(3)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void e(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Throwable th) {
        if (canLog(6)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void i(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Throwable th) {
        if (canLog(4)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void v(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Throwable th) {
        if (canLog(2)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void w(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Throwable th) {
        if (canLog(5)) {
            zza(str2);
        }
    }
}
