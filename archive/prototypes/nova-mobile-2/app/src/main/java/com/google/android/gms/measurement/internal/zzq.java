package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzq implements Parcelable.Creator<zzp> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzp createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Boolean bool = null;
        ArrayList<String> arrayList = null;
        String str8 = null;
        String str9 = "";
        long j15 = -2147483648L;
        boolean z10 = true;
        boolean z11 = false;
        int i10 = 0;
        boolean z12 = true;
        boolean z13 = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 3:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 4:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 5:
                    str4 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 6:
                    j10 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 7:
                    j11 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 8:
                    str5 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 9:
                    z10 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 10:
                    z11 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 11:
                    j15 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 12:
                    str6 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 13:
                    j12 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 14:
                    j13 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 15:
                    i10 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 16:
                    z12 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 17:
                case 20:
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
                case 18:
                    z13 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 19:
                    str7 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 21:
                    bool = SafeParcelReader.readBooleanObject(parcel, readHeader);
                    break;
                case 22:
                    j14 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 23:
                    arrayList = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case 24:
                    str8 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 25:
                    str9 = SafeParcelReader.createString(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzp(str, str2, str3, str4, j10, j11, str5, z10, z11, j15, str6, j12, j13, i10, z12, z13, str7, bool, j14, arrayList, str8, str9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzp[] newArray(int i10) {
        return new zzp[i10];
    }
}
