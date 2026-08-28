package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public interface zzeb extends IInterface {
    String zzd(zzp zzpVar) throws RemoteException;

    List<zzkv> zze(zzp zzpVar, boolean z10) throws RemoteException;

    List<zzab> zzf(String str, String str2, zzp zzpVar) throws RemoteException;

    List<zzab> zzg(String str, String str2, String str3) throws RemoteException;

    List<zzkv> zzh(String str, String str2, boolean z10, zzp zzpVar) throws RemoteException;

    List<zzkv> zzi(String str, String str2, String str3, boolean z10) throws RemoteException;

    void zzj(zzp zzpVar) throws RemoteException;

    void zzk(zzat zzatVar, zzp zzpVar) throws RemoteException;

    void zzl(zzat zzatVar, String str, String str2) throws RemoteException;

    void zzm(zzp zzpVar) throws RemoteException;

    void zzn(zzab zzabVar, zzp zzpVar) throws RemoteException;

    void zzo(zzab zzabVar) throws RemoteException;

    void zzp(zzp zzpVar) throws RemoteException;

    void zzq(long j10, String str, String str2, String str3) throws RemoteException;

    void zzr(Bundle bundle, zzp zzpVar) throws RemoteException;

    void zzs(zzp zzpVar) throws RemoteException;

    void zzt(zzkv zzkvVar, zzp zzpVar) throws RemoteException;

    byte[] zzu(zzat zzatVar, String str) throws RemoteException;
}
