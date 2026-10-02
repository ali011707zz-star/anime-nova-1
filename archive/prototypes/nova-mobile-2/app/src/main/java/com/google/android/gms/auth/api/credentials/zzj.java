package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes.dex */
public final class zzj implements Parcelable.Creator<HintRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        CredentialPickerConfig credentialPickerConfig = null;
        String[] strArr = null;
        String str = null;
        String str2 = null;
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 1000) {
                switch (fieldId) {
                    case 1:
                        credentialPickerConfig = (CredentialPickerConfig) SafeParcelReader.createParcelable(parcel, readHeader, CredentialPickerConfig.CREATOR);
                        break;
                    case 2:
                        z10 = SafeParcelReader.readBoolean(parcel, readHeader);
                        break;
                    case 3:
                        z11 = SafeParcelReader.readBoolean(parcel, readHeader);
                        break;
                    case 4:
                        strArr = SafeParcelReader.createStringArray(parcel, readHeader);
                        break;
                    case 5:
                        z12 = SafeParcelReader.readBoolean(parcel, readHeader);
                        break;
                    case 6:
                        str = SafeParcelReader.createString(parcel, readHeader);
                        break;
                    case 7:
                        str2 = SafeParcelReader.createString(parcel, readHeader);
                        break;
                    default:
                        SafeParcelReader.skipUnknownField(parcel, readHeader);
                        break;
                }
            } else {
                i10 = SafeParcelReader.readInt(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new HintRequest(i10, credentialPickerConfig, z10, z11, strArr, z12, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest[] newArray(int i10) {
        return new HintRequest[i10];
    }
}
