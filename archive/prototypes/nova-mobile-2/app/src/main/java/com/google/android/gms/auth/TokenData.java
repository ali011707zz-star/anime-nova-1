package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@SafeParcelable.Class(creator = "TokenDataCreator")
/* loaded from: classes.dex */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new zzk();

    @SafeParcelable.Field(getter = "getGrantedScopes", id = 6)
    private final List<String> zzaa;

    @SafeParcelable.Field(getter = "getScopeData", id = 7)
    private final String zzab;

    @SafeParcelable.VersionField(id = 1)
    private final int zzv;

    @SafeParcelable.Field(getter = "getToken", id = 2)
    private final String zzw;

    @SafeParcelable.Field(getter = "getExpirationTimeSecs", id = 3)
    private final Long zzx;

    @SafeParcelable.Field(getter = "isCached", id = 4)
    private final boolean zzy;

    @SafeParcelable.Field(getter = "isSnowballed", id = 5)
    private final boolean zzz;

    @SafeParcelable.Constructor
    public TokenData(@SafeParcelable.Param(id = 1) int i10, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) Long l10, @SafeParcelable.Param(id = 4) boolean z10, @SafeParcelable.Param(id = 5) boolean z11, @SafeParcelable.Param(id = 6) List<String> list, @SafeParcelable.Param(id = 7) String str2) {
        this.zzv = i10;
        this.zzw = Preconditions.checkNotEmpty(str);
        this.zzx = l10;
        this.zzy = z10;
        this.zzz = z11;
        this.zzaa = list;
        this.zzab = str2;
    }

    public static TokenData zza(Bundle bundle, String str) {
        bundle.setClassLoader(TokenData.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(TokenData.class.getClassLoader());
        return (TokenData) bundle2.getParcelable("TokenData");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.zzw, tokenData.zzw) && Objects.equal(this.zzx, tokenData.zzx) && this.zzy == tokenData.zzy && this.zzz == tokenData.zzz && Objects.equal(this.zzaa, tokenData.zzaa) && Objects.equal(this.zzab, tokenData.zzab);
    }

    public int hashCode() {
        return Objects.hashCode(this.zzw, this.zzx, Boolean.valueOf(this.zzy), Boolean.valueOf(this.zzz), this.zzaa, this.zzab);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzv);
        SafeParcelWriter.writeString(parcel, 2, this.zzw, false);
        SafeParcelWriter.writeLongObject(parcel, 3, this.zzx, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzy);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzz);
        SafeParcelWriter.writeStringList(parcel, 6, this.zzaa, false);
        SafeParcelWriter.writeString(parcel, 7, this.zzab, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final String zzb() {
        return this.zzw;
    }
}
