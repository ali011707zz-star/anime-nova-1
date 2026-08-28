package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
@VisibleForTesting
/* loaded from: classes.dex */
public final class zzgy {
    public final Context zza;
    public String zzb;
    public String zzc;
    public String zzd;
    public Boolean zze;
    public long zzf;
    public com.google.android.gms.internal.measurement.zzcl zzg;
    public boolean zzh;
    public final Long zzi;
    public String zzj;

    @VisibleForTesting
    public zzgy(Context context, com.google.android.gms.internal.measurement.zzcl zzclVar, Long l10) {
        this.zzh = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.zza = applicationContext;
        this.zzi = l10;
        if (zzclVar != null) {
            this.zzg = zzclVar;
            this.zzb = zzclVar.zzf;
            this.zzc = zzclVar.zze;
            this.zzd = zzclVar.zzd;
            this.zzh = zzclVar.zzc;
            this.zzf = zzclVar.zzb;
            this.zzj = zzclVar.zzh;
            Bundle bundle = zzclVar.zzg;
            if (bundle != null) {
                this.zze = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
