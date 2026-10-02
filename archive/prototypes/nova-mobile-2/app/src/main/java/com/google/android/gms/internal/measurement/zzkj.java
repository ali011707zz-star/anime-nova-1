package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public class zzkj extends IOException {
    public zzkj(String str) {
        super(str);
    }

    public static zzki zza() {
        return new zzki("Protocol message tag had invalid wire type.");
    }

    public static zzkj zzb() {
        return new zzkj("Protocol message contained an invalid tag (zero).");
    }

    public static zzkj zzc() {
        return new zzkj("Protocol message had invalid UTF-8.");
    }

    public static zzkj zzd() {
        return new zzkj("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzkj zze() {
        return new zzkj("Failed to parse the message.");
    }

    public static zzkj zzf() {
        return new zzkj("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
