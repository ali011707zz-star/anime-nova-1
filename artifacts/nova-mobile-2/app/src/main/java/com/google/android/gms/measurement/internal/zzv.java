package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzv {
    public final /* synthetic */ zzz zza;
    private com.google.android.gms.internal.measurement.zzfo zzb;
    private Long zzc;
    private long zzd;

    public /* synthetic */ zzv(zzz zzzVar, zzu zzuVar) {
        this.zza = zzzVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00fa, code lost:
    
        if (r14 == null) goto L38;
     */
    /* JADX WARN: Not initialized variable reg: 14, insn: 0x01df: MOVE (r5 I:??[OBJECT, ARRAY]) = (r14 I:??[OBJECT, ARRAY]), block:B:70:0x01df */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.google.android.gms.internal.measurement.zzfo zza(String str, com.google.android.gms.internal.measurement.zzfo zzfoVar) {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3;
        Pair pair;
        Object obj;
        String zzh = zzfoVar.zzh();
        List<com.google.android.gms.internal.measurement.zzfs> zzi = zzfoVar.zzi();
        this.zza.zzf.zzu();
        Long l10 = (Long) zzku.zzD(zzfoVar, "_eid");
        if (l10 != null) {
            if (zzh.equals("_ep")) {
                Preconditions.checkNotNull(l10);
                this.zza.zzf.zzu();
                String str2 = (String) zzku.zzD(zzfoVar, "_en");
                if (TextUtils.isEmpty(str2)) {
                    this.zza.zzs.zzay().zzh().zzb("Extra parameter without an event name. eventId", l10);
                    return null;
                }
                if (this.zzb == null || this.zzc == null || l10.longValue() != this.zzc.longValue()) {
                    zzaj zzi2 = this.zza.zzf.zzi();
                    zzi2.zzg();
                    zzi2.zzY();
                    try {
                        try {
                            cursor2 = zzi2.zzh().rawQuery("select main_event, children_to_process from main_event_params where app_id=? and event_id=?", new String[]{str, String.valueOf(l10)});
                            try {
                                if (!cursor2.moveToFirst()) {
                                    zzi2.zzs.zzay().zzj().zza("Main event not found");
                                    cursor2.close();
                                    pair = null;
                                } else {
                                    try {
                                        pair = Pair.create(((com.google.android.gms.internal.measurement.zzfn) zzku.zzl(com.google.android.gms.internal.measurement.zzfo.zze(), cursor2.getBlob(0))).zzaA(), Long.valueOf(cursor2.getLong(1)));
                                        cursor2.close();
                                    } catch (IOException e10) {
                                        zzi2.zzs.zzay().zzd().zzd("Failed to merge main event. appId, eventId", zzel.zzn(str), l10, e10);
                                        cursor2.close();
                                        pair = null;
                                        if (pair == null) {
                                        }
                                        this.zza.zzs.zzay().zzh().zzc("Extra parameter without existing main event. eventName, eventId", str2, l10);
                                        return null;
                                    }
                                }
                            } catch (SQLiteException e11) {
                                e = e11;
                                zzi2.zzs.zzay().zzd().zzb("Error selecting main event", e);
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = cursor3;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    } catch (SQLiteException e12) {
                        e = e12;
                        cursor2 = null;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = null;
                        if (cursor != null) {
                        }
                        throw th;
                    }
                    if (pair == null && (obj = pair.first) != null) {
                        this.zzb = (com.google.android.gms.internal.measurement.zzfo) obj;
                        this.zzd = ((Long) pair.second).longValue();
                        this.zza.zzf.zzu();
                        this.zzc = (Long) zzku.zzD(this.zzb, "_eid");
                    } else {
                        this.zza.zzs.zzay().zzh().zzc("Extra parameter without existing main event. eventName, eventId", str2, l10);
                        return null;
                    }
                }
                long j10 = this.zzd - 1;
                this.zzd = j10;
                if (j10 <= 0) {
                    zzaj zzi3 = this.zza.zzf.zzi();
                    zzi3.zzg();
                    zzi3.zzs.zzay().zzj().zzb("Clearing complex main event info. appId", str);
                    try {
                        zzi3.zzh().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                    } catch (SQLiteException e13) {
                        zzi3.zzs.zzay().zzd().zzb("Error clearing complex main event", e13);
                    }
                } else {
                    this.zza.zzf.zzi().zzL(str, l10, this.zzd, this.zzb);
                }
                ArrayList arrayList = new ArrayList();
                for (com.google.android.gms.internal.measurement.zzfs zzfsVar : this.zzb.zzi()) {
                    this.zza.zzf.zzu();
                    if (zzku.zzC(zzfoVar, zzfsVar.zzg()) == null) {
                        arrayList.add(zzfsVar);
                    }
                }
                if (!arrayList.isEmpty()) {
                    arrayList.addAll(zzi);
                    zzi = arrayList;
                } else {
                    this.zza.zzs.zzay().zzh().zzb("No unique parameters in main event. eventName", str2);
                }
                zzh = str2;
            } else {
                this.zzc = l10;
                this.zzb = zzfoVar;
                this.zza.zzf.zzu();
                Object zzD = zzku.zzD(zzfoVar, "_epc");
                long longValue = ((Long) (zzD != null ? zzD : 0L)).longValue();
                this.zzd = longValue;
                if (longValue <= 0) {
                    this.zza.zzs.zzay().zzh().zzb("Complex event with zero extra param count. eventName", zzh);
                } else {
                    this.zza.zzf.zzi().zzL(str, (Long) Preconditions.checkNotNull(l10), this.zzd, zzfoVar);
                }
            }
        }
        com.google.android.gms.internal.measurement.zzfn zzbv = zzfoVar.zzbv();
        zzbv.zzi(zzh);
        zzbv.zzg();
        zzbv.zzd(zzi);
        return zzbv.zzaA();
    }
}
