package com.google.android.gms.internal.common;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public final class zzl {
    public static int zza(int i10, int i11, @NullableDecl String str) {
        String zza;
        if (i10 >= 0 && i10 < i11) {
            return i10;
        }
        if (i10 < 0) {
            zza = zzm.zza("%s (%s) must not be negative", "index", Integer.valueOf(i10));
        } else {
            if (i11 < 0) {
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("negative size: ");
                sb2.append(i11);
                throw new IllegalArgumentException(sb2.toString());
            }
            zza = zzm.zza("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IndexOutOfBoundsException(zza);
    }

    public static int zzb(int i10, int i11, @NullableDecl String str) {
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(zzd(i10, i11, "index"));
        }
        return i10;
    }

    public static void zzc(int i10, int i11, int i12) {
        String zzd;
        if (i10 < 0 || i11 < i10 || i11 > i12) {
            if (i10 >= 0 && i10 <= i12) {
                zzd = (i11 < 0 || i11 > i12) ? zzd(i11, i12, "end index") : zzm.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            } else {
                zzd = zzd(i10, i12, "start index");
            }
            throw new IndexOutOfBoundsException(zzd);
        }
    }

    private static String zzd(int i10, int i11, @NullableDecl String str) {
        if (i10 < 0) {
            return zzm.zza("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return zzm.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        StringBuilder sb2 = new StringBuilder(26);
        sb2.append("negative size: ");
        sb2.append(i11);
        throw new IllegalArgumentException(sb2.toString());
    }
}
