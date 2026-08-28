package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
final class zzie<T> implements Serializable, zzib {
    public final T zza;

    public zzie(T t10) {
        this.zza = t10;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof zzie)) {
            return false;
        }
        T t10 = this.zza;
        T t11 = ((zzie) obj).zza;
        return t10 == t11 || t10.equals(t11);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 22);
        sb2.append("Suppliers.ofInstance(");
        sb2.append(valueOf);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final T zza() {
        return this.zza;
    }
}
