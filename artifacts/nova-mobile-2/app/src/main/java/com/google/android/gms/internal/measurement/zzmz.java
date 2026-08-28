package com.google.android.gms.internal.measurement;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public enum zzmz {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD)),
    DOUBLE(Double.valueOf(ShadowDrawableWrapper.COS_45)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zziy.zzb),
    ENUM(null),
    MESSAGE(null);

    private final Object zzk;

    zzmz(Object obj) {
        this.zzk = obj;
    }
}
