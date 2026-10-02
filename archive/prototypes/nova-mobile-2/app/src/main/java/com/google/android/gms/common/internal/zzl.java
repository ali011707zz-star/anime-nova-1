package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public final class zzl implements Parcelable.Creator<GetServiceRequest> {
    public static void zza(GetServiceRequest getServiceRequest, Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getServiceRequest.zza);
        SafeParcelWriter.writeInt(parcel, 2, getServiceRequest.zzb);
        SafeParcelWriter.writeInt(parcel, 3, getServiceRequest.zzc);
        SafeParcelWriter.writeString(parcel, 4, getServiceRequest.zzd, false);
        SafeParcelWriter.writeIBinder(parcel, 5, getServiceRequest.zze, false);
        SafeParcelWriter.writeTypedArray(parcel, 6, getServiceRequest.zzf, i10, false);
        SafeParcelWriter.writeBundle(parcel, 7, getServiceRequest.zzg, false);
        SafeParcelWriter.writeParcelable(parcel, 8, getServiceRequest.zzh, i10, false);
        SafeParcelWriter.writeTypedArray(parcel, 10, getServiceRequest.zzi, i10, false);
        SafeParcelWriter.writeTypedArray(parcel, 11, getServiceRequest.zzj, i10, false);
        SafeParcelWriter.writeBoolean(parcel, 12, getServiceRequest.zzk);
        SafeParcelWriter.writeInt(parcel, 13, getServiceRequest.zzl);
        SafeParcelWriter.writeBoolean(parcel, 14, getServiceRequest.zzm);
        SafeParcelWriter.writeString(parcel, 15, getServiceRequest.zza(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GetServiceRequest createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        Feature[] featureArr = null;
        Feature[] featureArr2 = null;
        String str2 = null;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        boolean z10 = false;
        int i13 = 0;
        boolean z11 = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    i10 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 2:
                    i11 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 3:
                    i12 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 4:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 5:
                    iBinder = SafeParcelReader.readIBinder(parcel, readHeader);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.createTypedArray(parcel, readHeader, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.createBundle(parcel, readHeader);
                    break;
                case 8:
                    account = (Account) SafeParcelReader.createParcelable(parcel, readHeader, Account.CREATOR);
                    break;
                case 9:
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
                case 10:
                    featureArr = (Feature[]) SafeParcelReader.createTypedArray(parcel, readHeader, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.createTypedArray(parcel, readHeader, Feature.CREATOR);
                    break;
                case 12:
                    z10 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 13:
                    i13 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 14:
                    z11 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 15:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new GetServiceRequest(i10, i11, i12, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z10, i13, z11, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GetServiceRequest[] newArray(int i10) {
        return new GetServiceRequest[i10];
    }
}
