package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public class zziv extends zziu {
    public final byte[] zza;

    public zziv(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zziy) || zzd() != ((zziy) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (obj instanceof zziv) {
            zziv zzivVar = (zziv) obj;
            int zzk = zzk();
            int zzk2 = zzivVar.zzk();
            if (zzk != 0 && zzk2 != 0 && zzk != zzk2) {
                return false;
            }
            int zzd = zzd();
            if (zzd <= zzivVar.zzd()) {
                if (zzd <= zzivVar.zzd()) {
                    byte[] bArr = this.zza;
                    byte[] bArr2 = zzivVar.zza;
                    zzivVar.zzc();
                    int i10 = 0;
                    int i11 = 0;
                    while (i10 < zzd) {
                        if (bArr[i10] != bArr2[i11]) {
                            return false;
                        }
                        i10++;
                        i11++;
                    }
                    return true;
                }
                int zzd2 = zzivVar.zzd();
                StringBuilder sb2 = new StringBuilder(59);
                sb2.append("Ran off end of other: 0, ");
                sb2.append(zzd);
                sb2.append(", ");
                sb2.append(zzd2);
                throw new IllegalArgumentException(sb2.toString());
            }
            int zzd3 = zzd();
            StringBuilder sb3 = new StringBuilder(40);
            sb3.append("Length too large: ");
            sb3.append(zzd);
            sb3.append(zzd3);
            throw new IllegalArgumentException(sb3.toString());
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public byte zza(int i10) {
        return this.zza[i10];
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public byte zzb(int i10) {
        return this.zza[i10];
    }

    public int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final int zze(int i10, int i11, int i12) {
        return zzkh.zzd(i10, this.zza, 0, i12);
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final zziy zzf(int i10, int i11) {
        int zzj = zziy.zzj(0, i11, zzd());
        return zzj == 0 ? zziy.zzb : new zzis(this.zza, 0, zzj);
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final String zzg(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final void zzh(zzin zzinVar) throws IOException {
        ((zzjd) zzinVar).zzc(this.zza, 0, zzd());
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final boolean zzi() {
        return zzmx.zzf(this.zza, 0, zzd());
    }
}
