package com.google.android.gms.common.internal;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class TelemetryLogging {
    private TelemetryLogging() {
    }

    @RecentlyNonNull
    @KeepForSdk
    public static TelemetryLoggingClient getClient(@RecentlyNonNull Context context) {
        return getClient(context, TelemetryLoggingOptions.zaa);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static TelemetryLoggingClient getClient(@RecentlyNonNull Context context, @RecentlyNonNull TelemetryLoggingOptions telemetryLoggingOptions) {
        return new com.google.android.gms.common.internal.service.zao(context, telemetryLoggingOptions);
    }
}
