package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
@SafeParcelable.Class(creator = "ConditionalUserPropertyParcelCreator")
/* loaded from: classes.dex */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new zzac();

    @SafeParcelable.Field(id = 2)
    public String zza;

    @SafeParcelable.Field(id = 3)
    public String zzb;

    @SafeParcelable.Field(id = 4)
    public zzkv zzc;

    @SafeParcelable.Field(id = 5)
    public long zzd;

    @SafeParcelable.Field(id = 6)
    public boolean zze;

    @SafeParcelable.Field(id = 7)
    public String zzf;

    @SafeParcelable.Field(id = 8)
    public final zzat zzg;

    @SafeParcelable.Field(id = 9)
    public long zzh;

    @SafeParcelable.Field(id = 10)
    public zzat zzi;

    @SafeParcelable.Field(id = 11)
    public final long zzj;

    @SafeParcelable.Field(id = 12)
    public final zzat zzk;

    public zzab(zzab zzabVar) {
        Preconditions.checkNotNull(zzabVar);
        this.zza = zzabVar.zza;
        this.zzb = zzabVar.zzb;
        this.zzc = zzabVar.zzc;
        this.zzd = zzabVar.zzd;
        this.zze = zzabVar.zze;
        this.zzf = zzabVar.zzf;
        this.zzg = zzabVar.zzg;
        this.zzh = zzabVar.zzh;
        this.zzi = zzabVar.zzi;
        this.zzj = zzabVar.zzj;
        this.zzk = zzabVar.zzk;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzc, i10, false);
        SafeParcelWriter.writeLong(parcel, 5, this.zzd);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zze);
        SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzg, i10, false);
        SafeParcelWriter.writeLong(parcel, 9, this.zzh);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzi, i10, false);
        SafeParcelWriter.writeLong(parcel, 11, this.zzj);
        SafeParcelWriter.writeParcelable(parcel, 12, this.zzk, i10, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zzab(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) zzkv zzkvVar, @SafeParcelable.Param(id = 5) long j10, @SafeParcelable.Param(id = 6) boolean z10, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) zzat zzatVar, @SafeParcelable.Param(id = 9) long j11, @SafeParcelable.Param(id = 10) zzat zzatVar2, @SafeParcelable.Param(id = 11) long j12, @SafeParcelable.Param(id = 12) zzat zzatVar3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzkvVar;
        this.zzd = j10;
        this.zze = z10;
        this.zzf = str3;
        this.zzg = zzatVar;
        this.zzh = j11;
        this.zzi = zzatVar2;
        this.zzj = j12;
        this.zzk = zzatVar3;
    }
}
