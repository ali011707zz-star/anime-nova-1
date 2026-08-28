package com.google.android.gms.internal.measurement;

import java.io.Serializable;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzif {
    public static <T> zzib<T> zza(zzib<T> zzibVar) {
        if ((zzibVar instanceof zzid) || (zzibVar instanceof zzic)) {
            return zzibVar;
        }
        if (zzibVar instanceof Serializable) {
            return new zzic(zzibVar);
        }
        return new zzid(zzibVar);
    }

    public static <T> zzib<T> zzb(T t10) {
        return new zzie(t10);
    }
}
