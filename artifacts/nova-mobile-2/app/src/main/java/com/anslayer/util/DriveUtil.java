package com.anslayer.util;

import android.content.Context;
import androidx.annotation.Keep;

/* compiled from: DriveUtil.kt */
@Keep
/* loaded from: classes.dex */
public final class DriveUtil {
    public static final DriveUtil INSTANCE = new DriveUtil();

    private DriveUtil() {
    }

    public static final native String a(Context context, String str);

    public static final native String b(String str);
}
