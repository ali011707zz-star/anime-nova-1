package com.google.android.gms.common.server.response;

import android.os.Parcel;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public abstract class FastSafeParcelableJsonResponse extends FastJsonResponse implements SafeParcelable {
    @KeepForSdk
    public FastSafeParcelableJsonResponse() {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @KeepForSdk
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        FastJsonResponse fastJsonResponse = (FastJsonResponse) obj;
        for (FastJsonResponse.Field<?, ?> field : getFieldMappings().values()) {
            if (isFieldSet(field)) {
                if (!fastJsonResponse.isFieldSet(field) || !Objects.equal(getFieldValue(field), fastJsonResponse.getFieldValue(field))) {
                    return false;
                }
            } else if (fastJsonResponse.isFieldSet(field)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @RecentlyNullable
    @VisibleForTesting
    public Object getValueObject(@RecentlyNonNull String str) {
        return null;
    }

    @KeepForSdk
    public int hashCode() {
        int i10 = 0;
        for (FastJsonResponse.Field<?, ?> field : getFieldMappings().values()) {
            if (isFieldSet(field)) {
                i10 = (i10 * 31) + Preconditions.checkNotNull(getFieldValue(field)).hashCode();
            }
        }
        return i10;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @VisibleForTesting
    public boolean isPrimitiveFieldSet(@RecentlyNonNull String str) {
        return false;
    }

    @RecentlyNonNull
    @KeepForSdk
    public byte[] toByteArray() {
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }
}
