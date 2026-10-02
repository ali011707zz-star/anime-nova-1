package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public abstract class zzea extends com.google.android.gms.internal.measurement.zzbn implements zzeb {
    public zzea() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzbn
    public final boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                zzk((zzat) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzat.CREATOR), (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                zzt((zzkv) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzkv.CREATOR), (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                zzj((zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                zzl((zzat) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzat.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzs((zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzkv> zze = zze((zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR), com.google.android.gms.internal.measurement.zzbo.zzf(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(zze);
                return true;
            case 9:
                byte[] zzu = zzu((zzat) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzat.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(zzu);
                return true;
            case 10:
                zzq(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String zzd = zzd((zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(zzd);
                return true;
            case 12:
                zzn((zzab) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzab.CREATOR), (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                zzo((zzab) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzab.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<zzkv> zzh = zzh(parcel.readString(), parcel.readString(), com.google.android.gms.internal.measurement.zzbo.zzf(parcel), (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(zzh);
                return true;
            case 15:
                List<zzkv> zzi = zzi(parcel.readString(), parcel.readString(), parcel.readString(), com.google.android.gms.internal.measurement.zzbo.zzf(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(zzi);
                return true;
            case 16:
                List<zzab> zzf = zzf(parcel.readString(), parcel.readString(), (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(zzf);
                return true;
            case 17:
                List<zzab> zzg = zzg(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(zzg);
                return true;
            case 18:
                zzm((zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 19:
                zzr((Bundle) com.google.android.gms.internal.measurement.zzbo.zza(parcel, Bundle.CREATOR), (zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 20:
                zzp((zzp) com.google.android.gms.internal.measurement.zzbo.zza(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
