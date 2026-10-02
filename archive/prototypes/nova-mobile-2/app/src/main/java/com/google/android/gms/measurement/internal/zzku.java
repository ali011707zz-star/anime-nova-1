package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzlf;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzku extends zzki {
    public zzku(zzks zzksVar) {
        super(zzksVar);
    }

    public static final void zzA(com.google.android.gms.internal.measurement.zzfn zzfnVar, String str, Object obj) {
        List<com.google.android.gms.internal.measurement.zzfs> zzp = zzfnVar.zzp();
        int i10 = 0;
        while (true) {
            if (i10 >= zzp.size()) {
                i10 = -1;
                break;
            } else if (str.equals(zzp.get(i10).zzg())) {
                break;
            } else {
                i10++;
            }
        }
        com.google.android.gms.internal.measurement.zzfr zze = com.google.android.gms.internal.measurement.zzfs.zze();
        zze.zzj(str);
        if (obj instanceof Long) {
            zze.zzi(((Long) obj).longValue());
        } else if (obj instanceof String) {
            zze.zzk((String) obj);
        } else if (obj instanceof Double) {
            zze.zzh(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            zze.zzb(zzq((Bundle[]) obj));
        }
        if (i10 >= 0) {
            zzfnVar.zzj(i10, zze);
        } else {
            zzfnVar.zze(zze);
        }
    }

    public static final boolean zzB(zzat zzatVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzatVar);
        Preconditions.checkNotNull(zzpVar);
        return (TextUtils.isEmpty(zzpVar.zzb) && TextUtils.isEmpty(zzpVar.zzq)) ? false : true;
    }

    public static final com.google.android.gms.internal.measurement.zzfs zzC(com.google.android.gms.internal.measurement.zzfo zzfoVar, String str) {
        for (com.google.android.gms.internal.measurement.zzfs zzfsVar : zzfoVar.zzi()) {
            if (zzfsVar.zzg().equals(str)) {
                return zzfsVar;
            }
        }
        return null;
    }

    public static final Object zzD(com.google.android.gms.internal.measurement.zzfo zzfoVar, String str) {
        com.google.android.gms.internal.measurement.zzfs zzC = zzC(zzfoVar, str);
        if (zzC == null) {
            return null;
        }
        if (zzC.zzy()) {
            return zzC.zzh();
        }
        if (zzC.zzw()) {
            return Long.valueOf(zzC.zzd());
        }
        if (zzC.zzu()) {
            return Double.valueOf(zzC.zza());
        }
        if (zzC.zzc() <= 0) {
            return null;
        }
        List<com.google.android.gms.internal.measurement.zzfs> zzi = zzC.zzi();
        ArrayList arrayList = new ArrayList();
        for (com.google.android.gms.internal.measurement.zzfs zzfsVar : zzi) {
            if (zzfsVar != null) {
                Bundle bundle = new Bundle();
                for (com.google.android.gms.internal.measurement.zzfs zzfsVar2 : zzfsVar.zzi()) {
                    if (zzfsVar2.zzy()) {
                        bundle.putString(zzfsVar2.zzg(), zzfsVar2.zzh());
                    } else if (zzfsVar2.zzw()) {
                        bundle.putLong(zzfsVar2.zzg(), zzfsVar2.zzd());
                    } else if (zzfsVar2.zzu()) {
                        bundle.putDouble(zzfsVar2.zzg(), zzfsVar2.zza());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    private final void zzE(StringBuilder sb2, int i10, List<com.google.android.gms.internal.measurement.zzfs> list) {
        if (list == null) {
            return;
        }
        int i11 = i10 + 1;
        for (com.google.android.gms.internal.measurement.zzfs zzfsVar : list) {
            if (zzfsVar != null) {
                zzG(sb2, i11);
                sb2.append("param {\n");
                zzJ(sb2, i11, AppMeasurementSdk.ConditionalUserProperty.NAME, zzfsVar.zzx() ? this.zzs.zzj().zze(zzfsVar.zzg()) : null);
                zzJ(sb2, i11, "string_value", zzfsVar.zzy() ? zzfsVar.zzh() : null);
                zzJ(sb2, i11, "int_value", zzfsVar.zzw() ? Long.valueOf(zzfsVar.zzd()) : null);
                zzJ(sb2, i11, "double_value", zzfsVar.zzu() ? Double.valueOf(zzfsVar.zza()) : null);
                if (zzfsVar.zzc() > 0) {
                    zzE(sb2, i11, zzfsVar.zzi());
                }
                zzG(sb2, i11);
                sb2.append("}\n");
            }
        }
    }

    private final void zzF(StringBuilder sb2, int i10, com.google.android.gms.internal.measurement.zzel zzelVar) {
        String str;
        if (zzelVar == null) {
            return;
        }
        zzG(sb2, i10);
        sb2.append("filter {\n");
        if (zzelVar.zzh()) {
            zzJ(sb2, i10, "complement", Boolean.valueOf(zzelVar.zzg()));
        }
        if (zzelVar.zzj()) {
            zzJ(sb2, i10, "param_name", this.zzs.zzj().zze(zzelVar.zze()));
        }
        if (zzelVar.zzk()) {
            int i11 = i10 + 1;
            com.google.android.gms.internal.measurement.zzex zzd = zzelVar.zzd();
            if (zzd != null) {
                zzG(sb2, i11);
                sb2.append("string_filter {\n");
                if (zzd.zzi()) {
                    switch (zzd.zzj()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    zzJ(sb2, i11, "match_type", str);
                }
                if (zzd.zzh()) {
                    zzJ(sb2, i11, "expression", zzd.zzd());
                }
                if (zzd.zzg()) {
                    zzJ(sb2, i11, "case_sensitive", Boolean.valueOf(zzd.zzf()));
                }
                if (zzd.zza() > 0) {
                    zzG(sb2, i11 + 1);
                    sb2.append("expression_list {\n");
                    for (String str2 : zzd.zze()) {
                        zzG(sb2, i11 + 2);
                        sb2.append(str2);
                        sb2.append("\n");
                    }
                    sb2.append("}\n");
                }
                zzG(sb2, i11);
                sb2.append("}\n");
            }
        }
        if (zzelVar.zzi()) {
            zzK(sb2, i10 + 1, "number_filter", zzelVar.zzc());
        }
        zzG(sb2, i10);
        sb2.append("}\n");
    }

    private static final void zzG(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append("  ");
        }
    }

    private static final String zzH(boolean z10, boolean z11, boolean z12) {
        StringBuilder sb2 = new StringBuilder();
        if (z10) {
            sb2.append("Dynamic ");
        }
        if (z11) {
            sb2.append("Sequence ");
        }
        if (z12) {
            sb2.append("Session-Scoped ");
        }
        return sb2.toString();
    }

    private static final void zzI(StringBuilder sb2, int i10, String str, com.google.android.gms.internal.measurement.zzgd zzgdVar) {
        if (zzgdVar == null) {
            return;
        }
        zzG(sb2, 3);
        sb2.append(str);
        sb2.append(" {\n");
        if (zzgdVar.zzb() != 0) {
            zzG(sb2, 4);
            sb2.append("results: ");
            int i11 = 0;
            for (Long l10 : zzgdVar.zzk()) {
                int i12 = i11 + 1;
                if (i11 != 0) {
                    sb2.append(", ");
                }
                sb2.append(l10);
                i11 = i12;
            }
            sb2.append('\n');
        }
        if (zzgdVar.zzd() != 0) {
            zzG(sb2, 4);
            sb2.append("status: ");
            int i13 = 0;
            for (Long l11 : zzgdVar.zzn()) {
                int i14 = i13 + 1;
                if (i13 != 0) {
                    sb2.append(", ");
                }
                sb2.append(l11);
                i13 = i14;
            }
            sb2.append('\n');
        }
        if (zzgdVar.zza() != 0) {
            zzG(sb2, 4);
            sb2.append("dynamic_filter_timestamps: {");
            int i15 = 0;
            for (com.google.android.gms.internal.measurement.zzfm zzfmVar : zzgdVar.zzj()) {
                int i16 = i15 + 1;
                if (i15 != 0) {
                    sb2.append(", ");
                }
                sb2.append(zzfmVar.zzh() ? Integer.valueOf(zzfmVar.zza()) : null);
                sb2.append(":");
                sb2.append(zzfmVar.zzg() ? Long.valueOf(zzfmVar.zzb()) : null);
                i15 = i16;
            }
            sb2.append("}\n");
        }
        if (zzgdVar.zzc() != 0) {
            zzG(sb2, 4);
            sb2.append("sequence_filter_timestamps: {");
            int i17 = 0;
            for (com.google.android.gms.internal.measurement.zzgf zzgfVar : zzgdVar.zzm()) {
                int i18 = i17 + 1;
                if (i17 != 0) {
                    sb2.append(", ");
                }
                sb2.append(zzgfVar.zzi() ? Integer.valueOf(zzgfVar.zzb()) : null);
                sb2.append(": [");
                Iterator<Long> it2 = zzgfVar.zzf().iterator();
                int i19 = 0;
                while (it2.hasNext()) {
                    long longValue = it2.next().longValue();
                    int i20 = i19 + 1;
                    if (i19 != 0) {
                        sb2.append(", ");
                    }
                    sb2.append(longValue);
                    i19 = i20;
                }
                sb2.append("]");
                i17 = i18;
            }
            sb2.append("}\n");
        }
        zzG(sb2, 3);
        sb2.append("}\n");
    }

    private static final void zzJ(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zzG(sb2, i10 + 1);
        sb2.append(str);
        sb2.append(": ");
        sb2.append(obj);
        sb2.append('\n');
    }

    private static final void zzK(StringBuilder sb2, int i10, String str, com.google.android.gms.internal.measurement.zzeq zzeqVar) {
        if (zzeqVar == null) {
            return;
        }
        zzG(sb2, i10);
        sb2.append(str);
        sb2.append(" {\n");
        if (zzeqVar.zzg()) {
            int zzm = zzeqVar.zzm();
            zzJ(sb2, i10, "comparison_type", zzm != 1 ? zzm != 2 ? zzm != 3 ? zzm != 4 ? "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN" : "UNKNOWN_COMPARISON_TYPE");
        }
        if (zzeqVar.zzi()) {
            zzJ(sb2, i10, "match_as_float", Boolean.valueOf(zzeqVar.zzf()));
        }
        if (zzeqVar.zzh()) {
            zzJ(sb2, i10, "comparison_value", zzeqVar.zzc());
        }
        if (zzeqVar.zzk()) {
            zzJ(sb2, i10, "min_comparison_value", zzeqVar.zze());
        }
        if (zzeqVar.zzj()) {
            zzJ(sb2, i10, "max_comparison_value", zzeqVar.zzd());
        }
        zzG(sb2, i10);
        sb2.append("}\n");
    }

    public static int zza(com.google.android.gms.internal.measurement.zzfx zzfxVar, String str) {
        for (int i10 = 0; i10 < zzfxVar.zzb(); i10++) {
            if (str.equals(zzfxVar.zzak(i10).zzf())) {
                return i10;
            }
        }
        return -1;
    }

    public static <Builder extends zzlf> Builder zzl(Builder builder, byte[] bArr) throws com.google.android.gms.internal.measurement.zzkj {
        com.google.android.gms.internal.measurement.zzjl zzb = com.google.android.gms.internal.measurement.zzjl.zzb();
        if (zzb != null) {
            return (Builder) builder.zzaw(bArr, zzb);
        }
        return (Builder) builder.zzav(bArr);
    }

    public static List<com.google.android.gms.internal.measurement.zzfs> zzq(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                com.google.android.gms.internal.measurement.zzfr zze = com.google.android.gms.internal.measurement.zzfs.zze();
                for (String str : bundle.keySet()) {
                    com.google.android.gms.internal.measurement.zzfr zze2 = com.google.android.gms.internal.measurement.zzfs.zze();
                    zze2.zzj(str);
                    Object obj = bundle.get(str);
                    if (obj instanceof Long) {
                        zze2.zzi(((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        zze2.zzk((String) obj);
                    } else if (obj instanceof Double) {
                        zze2.zzh(((Double) obj).doubleValue());
                    }
                    zze.zzc(zze2);
                }
                if (zze.zza() > 0) {
                    arrayList.add(zze.zzaA());
                }
            }
        }
        return arrayList;
    }

    public static List<Long> zzs(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i10 = 0; i10 < length; i10++) {
            long j10 = 0;
            for (int i11 = 0; i11 < 64; i11++) {
                int i12 = (i10 * 64) + i11;
                if (i12 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i12)) {
                    j10 |= 1 << i11;
                }
            }
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    public static boolean zzw(List<Long> list, int i10) {
        if (i10 < list.size() * 64) {
            return ((1 << (i10 % 64)) & list.get(i10 / 64).longValue()) != 0;
        }
        return false;
    }

    public static boolean zzy(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    @Override // com.google.android.gms.measurement.internal.zzki
    public final boolean zzb() {
        return false;
    }

    public final long zzd(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        this.zzs.zzv().zzg();
        MessageDigest zzE = zzkz.zzE("MD5");
        if (zzE == null) {
            this.zzs.zzay().zzd().zza("Failed to get MD5");
            return 0L;
        }
        return zzkz.zzp(zzE.digest(bArr));
    }

    public final Bundle zzf(Map<String, Object> map, boolean z10) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z10) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    arrayList2.add(zzf((Map) arrayList.get(i10), false));
                }
                bundle.putParcelableArrayList(str, arrayList2);
            }
        }
        return bundle;
    }

    public final <T extends Parcelable> T zzh(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            return creator.createFromParcel(obtain);
        } catch (SafeParcelReader.ParseException unused) {
            this.zzs.zzay().zzd().zza("Failed to load parcelable from buffer");
            return null;
        } finally {
            obtain.recycle();
        }
    }

    public final zzat zzi(com.google.android.gms.internal.measurement.zzaa zzaaVar) {
        Object obj;
        Bundle zzf = zzf(zzaaVar.zze(), true);
        String obj2 = (!zzf.containsKey("_o") || (obj = zzf.get("_o")) == null) ? "app" : obj.toString();
        String zzb = zzgs.zzb(zzaaVar.zzd());
        if (zzb == null) {
            zzb = zzaaVar.zzd();
        }
        return new zzat(zzb, new zzar(zzf), obj2, zzaaVar.zza());
    }

    public final com.google.android.gms.internal.measurement.zzfo zzj(zzao zzaoVar) {
        com.google.android.gms.internal.measurement.zzfn zze = com.google.android.gms.internal.measurement.zzfo.zze();
        zze.zzl(zzaoVar.zze);
        zzaq zzaqVar = new zzaq(zzaoVar.zzf);
        while (zzaqVar.hasNext()) {
            String next = zzaqVar.next();
            com.google.android.gms.internal.measurement.zzfr zze2 = com.google.android.gms.internal.measurement.zzfs.zze();
            zze2.zzj(next);
            Object zzf = zzaoVar.zzf.zzf(next);
            Preconditions.checkNotNull(zzf);
            zzu(zze2, zzf);
            zze.zze(zze2);
        }
        return zze.zzaA();
    }

    public final String zzm(com.google.android.gms.internal.measurement.zzfw zzfwVar) {
        if (zzfwVar == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nbatch {\n");
        for (com.google.android.gms.internal.measurement.zzfy zzfyVar : zzfwVar.zzd()) {
            if (zzfyVar != null) {
                zzG(sb2, 1);
                sb2.append("bundle {\n");
                if (zzfyVar.zzbh()) {
                    zzJ(sb2, 1, "protocol_version", Integer.valueOf(zzfyVar.zzd()));
                }
                zzJ(sb2, 1, "platform", zzfyVar.zzK());
                if (zzfyVar.zzbd()) {
                    zzJ(sb2, 1, "gmp_version", Long.valueOf(zzfyVar.zzn()));
                }
                if (zzfyVar.zzbn()) {
                    zzJ(sb2, 1, "uploading_gmp_version", Long.valueOf(zzfyVar.zzs()));
                }
                if (zzfyVar.zzbb()) {
                    zzJ(sb2, 1, "dynamite_version", Long.valueOf(zzfyVar.zzk()));
                }
                if (zzfyVar.zzaY()) {
                    zzJ(sb2, 1, "config_version", Long.valueOf(zzfyVar.zzi()));
                }
                zzJ(sb2, 1, "gmp_app_id", zzfyVar.zzH());
                zzJ(sb2, 1, "admob_app_id", zzfyVar.zzx());
                zzJ(sb2, 1, "app_id", zzfyVar.zzy());
                zzJ(sb2, 1, "app_version", zzfyVar.zzB());
                if (zzfyVar.zzaW()) {
                    zzJ(sb2, 1, "app_version_major", Integer.valueOf(zzfyVar.zza()));
                }
                zzJ(sb2, 1, "firebase_instance_id", zzfyVar.zzF());
                if (zzfyVar.zzba()) {
                    zzJ(sb2, 1, "dev_cert_hash", Long.valueOf(zzfyVar.zzj()));
                }
                zzJ(sb2, 1, "app_store", zzfyVar.zzA());
                if (zzfyVar.zzbm()) {
                    zzJ(sb2, 1, "upload_timestamp_millis", Long.valueOf(zzfyVar.zzr()));
                }
                if (zzfyVar.zzbk()) {
                    zzJ(sb2, 1, "start_timestamp_millis", Long.valueOf(zzfyVar.zzq()));
                }
                if (zzfyVar.zzbc()) {
                    zzJ(sb2, 1, "end_timestamp_millis", Long.valueOf(zzfyVar.zzm()));
                }
                if (zzfyVar.zzbg()) {
                    zzJ(sb2, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzfyVar.zzp()));
                }
                if (zzfyVar.zzbf()) {
                    zzJ(sb2, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzfyVar.zzo()));
                }
                zzJ(sb2, 1, "app_instance_id", zzfyVar.zzz());
                zzJ(sb2, 1, "resettable_device_id", zzfyVar.zzL());
                zzJ(sb2, 1, "ds_id", zzfyVar.zzE());
                if (zzfyVar.zzbe()) {
                    zzJ(sb2, 1, "limited_ad_tracking", Boolean.valueOf(zzfyVar.zzaT()));
                }
                zzJ(sb2, 1, "os_version", zzfyVar.zzJ());
                zzJ(sb2, 1, "device_model", zzfyVar.zzD());
                zzJ(sb2, 1, "user_default_language", zzfyVar.zzM());
                if (zzfyVar.zzbl()) {
                    zzJ(sb2, 1, "time_zone_offset_minutes", Integer.valueOf(zzfyVar.zzf()));
                }
                if (zzfyVar.zzaX()) {
                    zzJ(sb2, 1, "bundle_sequential_index", Integer.valueOf(zzfyVar.zzb()));
                }
                if (zzfyVar.zzbj()) {
                    zzJ(sb2, 1, "service_upload", Boolean.valueOf(zzfyVar.zzaU()));
                }
                zzJ(sb2, 1, "health_monitor", zzfyVar.zzI());
                if (!this.zzs.zzf().zzs(null, zzdy.zzan) && zzfyVar.zzaV() && zzfyVar.zzh() != 0) {
                    zzJ(sb2, 1, "android_id", Long.valueOf(zzfyVar.zzh()));
                }
                if (zzfyVar.zzbi()) {
                    zzJ(sb2, 1, "retry_counter", Integer.valueOf(zzfyVar.zze()));
                }
                if (zzfyVar.zzaZ()) {
                    zzJ(sb2, 1, "consent_signals", zzfyVar.zzC());
                }
                List<com.google.android.gms.internal.measurement.zzgh> zzP = zzfyVar.zzP();
                if (zzP != null) {
                    for (com.google.android.gms.internal.measurement.zzgh zzghVar : zzP) {
                        if (zzghVar != null) {
                            zzG(sb2, 2);
                            sb2.append("user_property {\n");
                            zzJ(sb2, 2, "set_timestamp_millis", zzghVar.zzs() ? Long.valueOf(zzghVar.zzc()) : null);
                            zzJ(sb2, 2, AppMeasurementSdk.ConditionalUserProperty.NAME, this.zzs.zzj().zzf(zzghVar.zzf()));
                            zzJ(sb2, 2, "string_value", zzghVar.zzg());
                            zzJ(sb2, 2, "int_value", zzghVar.zzr() ? Long.valueOf(zzghVar.zzb()) : null);
                            zzJ(sb2, 2, "double_value", zzghVar.zzq() ? Double.valueOf(zzghVar.zza()) : null);
                            zzG(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.zzfk> zzN = zzfyVar.zzN();
                if (zzN != null) {
                    for (com.google.android.gms.internal.measurement.zzfk zzfkVar : zzN) {
                        if (zzfkVar != null) {
                            zzG(sb2, 2);
                            sb2.append("audience_membership {\n");
                            if (zzfkVar.zzk()) {
                                zzJ(sb2, 2, "audience_id", Integer.valueOf(zzfkVar.zza()));
                            }
                            if (zzfkVar.zzm()) {
                                zzJ(sb2, 2, "new_audience", Boolean.valueOf(zzfkVar.zzj()));
                            }
                            zzI(sb2, 2, "current_data", zzfkVar.zzd());
                            if (zzfkVar.zzn()) {
                                zzI(sb2, 2, "previous_data", zzfkVar.zze());
                            }
                            zzG(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.zzfo> zzO = zzfyVar.zzO();
                if (zzO != null) {
                    for (com.google.android.gms.internal.measurement.zzfo zzfoVar : zzO) {
                        if (zzfoVar != null) {
                            zzG(sb2, 2);
                            sb2.append("event {\n");
                            zzJ(sb2, 2, AppMeasurementSdk.ConditionalUserProperty.NAME, this.zzs.zzj().zzd(zzfoVar.zzh()));
                            if (zzfoVar.zzu()) {
                                zzJ(sb2, 2, "timestamp_millis", Long.valueOf(zzfoVar.zzd()));
                            }
                            if (zzfoVar.zzt()) {
                                zzJ(sb2, 2, "previous_timestamp_millis", Long.valueOf(zzfoVar.zzc()));
                            }
                            if (zzfoVar.zzs()) {
                                zzJ(sb2, 2, "count", Integer.valueOf(zzfoVar.zza()));
                            }
                            if (zzfoVar.zzb() != 0) {
                                zzE(sb2, 2, zzfoVar.zzi());
                            }
                            zzG(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                zzG(sb2, 1);
                sb2.append("}\n");
            }
        }
        sb2.append("}\n");
        return sb2.toString();
    }

    public final String zzo(com.google.android.gms.internal.measurement.zzej zzejVar) {
        if (zzejVar == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nevent_filter {\n");
        if (zzejVar.zzp()) {
            zzJ(sb2, 0, "filter_id", Integer.valueOf(zzejVar.zzb()));
        }
        zzJ(sb2, 0, "event_name", this.zzs.zzj().zzd(zzejVar.zzg()));
        String zzH = zzH(zzejVar.zzk(), zzejVar.zzm(), zzejVar.zzn());
        if (!zzH.isEmpty()) {
            zzJ(sb2, 0, "filter_type", zzH);
        }
        if (zzejVar.zzo()) {
            zzK(sb2, 1, "event_count_filter", zzejVar.zzf());
        }
        if (zzejVar.zza() > 0) {
            sb2.append("  filters {\n");
            Iterator<com.google.android.gms.internal.measurement.zzel> it2 = zzejVar.zzh().iterator();
            while (it2.hasNext()) {
                zzF(sb2, 2, it2.next());
            }
        }
        zzG(sb2, 1);
        sb2.append("}\n}\n");
        return sb2.toString();
    }

    public final String zzp(com.google.android.gms.internal.measurement.zzes zzesVar) {
        if (zzesVar == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nproperty_filter {\n");
        if (zzesVar.zzj()) {
            zzJ(sb2, 0, "filter_id", Integer.valueOf(zzesVar.zza()));
        }
        zzJ(sb2, 0, "property_name", this.zzs.zzj().zzf(zzesVar.zze()));
        String zzH = zzH(zzesVar.zzg(), zzesVar.zzh(), zzesVar.zzi());
        if (!zzH.isEmpty()) {
            zzJ(sb2, 0, "filter_type", zzH);
        }
        zzF(sb2, 1, zzesVar.zzb());
        sb2.append("}\n");
        return sb2.toString();
    }

    public final List<Long> zzr(List<Long> list, List<Integer> list2) {
        int i10;
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                this.zzs.zzay().zzk().zzb("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.zzs.zzay().zzk().zzc("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & ((1 << (num.intValue() % 64)) ^ (-1))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i11 = size2;
            i10 = size;
            size = i11;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        r4 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
    
        if ((r3 instanceof android.os.Parcelable[]) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003c, code lost:
    
        r3 = (android.os.Parcelable[]) r3;
        r5 = r3.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0040, code lost:
    
        if (r7 >= r5) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
    
        r8 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0046, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        r4.add(zzt((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0051, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0082, code lost:
    
        r0.put(r2, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0056, code lost:
    
        if ((r3 instanceof java.util.ArrayList) == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0058, code lost:
    
        r3 = (java.util.ArrayList) r3;
        r5 = r3.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005f, code lost:
    
        if (r7 >= r5) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0061, code lost:
    
        r8 = r3.get(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0069, code lost:
    
        r4.add(zzt((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0072, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0077, code lost:
    
        if ((r3 instanceof android.os.Bundle) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0079, code lost:
    
        r4.add(zzt((android.os.Bundle) r3, false));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Map<String, Object> zzt(Bundle bundle, boolean z10) {
        HashMap hashMap = new HashMap();
        Iterator<String> it2 = bundle.keySet().iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            Object obj = bundle.get(next);
            if (!(obj instanceof Bundle[]) && !(obj instanceof ArrayList) && !(obj instanceof Bundle)) {
                if (obj != null) {
                    hashMap.put(next, obj);
                }
            }
        }
        return hashMap;
    }

    public final void zzu(com.google.android.gms.internal.measurement.zzfr zzfrVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzfrVar.zzg();
        zzfrVar.zze();
        zzfrVar.zzd();
        zzfrVar.zzf();
        if (obj instanceof String) {
            zzfrVar.zzk((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzfrVar.zzi(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            zzfrVar.zzh(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            zzfrVar.zzb(zzq((Bundle[]) obj));
        } else {
            this.zzs.zzay().zzd().zzb("Ignoring invalid (type) event param value", obj);
        }
    }

    public final void zzv(com.google.android.gms.internal.measurement.zzgg zzggVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzggVar.zzc();
        zzggVar.zzb();
        zzggVar.zza();
        if (obj instanceof String) {
            zzggVar.zzh((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzggVar.zze(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzggVar.zzd(((Double) obj).doubleValue());
        } else {
            this.zzs.zzay().zzd().zzb("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public final boolean zzx(long j10, long j11) {
        return j10 == 0 || j11 <= 0 || Math.abs(this.zzs.zzav().currentTimeMillis() - j10) > j11;
    }

    public final byte[] zzz(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            this.zzs.zzay().zzd().zzb("Failed to gzip content", e10);
            throw e10;
        }
    }
}
