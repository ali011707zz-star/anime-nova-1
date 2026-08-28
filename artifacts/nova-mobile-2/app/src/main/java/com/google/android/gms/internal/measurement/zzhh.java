package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import f0.b;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzhh implements zzhe {
    private static zzhh zza;

    @Nullable
    private final Context zzb;

    @Nullable
    private final ContentObserver zzc;

    private zzhh() {
        this.zzb = null;
        this.zzc = null;
    }

    private zzhh(Context context) {
        this.zzb = context;
        zzhg zzhgVar = new zzhg(this, null);
        this.zzc = zzhgVar;
        context.getContentResolver().registerContentObserver(zzgv.zza, true, zzhgVar);
    }

    public static zzhh zza(Context context) {
        zzhh zzhhVar;
        zzhh zzhhVar2;
        synchronized (zzhh.class) {
            if (zza == null) {
                if (b.b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                    zzhhVar2 = new zzhh(context);
                } else {
                    zzhhVar2 = new zzhh();
                }
                zza = zzhhVar2;
            }
            zzhhVar = zza;
        }
        return zzhhVar;
    }

    public static synchronized void zze() {
        Context context;
        synchronized (zzhh.class) {
            zzhh zzhhVar = zza;
            if (zzhhVar != null && (context = zzhhVar.zzb) != null && zzhhVar.zzc != null) {
                context.getContentResolver().unregisterContentObserver(zza.zzc);
            }
            zza = null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhe
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final String zzb(final String str) {
        if (this.zzb == null) {
            return null;
        }
        try {
            return (String) zzhc.zza(new zzhd() { // from class: com.google.android.gms.internal.measurement.zzhf
                @Override // com.google.android.gms.internal.measurement.zzhd
                public final Object zza() {
                    return zzhh.this.zzd(str);
                }
            });
        } catch (IllegalStateException | NullPointerException | SecurityException unused) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Unable to read GServices for: ".concat(valueOf);
            }
            return null;
        }
    }

    public final /* synthetic */ String zzd(String str) {
        return zzgv.zza(this.zzb.getContentResolver(), str, null);
    }
}
