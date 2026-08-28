package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public final class zzm {
    private static final Uri zzf = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();
    private final String zza;
    private final String zzb;
    private final ComponentName zzc;
    private final int zzd;
    private final boolean zze;

    public zzm(ComponentName componentName, int i10) {
        this.zza = null;
        this.zzb = null;
        Preconditions.checkNotNull(componentName);
        this.zzc = componentName;
        this.zzd = i10;
        this.zze = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzm)) {
            return false;
        }
        zzm zzmVar = (zzm) obj;
        return Objects.equal(this.zza, zzmVar.zza) && Objects.equal(this.zzb, zzmVar.zzb) && Objects.equal(this.zzc, zzmVar.zzc) && this.zzd == zzmVar.zzd && this.zze == zzmVar.zze;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, Integer.valueOf(this.zzd), Boolean.valueOf(this.zze));
    }

    public final String toString() {
        String str = this.zza;
        if (str != null) {
            return str;
        }
        Preconditions.checkNotNull(this.zzc);
        return this.zzc.flattenToString();
    }

    public final String zza() {
        return this.zzb;
    }

    public final ComponentName zzb() {
        return this.zzc;
    }

    public final int zzc() {
        return this.zzd;
    }

    public final Intent zzd(Context context) {
        Bundle bundle;
        if (this.zza == null) {
            return new Intent().setComponent(this.zzc);
        }
        if (this.zze) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("serviceActionBundleKey", this.zza);
            try {
                bundle = context.getContentResolver().call(zzf, "serviceIntentCall", (String) null, bundle2);
            } catch (IllegalArgumentException e10) {
                String valueOf = String.valueOf(e10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 34);
                sb2.append("Dynamic intent resolution failed: ");
                sb2.append(valueOf);
                bundle = null;
            }
            r1 = bundle != null ? (Intent) bundle.getParcelable("serviceResponseIntentKey") : null;
            if (r1 == null) {
                String valueOf2 = String.valueOf(this.zza);
                if (valueOf2.length() != 0) {
                    "Dynamic lookup for intent failed for action: ".concat(valueOf2);
                }
            }
        }
        return r1 != null ? r1 : new Intent(this.zza).setPackage(this.zzb);
    }

    public zzm(String str, String str2, int i10) {
        this(str, "com.google.android.gms", i10, false);
    }

    public zzm(String str, String str2, int i10, boolean z10) {
        Preconditions.checkNotEmpty(str);
        this.zza = str;
        Preconditions.checkNotEmpty(str2);
        this.zzb = str2;
        this.zzc = null;
        this.zzd = i10;
        this.zze = z10;
    }
}
