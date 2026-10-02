package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@KeepForSdkWithMembers
@SafeParcelable.Class(creator = "ProxyResponseCreator")
/* loaded from: classes.dex */
public class ProxyResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyResponse> CREATOR = new zzb();
    public static final int STATUS_CODE_NO_CONNECTION = -1;

    @SafeParcelable.Field(id = 5)
    public final byte[] body;

    @SafeParcelable.Field(id = 1)
    public final int googlePlayServicesStatusCode;

    @SafeParcelable.Field(id = 2)
    public final PendingIntent recoveryAction;

    @SafeParcelable.Field(id = 3)
    public final int statusCode;

    @SafeParcelable.VersionField(id = 1000)
    private final int versionCode;

    @SafeParcelable.Field(id = 4)
    private final Bundle zzby;

    @SafeParcelable.Constructor
    public ProxyResponse(@SafeParcelable.Param(id = 1000) int i10, @SafeParcelable.Param(id = 1) int i11, @SafeParcelable.Param(id = 2) PendingIntent pendingIntent, @SafeParcelable.Param(id = 3) int i12, @SafeParcelable.Param(id = 4) Bundle bundle, @SafeParcelable.Param(id = 5) byte[] bArr) {
        this.versionCode = i10;
        this.googlePlayServicesStatusCode = i11;
        this.statusCode = i12;
        this.zzby = bundle;
        this.body = bArr;
        this.recoveryAction = pendingIntent;
    }

    public static ProxyResponse createErrorProxyResponse(int i10, PendingIntent pendingIntent, int i11, Map<String, String> map, byte[] bArr) {
        return new ProxyResponse(1, i10, pendingIntent, i11, zza(map), bArr);
    }

    private static Bundle zza(Map<String, String> map) {
        Bundle bundle = new Bundle();
        if (map == null) {
            return bundle;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    public Map<String, String> getHeaders() {
        if (this.zzby == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str : this.zzby.keySet()) {
            hashMap.put(str, this.zzby.getString(str));
        }
        return hashMap;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.googlePlayServicesStatusCode);
        SafeParcelWriter.writeParcelable(parcel, 2, this.recoveryAction, i10, false);
        SafeParcelWriter.writeInt(parcel, 3, this.statusCode);
        SafeParcelWriter.writeBundle(parcel, 4, this.zzby, false);
        SafeParcelWriter.writeByteArray(parcel, 5, this.body, false);
        SafeParcelWriter.writeInt(parcel, 1000, this.versionCode);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public ProxyResponse(int i10, PendingIntent pendingIntent, int i11, Bundle bundle, byte[] bArr) {
        this(1, i10, pendingIntent, i11, bundle, bArr);
    }

    private ProxyResponse(int i10, Bundle bundle, byte[] bArr) {
        this(1, 0, null, i10, bundle, bArr);
    }

    public ProxyResponse(int i10, Map<String, String> map, byte[] bArr) {
        this(i10, zza(map), bArr);
    }
}
