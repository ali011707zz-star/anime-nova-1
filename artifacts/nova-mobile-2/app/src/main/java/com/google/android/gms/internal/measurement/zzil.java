package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzil {
    public static int zza(byte[] bArr, int i10, zzik zzikVar) throws zzkj {
        int zzj = zzj(bArr, i10, zzikVar);
        int i11 = zzikVar.zza;
        if (i11 >= 0) {
            if (i11 > bArr.length - zzj) {
                throw zzkj.zzf();
            }
            if (i11 == 0) {
                zzikVar.zzc = zziy.zzb;
                return zzj;
            }
            zzikVar.zzc = zziy.zzl(bArr, zzj, i11);
            return zzj + i11;
        }
        throw zzkj.zzd();
    }

    public static int zzb(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static int zzc(zzlr zzlrVar, byte[] bArr, int i10, int i11, int i12, zzik zzikVar) throws IOException {
        zzlj zzljVar = (zzlj) zzlrVar;
        Object zze = zzljVar.zze();
        int zzc = zzljVar.zzc(zze, bArr, i10, i11, i12, zzikVar);
        zzljVar.zzf(zze);
        zzikVar.zzc = zze;
        return zzc;
    }

    public static int zzd(zzlr zzlrVar, byte[] bArr, int i10, int i11, zzik zzikVar) throws IOException {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = zzk(i13, bArr, i12, zzikVar);
            i13 = zzikVar.zza;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            Object zze = zzlrVar.zze();
            int i15 = i13 + i14;
            zzlrVar.zzh(zze, bArr, i14, i15, zzikVar);
            zzlrVar.zzf(zze);
            zzikVar.zzc = zze;
            return i15;
        }
        throw zzkj.zzf();
    }

    public static int zze(zzlr<?> zzlrVar, int i10, byte[] bArr, int i11, int i12, zzkg<?> zzkgVar, zzik zzikVar) throws IOException {
        int zzd = zzd(zzlrVar, bArr, i11, i12, zzikVar);
        zzkgVar.add(zzikVar.zzc);
        while (zzd < i12) {
            int zzj = zzj(bArr, zzd, zzikVar);
            if (i10 != zzikVar.zza) {
                break;
            }
            zzd = zzd(zzlrVar, bArr, zzj, i12, zzikVar);
            zzkgVar.add(zzikVar.zzc);
        }
        return zzd;
    }

    public static int zzf(byte[] bArr, int i10, zzkg<?> zzkgVar, zzik zzikVar) throws IOException {
        zzka zzkaVar = (zzka) zzkgVar;
        int zzj = zzj(bArr, i10, zzikVar);
        int i11 = zzikVar.zza + zzj;
        while (zzj < i11) {
            zzj = zzj(bArr, zzj, zzikVar);
            zzkaVar.zzh(zzikVar.zza);
        }
        if (zzj == i11) {
            return zzj;
        }
        throw zzkj.zzf();
    }

    public static int zzg(byte[] bArr, int i10, zzik zzikVar) throws zzkj {
        int zzj = zzj(bArr, i10, zzikVar);
        int i11 = zzikVar.zza;
        if (i11 < 0) {
            throw zzkj.zzd();
        }
        if (i11 == 0) {
            zzikVar.zzc = "";
            return zzj;
        }
        zzikVar.zzc = new String(bArr, zzj, i11, zzkh.zza);
        return zzj + i11;
    }

    public static int zzh(byte[] bArr, int i10, zzik zzikVar) throws zzkj {
        int zzj = zzj(bArr, i10, zzikVar);
        int i11 = zzikVar.zza;
        if (i11 < 0) {
            throw zzkj.zzd();
        }
        if (i11 == 0) {
            zzikVar.zzc = "";
            return zzj;
        }
        zzikVar.zzc = zzmx.zzd(bArr, zzj, i11);
        return zzj + i11;
    }

    public static int zzi(int i10, byte[] bArr, int i11, int i12, zzmj zzmjVar, zzik zzikVar) throws zzkj {
        if ((i10 >>> 3) == 0) {
            throw zzkj.zzb();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            int zzm = zzm(bArr, i11, zzikVar);
            zzmjVar.zzh(i10, Long.valueOf(zzikVar.zzb));
            return zzm;
        }
        if (i13 == 1) {
            zzmjVar.zzh(i10, Long.valueOf(zzn(bArr, i11)));
            return i11 + 8;
        }
        if (i13 == 2) {
            int zzj = zzj(bArr, i11, zzikVar);
            int i14 = zzikVar.zza;
            if (i14 >= 0) {
                if (i14 > bArr.length - zzj) {
                    throw zzkj.zzf();
                }
                if (i14 == 0) {
                    zzmjVar.zzh(i10, zziy.zzb);
                } else {
                    zzmjVar.zzh(i10, zziy.zzl(bArr, zzj, i14));
                }
                return zzj + i14;
            }
            throw zzkj.zzd();
        }
        if (i13 != 3) {
            if (i13 == 5) {
                zzmjVar.zzh(i10, Integer.valueOf(zzb(bArr, i11)));
                return i11 + 4;
            }
            throw zzkj.zzb();
        }
        int i15 = (i10 & (-8)) | 4;
        zzmj zze = zzmj.zze();
        int i16 = 0;
        while (true) {
            if (i11 >= i12) {
                break;
            }
            int zzj2 = zzj(bArr, i11, zzikVar);
            int i17 = zzikVar.zza;
            if (i17 == i15) {
                i16 = i17;
                i11 = zzj2;
                break;
            }
            i16 = i17;
            i11 = zzi(i17, bArr, zzj2, i12, zze, zzikVar);
        }
        if (i11 <= i12 && i16 == i15) {
            zzmjVar.zzh(i10, zze);
            return i11;
        }
        throw zzkj.zze();
    }

    public static int zzj(byte[] bArr, int i10, zzik zzikVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 < 0) {
            return zzk(b10, bArr, i11, zzikVar);
        }
        zzikVar.zza = b10;
        return i11;
    }

    public static int zzk(int i10, byte[] bArr, int i11, zzik zzikVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            zzikVar.zza = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & Byte.MAX_VALUE) << 7);
        int i15 = i13 + 1;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            zzikVar.zza = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & Byte.MAX_VALUE) << 14);
        int i17 = i15 + 1;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            zzikVar.zza = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & Byte.MAX_VALUE) << 21);
        int i19 = i17 + 1;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            zzikVar.zza = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                zzikVar.zza = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    public static int zzl(int i10, byte[] bArr, int i11, int i12, zzkg<?> zzkgVar, zzik zzikVar) {
        zzka zzkaVar = (zzka) zzkgVar;
        int zzj = zzj(bArr, i11, zzikVar);
        zzkaVar.zzh(zzikVar.zza);
        while (zzj < i12) {
            int zzj2 = zzj(bArr, zzj, zzikVar);
            if (i10 != zzikVar.zza) {
                break;
            }
            zzj = zzj(bArr, zzj2, zzikVar);
            zzkaVar.zzh(zzikVar.zza);
        }
        return zzj;
    }

    public static int zzm(byte[] bArr, int i10, zzik zzikVar) {
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 >= 0) {
            zzikVar.zzb = j10;
            return i11;
        }
        int i12 = i11 + 1;
        byte b10 = bArr[i11];
        long j11 = (j10 & 127) | ((b10 & Byte.MAX_VALUE) << 7);
        int i13 = 7;
        while (b10 < 0) {
            int i14 = i12 + 1;
            i13 += 7;
            j11 |= (r10 & Byte.MAX_VALUE) << i13;
            b10 = bArr[i12];
            i12 = i14;
        }
        zzikVar.zzb = j11;
        return i12;
    }

    public static long zzn(byte[] bArr, int i10) {
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }
}
