package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzho extends zzhu<Boolean> {
    public zzho(zzhr zzhrVar, String str, Boolean bool, boolean z10) {
        super(zzhrVar, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzhu
    public final /* bridge */ /* synthetic */ Boolean zza(Object obj) {
        if (zzgv.zzc.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (zzgv.zzd.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        String zzc = super.zzc();
        String str = (String) obj;
        StringBuilder sb2 = new StringBuilder(String.valueOf(zzc).length() + 28 + str.length());
        sb2.append("Invalid boolean value for ");
        sb2.append(zzc);
        sb2.append(": ");
        sb2.append(str);
        return null;
    }
}
