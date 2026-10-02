package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzmq extends zzmr {
    public zzmq(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final double zza(Object obj, long j10) {
        return Double.longBitsToDouble(zzk(obj, j10));
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final float zzb(Object obj, long j10) {
        return Float.intBitsToFloat(zzj(obj, j10));
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final void zzc(Object obj, long j10, boolean z10) {
        if (zzms.zzb) {
            zzms.zzD(obj, j10, r3 ? (byte) 1 : (byte) 0);
        } else {
            zzms.zzE(obj, j10, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final void zzd(Object obj, long j10, byte b10) {
        if (zzms.zzb) {
            zzms.zzD(obj, j10, b10);
        } else {
            zzms.zzE(obj, j10, b10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final void zze(Object obj, long j10, double d10) {
        zzo(obj, j10, Double.doubleToLongBits(d10));
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final void zzf(Object obj, long j10, float f10) {
        zzn(obj, j10, Float.floatToIntBits(f10));
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final boolean zzg(Object obj, long j10) {
        if (zzms.zzb) {
            return zzms.zzt(obj, j10);
        }
        return zzms.zzu(obj, j10);
    }
}
