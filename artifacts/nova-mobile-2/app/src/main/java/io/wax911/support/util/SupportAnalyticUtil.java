package io.wax911.support.util;

import android.os.Bundle;

/* compiled from: SupportAnalyticUtil.kt */
/* loaded from: classes.dex */
public interface SupportAnalyticUtil {
    void log(String str, String str2);

    void logCurrentState(String str, Bundle bundle);

    void logException(Throwable th);
}
