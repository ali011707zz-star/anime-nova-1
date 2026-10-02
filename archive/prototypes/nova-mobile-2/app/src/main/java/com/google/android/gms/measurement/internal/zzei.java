package com.google.android.gms.measurement.internal;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzei implements Runnable {
    public final /* synthetic */ int zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ Object zzc;
    public final /* synthetic */ Object zzd;
    public final /* synthetic */ Object zze;
    public final /* synthetic */ zzel zzf;

    public zzei(zzel zzelVar, int i10, String str, Object obj, Object obj2, Object obj3) {
        this.zzf = zzelVar;
        this.zza = i10;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c10;
        long j10;
        char c11;
        long j11;
        zzfa zzm = this.zzf.zzs.zzm();
        if (zzm.zzx()) {
            c10 = this.zzf.zza;
            if (c10 == 0) {
                if (this.zzf.zzs.zzf().zzy()) {
                    zzel zzelVar = this.zzf;
                    zzelVar.zzs.zzaw();
                    zzelVar.zza = 'C';
                } else {
                    zzel zzelVar2 = this.zzf;
                    zzelVar2.zzs.zzaw();
                    zzelVar2.zza = 'c';
                }
            }
            j10 = this.zzf.zzb;
            if (j10 < 0) {
                zzel zzelVar3 = this.zzf;
                zzelVar3.zzs.zzf().zzh();
                zzelVar3.zzb = 43042L;
            }
            char charAt = "01VDIWEA?".charAt(this.zza);
            c11 = this.zzf.zza;
            j11 = this.zzf.zzb;
            String zzo = zzel.zzo(true, this.zzb, this.zzc, this.zzd, this.zze);
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzo).length() + 24);
            sb2.append("2");
            sb2.append(charAt);
            sb2.append(c11);
            sb2.append(j11);
            sb2.append(":");
            sb2.append(zzo);
            String sb3 = sb2.toString();
            if (sb3.length() > 1024) {
                sb3 = this.zzb.substring(0, RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE);
            }
            zzey zzeyVar = zzm.zzb;
            if (zzeyVar != null) {
                zzeyVar.zzb(sb3, 1L);
                return;
            }
            return;
        }
        this.zzf.zzq();
    }
}
