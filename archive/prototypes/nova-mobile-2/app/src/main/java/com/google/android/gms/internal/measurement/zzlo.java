package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzlo {
    private static final zzlo zza = new zzlo();
    private final ConcurrentMap<Class<?>, zzlr<?>> zzc = new ConcurrentHashMap();
    private final zzls zzb = new zzky();

    private zzlo() {
    }

    public static zzlo zza() {
        return zza;
    }

    public final <T> zzlr<T> zzb(Class<T> cls) {
        zzkh.zzf(cls, "messageType");
        zzlr<T> zzlrVar = (zzlr) this.zzc.get(cls);
        if (zzlrVar == null) {
            zzlrVar = this.zzb.zza(cls);
            zzkh.zzf(cls, "messageType");
            zzkh.zzf(zzlrVar, "schema");
            zzlr<T> zzlrVar2 = (zzlr) this.zzc.putIfAbsent(cls, zzlrVar);
            if (zzlrVar2 != null) {
                return zzlrVar2;
            }
        }
        return zzlrVar;
    }
}
