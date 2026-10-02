package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@KeepForSdk
@SafeParcelable.Class(creator = "TelemetryDataCreator")
/* loaded from: classes.dex */
public class TelemetryData extends AbstractSafeParcelable {

    @RecentlyNonNull
    public static final Parcelable.Creator<TelemetryData> CREATOR = new zaab();

    @SafeParcelable.Field(getter = "getTelemetryConfigVersion", id = 1)
    private final int zaa;

    @Nullable
    @SafeParcelable.Field(getter = "getMethodInvocations", id = 2)
    private List<MethodInvocation> zab;

    @SafeParcelable.Constructor
    public TelemetryData(@SafeParcelable.Param(id = 1) int i10, @SafeParcelable.Param(id = 2) @Nullable List<MethodInvocation> list) {
        this.zaa = i10;
        this.zab = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeTypedList(parcel, 2, this.zab, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final int zaa() {
        return this.zaa;
    }

    @RecentlyNullable
    public final List<MethodInvocation> zab() {
        return this.zab;
    }

    public final void zac(@RecentlyNonNull MethodInvocation methodInvocation) {
        if (this.zab == null) {
            this.zab = new ArrayList();
        }
        this.zab.add(methodInvocation);
    }
}
