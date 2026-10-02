package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzhp extends zzhu<Double> {
    public zzhp(zzhr zzhrVar, String str, Double d10, boolean z10) {
        super(zzhrVar, "measurement.test.double_flag", d10, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzhu
    public final /* bridge */ /* synthetic */ Double zza(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            String zzc = super.zzc();
            String str = (String) obj;
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzc).length() + 27 + str.length());
            sb2.append("Invalid double value for ");
            sb2.append(zzc);
            sb2.append(": ");
            sb2.append(str);
            return null;
        }
    }
}
