package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzkw implements Parcelable.Creator<zzkv> {
    public static void zza(zzkv zzkvVar, Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, zzkvVar.zza);
        SafeParcelWriter.writeString(parcel, 2, zzkvVar.zzb, false);
        SafeParcelWriter.writeLong(parcel, 3, zzkvVar.zzc);
        SafeParcelWriter.writeLongObject(parcel, 4, zzkvVar.zzd, false);
        SafeParcelWriter.writeFloatObject(parcel, 5, null, false);
        SafeParcelWriter.writeString(parcel, 6, zzkvVar.zze, false);
        SafeParcelWriter.writeString(parcel, 7, zzkvVar.zzf, false);
        SafeParcelWriter.writeDoubleObject(parcel, 8, zzkvVar.zzg, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzkv createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        Long l10 = null;
        Float f10 = null;
        String str2 = null;
        String str3 = null;
        Double d10 = null;
        long j10 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    i10 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 2:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 3:
                    j10 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 4:
                    l10 = SafeParcelReader.readLongObject(parcel, readHeader);
                    break;
                case 5:
                    f10 = SafeParcelReader.readFloatObject(parcel, readHeader);
                    break;
                case 6:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 7:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 8:
                    d10 = SafeParcelReader.readDoubleObject(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzkv(i10, str, j10, l10, f10, str2, str3, d10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzkv[] newArray(int i10) {
        return new zzkv[i10];
    }
}
