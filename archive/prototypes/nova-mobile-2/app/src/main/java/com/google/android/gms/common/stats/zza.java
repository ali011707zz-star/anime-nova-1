package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public final class zza implements Parcelable.Creator<WakeLockEvent> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ WakeLockEvent createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        String str = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        boolean z10 = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    i10 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 2:
                    j10 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
                case 4:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 5:
                    i12 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 6:
                    arrayList = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case 8:
                    j11 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 10:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 11:
                    i11 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 12:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 13:
                    str4 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 14:
                    i13 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 15:
                    f10 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 16:
                    j12 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 17:
                    str5 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 18:
                    z10 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new WakeLockEvent(i10, j10, i11, str, i12, arrayList, str2, j11, i13, str3, str4, f10, j12, str5, z10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ WakeLockEvent[] newArray(int i10) {
        return new WakeLockEvent[i10];
    }
}
