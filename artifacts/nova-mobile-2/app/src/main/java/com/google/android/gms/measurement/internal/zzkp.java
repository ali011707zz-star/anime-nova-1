package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzkp implements zzky {
    public final /* synthetic */ zzks zza;

    public zzkp(zzks zzksVar) {
        this.zza = zzksVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final void zza(String str, String str2, Bundle bundle) {
        zzfv zzfvVar;
        zzfv zzfvVar2;
        if (!TextUtils.isEmpty(str)) {
            this.zza.zzaz().zzp(new zzko(this, str, "_err", bundle));
            return;
        }
        zzfvVar = this.zza.zzn;
        if (zzfvVar != null) {
            zzfvVar2 = this.zza.zzn;
            zzfvVar2.zzay().zzd().zzb("AppId not known when logging event", "_err");
        }
    }
}
