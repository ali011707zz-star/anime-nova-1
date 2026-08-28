package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzlm {
    private static final zzll zza;
    private static final zzll zzb;

    static {
        zzll zzllVar;
        try {
            zzllVar = (zzll) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzllVar = null;
        }
        zza = zzllVar;
        zzb = new zzll();
    }

    public static zzll zza() {
        return zza;
    }

    public static zzll zzb() {
        return zzb;
    }
}
