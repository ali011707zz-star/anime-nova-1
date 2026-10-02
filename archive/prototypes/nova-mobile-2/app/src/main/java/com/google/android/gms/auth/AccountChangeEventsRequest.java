package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AccountChangeEventsRequestCreator")
/* loaded from: classes.dex */
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new zzb();

    @SafeParcelable.VersionField(id = 1)
    private final int zze;

    @SafeParcelable.Field(id = 3)
    @Deprecated
    private String zzg;

    @SafeParcelable.Field(id = 2)
    private int zzi;

    @SafeParcelable.Field(id = 4)
    private Account zzk;

    @SafeParcelable.Constructor
    public AccountChangeEventsRequest(@SafeParcelable.Param(id = 1) int i10, @SafeParcelable.Param(id = 2) int i11, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) Account account) {
        this.zze = i10;
        this.zzi = i11;
        this.zzg = str;
        if (account == null && !TextUtils.isEmpty(str)) {
            this.zzk = new Account(str, "com.google");
        } else {
            this.zzk = account;
        }
    }

    public Account getAccount() {
        return this.zzk;
    }

    @Deprecated
    public String getAccountName() {
        return this.zzg;
    }

    public int getEventIndex() {
        return this.zzi;
    }

    public AccountChangeEventsRequest setAccount(Account account) {
        this.zzk = account;
        return this;
    }

    @Deprecated
    public AccountChangeEventsRequest setAccountName(String str) {
        this.zzg = str;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int i10) {
        this.zzi = i10;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zze);
        SafeParcelWriter.writeInt(parcel, 2, this.zzi);
        SafeParcelWriter.writeString(parcel, 3, this.zzg, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzk, i10, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public AccountChangeEventsRequest() {
        this.zze = 1;
    }
}
