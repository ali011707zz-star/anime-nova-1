package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "DeviceMetaDataCreator")
/* loaded from: classes.dex */
public class DeviceMetaData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new zzv();

    @SafeParcelable.Field(getter = "isLockScreenSolved", id = 2)
    private boolean zzbs;

    @SafeParcelable.Field(getter = "getMinAgeOfLockScreen", id = 3)
    private long zzbt;

    @SafeParcelable.Field(getter = "isChallengeAllowed", id = 4)
    private final boolean zzbu;

    @SafeParcelable.VersionField(id = 1)
    private final int zzv;

    @SafeParcelable.Constructor
    public DeviceMetaData(@SafeParcelable.Param(id = 1) int i10, @SafeParcelable.Param(id = 2) boolean z10, @SafeParcelable.Param(id = 3) long j10, @SafeParcelable.Param(id = 4) boolean z11) {
        this.zzv = i10;
        this.zzbs = z10;
        this.zzbt = j10;
        this.zzbu = z11;
    }

    public long getMinAgeOfLockScreen() {
        return this.zzbt;
    }

    public boolean isChallengeAllowed() {
        return this.zzbu;
    }

    public boolean isLockScreenSolved() {
        return this.zzbs;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzv);
        SafeParcelWriter.writeBoolean(parcel, 2, isLockScreenSolved());
        SafeParcelWriter.writeLong(parcel, 3, getMinAgeOfLockScreen());
        SafeParcelWriter.writeBoolean(parcel, 4, isChallengeAllowed());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
