package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzdz extends com.google.android.gms.internal.measurement.zzbm implements zzeb {
    public zzdz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final String zzd(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        Parcel zzb = zzb(11, zza);
        String readString = zzb.readString();
        zzb.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final List<zzkv> zze(zzp zzpVar, boolean z10) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        com.google.android.gms.internal.measurement.zzbo.zzc(zza, z10);
        Parcel zzb = zzb(7, zza);
        ArrayList createTypedArrayList = zzb.createTypedArrayList(zzkv.CREATOR);
        zzb.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final List<zzab> zzf(String str, String str2, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        Parcel zzb = zzb(16, zza);
        ArrayList createTypedArrayList = zzb.createTypedArrayList(zzab.CREATOR);
        zzb.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final List<zzab> zzg(String str, String str2, String str3) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(null);
        zza.writeString(str2);
        zza.writeString(str3);
        Parcel zzb = zzb(17, zza);
        ArrayList createTypedArrayList = zzb.createTypedArrayList(zzab.CREATOR);
        zzb.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final List<zzkv> zzh(String str, String str2, boolean z10, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        com.google.android.gms.internal.measurement.zzbo.zzc(zza, z10);
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        Parcel zzb = zzb(14, zza);
        ArrayList createTypedArrayList = zzb.createTypedArrayList(zzkv.CREATOR);
        zzb.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final List<zzkv> zzi(String str, String str2, String str3, boolean z10) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(null);
        zza.writeString(str2);
        zza.writeString(str3);
        com.google.android.gms.internal.measurement.zzbo.zzc(zza, z10);
        Parcel zzb = zzb(15, zza);
        ArrayList createTypedArrayList = zzb.createTypedArrayList(zzkv.CREATOR);
        zzb.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzj(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        zzc(4, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzk(zzat zzatVar, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzatVar);
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        zzc(1, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzl(zzat zzatVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzm(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        zzc(18, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzn(zzab zzabVar, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzabVar);
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        zzc(12, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzo(zzab zzabVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzp(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        zzc(20, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzq(long j10, String str, String str2, String str3) throws RemoteException {
        Parcel zza = zza();
        zza.writeLong(j10);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeString(str3);
        zzc(10, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzr(Bundle bundle, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, bundle);
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        zzc(19, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzs(zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        zzc(6, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final void zzt(zzkv zzkvVar, zzp zzpVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzkvVar);
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzpVar);
        zzc(2, zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzeb
    public final byte[] zzu(zzat zzatVar, String str) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.measurement.zzbo.zzd(zza, zzatVar);
        zza.writeString(str);
        Parcel zzb = zzb(9, zza);
        byte[] createByteArray = zzb.createByteArray();
        zzb.recycle();
        return createByteArray;
    }
}
