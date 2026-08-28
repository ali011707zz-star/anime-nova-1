package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzjo {
    private static final zzjm<?> zza = new zzjn();
    private static final zzjm<?> zzb;

    static {
        zzjm<?> zzjmVar;
        try {
            zzjmVar = (zzjm) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzjmVar = null;
        }
        zzb = zzjmVar;
    }

    public static zzjm<?> zza() {
        zzjm<?> zzjmVar = zzb;
        if (zzjmVar != null) {
            return zzjmVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    public static zzjm<?> zzb() {
        return zza;
    }
}
