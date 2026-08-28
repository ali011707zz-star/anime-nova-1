package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzot;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzaj extends zzki {
    private static final String[] zza = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    private static final String[] zzb = {AppMeasurementSdk.ConditionalUserProperty.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzc = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"};
    private static final String[] zzd = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zze = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzg = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzh = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzi = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final zzai zzj;
    private final zzke zzk;

    public zzaj(zzks zzksVar) {
        super(zzksVar);
        this.zzk = new zzke(this.zzs.zzav());
        this.zzs.zzf();
        this.zzj = new zzai(this, this.zzs.zzau(), "google_app_measurement.db");
    }

    public static final void zzX(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (Long) obj);
        } else {
            if (obj instanceof Double) {
                contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (Double) obj);
                return;
            }
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    private final long zzab(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = zzh().rawQuery(str, strArr);
                if (rawQuery.moveToFirst()) {
                    long j10 = rawQuery.getLong(0);
                    rawQuery.close();
                    return j10;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e10) {
                this.zzs.zzay().zzd().zzc("Database error", str, e10);
                throw e10;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long zzac(String str, String[] strArr, long j10) {
        Cursor cursor = null;
        try {
            try {
                cursor = zzh().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return j10;
                }
                long j11 = cursor.getLong(0);
                cursor.close();
                return j11;
            } catch (SQLiteException e10) {
                this.zzs.zzay().zzd().zzc("Database error", str, e10);
                throw e10;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final void zzA() {
        zzg();
        zzY();
        if (zzK()) {
            long zza2 = this.zzf.zzs().zza.zza();
            long elapsedRealtime = this.zzs.zzav().elapsedRealtime();
            long abs = Math.abs(elapsedRealtime - zza2);
            this.zzs.zzf();
            if (abs > zzdy.zzx.zza(null).longValue()) {
                this.zzf.zzs().zza.zzb(elapsedRealtime);
                zzg();
                zzY();
                if (zzK()) {
                    SQLiteDatabase zzh2 = zzh();
                    this.zzs.zzf();
                    int delete = zzh2.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(this.zzs.zzav().currentTimeMillis()), String.valueOf(zzaf.zzA())});
                    if (delete > 0) {
                        this.zzs.zzay().zzj().zzb("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                    }
                }
            }
        }
    }

    public final void zzB(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzY();
        try {
            zzh().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e10) {
            this.zzs.zzay().zzd().zzd("Error deleting user property. appId", zzel.zzn(str), this.zzs.zzj().zzf(str2), e10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0264, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0248, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01f2, code lost:
    
        r0 = r23.zzs.zzay().zzk();
        r8 = com.google.android.gms.measurement.internal.zzel.zzn(r24);
        r11 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x020a, code lost:
    
        if (r12.zzp() == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x020c, code lost:
    
        r20 = java.lang.Integer.valueOf(r12.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0219, code lost:
    
        r0.zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r8, r11, java.lang.String.valueOf(r20));
        r21 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0217, code lost:
    
        r20 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02aa, code lost:
    
        r21 = r4;
        r0 = r0.zzh().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02b8, code lost:
    
        if (r0.hasNext() == false) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02ba, code lost:
    
        r3 = r0.next();
        zzY();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r24);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02d4, code lost:
    
        if (android.text.TextUtils.isEmpty(r3.zze()) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0303, code lost:
    
        r4 = r3.zzbs();
        r11 = new android.content.ContentValues();
        r11.put("app_id", r24);
        r11.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x031a, code lost:
    
        if (r3.zzj() == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x031c, code lost:
    
        r12 = java.lang.Integer.valueOf(r3.zza());
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0326, code lost:
    
        r11.put("filter_id", r12);
        r22 = r0;
        r11.put("property_name", r3.zze());
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0338, code lost:
    
        if (r3.zzk() == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x033a, code lost:
    
        r0 = java.lang.Boolean.valueOf(r3.zzi());
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0344, code lost:
    
        r11.put("session_scoped", r0);
        r11.put("data", r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0358, code lost:
    
        if (zzh().insertWithOnConflict("property_filters", null, r11, 5) != (-1)) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x036e, code lost:
    
        r0 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x035a, code lost:
    
        r23.zzs.zzay().zzd().zzb("Failed to insert property filter (got -1). appId", com.google.android.gms.measurement.internal.zzel.zzn(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0372, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0373, code lost:
    
        r23.zzs.zzay().zzd().zzc("Error storing property filter. appId", com.google.android.gms.measurement.internal.zzel.zzn(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0343, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0325, code lost:
    
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02d6, code lost:
    
        r0 = r23.zzs.zzay().zzk();
        r7 = com.google.android.gms.measurement.internal.zzel.zzn(r24);
        r8 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x02ee, code lost:
    
        if (r3.zzj() == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x02f0, code lost:
    
        r3 = java.lang.Integer.valueOf(r3.zza());
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x02fa, code lost:
    
        r0.zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r7, r8, java.lang.String.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x02f9, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x03bd, code lost:
    
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x018b, code lost:
    
        r11 = r0.zzh().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0197, code lost:
    
        if (r11.hasNext() == false) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01a3, code lost:
    
        if (r11.next().zzj() != false) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01a5, code lost:
    
        r23.zzs.zzay().zzk().zzc("Property filter with no ID. Audience definition ignored. appId, audienceId", com.google.android.gms.measurement.internal.zzel.zzn(r24), java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01be, code lost:
    
        r11 = r0.zzg().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01d4, code lost:
    
        if (r11.hasNext() == false) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01d6, code lost:
    
        r12 = r11.next();
        zzY();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r24);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01f0, code lost:
    
        if (android.text.TextUtils.isEmpty(r12.zzg()) == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0224, code lost:
    
        r3 = r12.zzbs();
        r21 = r4;
        r4 = new android.content.ContentValues();
        r4.put("app_id", r24);
        r4.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x023d, code lost:
    
        if (r12.zzp() == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x023f, code lost:
    
        r8 = java.lang.Integer.valueOf(r12.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0249, code lost:
    
        r4.put("filter_id", r8);
        r4.put("event_name", r12.zzg());
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0259, code lost:
    
        if (r12.zzq() == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x025b, code lost:
    
        r8 = java.lang.Boolean.valueOf(r12.zzn());
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0265, code lost:
    
        r4.put("session_scoped", r8);
        r4.put("data", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0279, code lost:
    
        if (zzh().insertWithOnConflict("event_filters", null, r4, 5) != (-1)) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x027b, code lost:
    
        r23.zzs.zzay().zzd().zzb("Failed to insert event filter (got -1). appId", com.google.android.gms.measurement.internal.zzel.zzn(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x028e, code lost:
    
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0294, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0295, code lost:
    
        r23.zzs.zzay().zzd().zzc("Error storing event filter. appId", com.google.android.gms.measurement.internal.zzel.zzn(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0386, code lost:
    
        zzY();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r24);
        r0 = zzh();
        r3 = r17;
        r0.delete("property_filters", r3, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r0.delete("event_filters", r3, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r17 = r3;
        r4 = r21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzC(String str, List<com.google.android.gms.internal.measurement.zzeh> list) {
        String str2;
        com.google.android.gms.internal.measurement.zzeg zzegVar;
        boolean z10;
        String str3 = "app_id=? and audience_id=?";
        Preconditions.checkNotNull(list);
        int i10 = 0;
        while (i10 < list.size()) {
            com.google.android.gms.internal.measurement.zzeg zzbv = list.get(i10).zzbv();
            if (zzbv.zza() != 0) {
                zzegVar = zzbv;
                int i11 = 0;
                while (i11 < zzegVar.zza()) {
                    com.google.android.gms.internal.measurement.zzei zzbv2 = zzegVar.zze(i11).zzbv();
                    com.google.android.gms.internal.measurement.zzei clone = zzbv2.clone();
                    String zzb2 = zzgs.zzb(zzbv2.zze());
                    if (zzb2 != null) {
                        clone.zzb(zzb2);
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    int i12 = 0;
                    while (i12 < zzbv2.zza()) {
                        com.google.android.gms.internal.measurement.zzel zzd2 = zzbv2.zzd(i12);
                        com.google.android.gms.internal.measurement.zzei zzeiVar = zzbv2;
                        String str4 = str3;
                        String zzb3 = zzig.zzb(zzd2.zze(), zzgt.zza, zzgt.zzb);
                        if (zzb3 != null) {
                            com.google.android.gms.internal.measurement.zzek zzbv3 = zzd2.zzbv();
                            zzbv3.zza(zzb3);
                            clone.zzc(i12, zzbv3.zzaA());
                            z10 = true;
                        }
                        i12++;
                        zzbv2 = zzeiVar;
                        str3 = str4;
                    }
                    String str5 = str3;
                    if (z10) {
                        zzegVar.zzc(i11, clone);
                        list.set(i10, zzbv.zzaA());
                        zzegVar = zzbv;
                    }
                    i11++;
                    str3 = str5;
                }
                str2 = str3;
            } else {
                str2 = str3;
                zzegVar = zzbv;
            }
            if (zzegVar.zzb() != 0) {
                for (int i13 = 0; i13 < zzegVar.zzb(); i13++) {
                    com.google.android.gms.internal.measurement.zzes zzf = zzegVar.zzf(i13);
                    String zzb4 = zzig.zzb(zzf.zze(), zzgu.zza, zzgu.zzb);
                    if (zzb4 != null) {
                        com.google.android.gms.internal.measurement.zzer zzbv4 = zzf.zzbv();
                        zzbv4.zza(zzb4);
                        zzegVar.zzd(i13, zzbv4);
                        list.set(i10, zzbv.zzaA());
                        zzegVar = zzbv;
                    }
                }
            }
            i10++;
            str3 = str2;
        }
        String str6 = str3;
        zzY();
        zzg();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(list);
        SQLiteDatabase zzh2 = zzh();
        zzh2.beginTransaction();
        try {
            zzY();
            zzg();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase zzh3 = zzh();
            zzh3.delete("property_filters", "app_id=?", new String[]{str});
            zzh3.delete("event_filters", "app_id=?", new String[]{str});
            Iterator<com.google.android.gms.internal.measurement.zzeh> it2 = list.iterator();
            while (it2.hasNext()) {
                com.google.android.gms.internal.measurement.zzeh next = it2.next();
                zzY();
                zzg();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(next);
                if (!next.zzk()) {
                    try {
                        this.zzs.zzay().zzk().zzb("Audience with no ID. appId", zzel.zzn(str));
                    } catch (Throwable th) {
                        th = th;
                        zzh2.endTransaction();
                        throw th;
                    }
                } else {
                    int zza2 = next.zza();
                    Iterator<com.google.android.gms.internal.measurement.zzej> it3 = next.zzg().iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (!it3.next().zzp()) {
                                this.zzs.zzay().zzk().zzc("Event filter with no ID. Audience definition ignored. appId, audienceId", zzel.zzn(str), Integer.valueOf(zza2));
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (com.google.android.gms.internal.measurement.zzeh zzehVar : list) {
                arrayList.add(zzehVar.zzk() ? Integer.valueOf(zzehVar.zza()) : null);
            }
            Preconditions.checkNotEmpty(str);
            zzY();
            zzg();
            SQLiteDatabase zzh4 = zzh();
            try {
                long zzab = zzab("select count(1) from audience_filter_values where app_id=?", new String[]{str});
                int max = Math.max(0, Math.min(2000, this.zzs.zzf().zze(str, zzdy.zzE)));
                if (zzab > max) {
                    ArrayList arrayList2 = new ArrayList();
                    int i14 = 0;
                    while (true) {
                        if (i14 < arrayList.size()) {
                            Integer num = (Integer) arrayList.get(i14);
                            if (num == null) {
                                break;
                            }
                            arrayList2.add(Integer.toString(num.intValue()));
                            i14++;
                        } else {
                            String join = TextUtils.join(",", arrayList2);
                            StringBuilder sb2 = new StringBuilder(String.valueOf(join).length() + 2);
                            sb2.append("(");
                            sb2.append(join);
                            sb2.append(")");
                            String sb3 = sb2.toString();
                            StringBuilder sb4 = new StringBuilder(String.valueOf(sb3).length() + TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE);
                            sb4.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
                            sb4.append(sb3);
                            sb4.append(" order by rowid desc limit -1 offset ?)");
                            zzh4.delete("audience_filter_values", sb4.toString(), new String[]{str, Integer.toString(max)});
                            break;
                        }
                    }
                }
            } catch (SQLiteException e10) {
                this.zzs.zzay().zzd().zzc("Database error querying filters. appId", zzel.zzn(str), e10);
            }
            zzh2.setTransactionSuccessful();
            zzh2.endTransaction();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void zzD() {
        zzY();
        zzh().setTransactionSuccessful();
    }

    public final void zzE(zzg zzgVar) {
        Preconditions.checkNotNull(zzgVar);
        zzg();
        zzY();
        String zzt = zzgVar.zzt();
        Preconditions.checkNotNull(zzt);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzt);
        contentValues.put("app_instance_id", zzgVar.zzu());
        contentValues.put("gmp_app_id", zzgVar.zzz());
        contentValues.put("resettable_device_id_hash", zzgVar.zzB());
        contentValues.put("last_bundle_index", Long.valueOf(zzgVar.zzo()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzgVar.zzp()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzgVar.zzn()));
        contentValues.put("app_version", zzgVar.zzw());
        contentValues.put("app_store", zzgVar.zzv());
        contentValues.put("gmp_version", Long.valueOf(zzgVar.zzm()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzgVar.zzj()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzgVar.zzaj()));
        contentValues.put("day", Long.valueOf(zzgVar.zzi()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzgVar.zzg()));
        contentValues.put("daily_events_count", Long.valueOf(zzgVar.zzf()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzgVar.zzd()));
        contentValues.put("config_fetched_time", Long.valueOf(zzgVar.zzc()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzgVar.zzl()));
        contentValues.put("app_version_int", Long.valueOf(zzgVar.zzb()));
        contentValues.put("firebase_instance_id", zzgVar.zzx());
        contentValues.put("daily_error_events_count", Long.valueOf(zzgVar.zze()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzgVar.zzh()));
        contentValues.put("health_monitor_sample", zzgVar.zzA());
        contentValues.put("android_id", Long.valueOf(zzgVar.zza()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzgVar.zzai()));
        contentValues.put("admob_app_id", zzgVar.zzr());
        contentValues.put("dynamite_version", Long.valueOf(zzgVar.zzk()));
        List<String> zzC = zzgVar.zzC();
        if (zzC != null) {
            if (zzC.size() == 0) {
                this.zzs.zzay().zzk().zzb("Safelisted events should not be an empty list. appId", zzt);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", zzC));
            }
        }
        zzot.zzc();
        if (this.zzs.zzf().zzs(zzt, zzdy.zzad)) {
            contentValues.put("ga_app_id", zzgVar.zzy());
        }
        try {
            SQLiteDatabase zzh2 = zzh();
            if (zzh2.update("apps", contentValues, "app_id = ?", new String[]{zzt}) == 0 && zzh2.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                this.zzs.zzay().zzd().zzb("Failed to insert/update app (got -1). appId", zzel.zzn(zzt));
            }
        } catch (SQLiteException e10) {
            this.zzs.zzay().zzd().zzc("Error storing app. appId", zzel.zzn(zzt), e10);
        }
    }

    public final void zzF(zzap zzapVar) {
        Preconditions.checkNotNull(zzapVar);
        zzg();
        zzY();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzapVar.zza);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzapVar.zzb);
        contentValues.put("lifetime_count", Long.valueOf(zzapVar.zzc));
        contentValues.put("current_bundle_count", Long.valueOf(zzapVar.zzd));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzapVar.zzf));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzapVar.zzg));
        contentValues.put("last_bundled_day", zzapVar.zzh);
        contentValues.put("last_sampled_complex_event_id", zzapVar.zzi);
        contentValues.put("last_sampling_rate", zzapVar.zzj);
        contentValues.put("current_session_count", Long.valueOf(zzapVar.zze));
        Boolean bool = zzapVar.zzk;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (zzh().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                this.zzs.zzay().zzd().zzb("Failed to insert/update event aggregates (got -1). appId", zzel.zzn(zzapVar.zza));
            }
        } catch (SQLiteException e10) {
            this.zzs.zzay().zzd().zzc("Error storing event aggregates. appId", zzel.zzn(zzapVar.zza), e10);
        }
    }

    public final void zzG(String str, byte[] bArr, String str2) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzY();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        try {
            if (zzh().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                this.zzs.zzay().zzd().zzb("Failed to update remote config (got 0). appId", zzel.zzn(str));
            }
        } catch (SQLiteException e10) {
            this.zzs.zzay().zzd().zzc("Error storing remote config. appId", zzel.zzn(str), e10);
        }
    }

    public final boolean zzH() {
        return zzab("select count(1) > 0 from raw_events", null) != 0;
    }

    public final boolean zzI() {
        return zzab("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    public final boolean zzJ() {
        return zzab("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    @VisibleForTesting
    public final boolean zzK() {
        Context zzau = this.zzs.zzau();
        this.zzs.zzf();
        return zzau.getDatabasePath("google_app_measurement.db").exists();
    }

    public final boolean zzL(String str, Long l10, long j10, com.google.android.gms.internal.measurement.zzfo zzfoVar) {
        zzg();
        zzY();
        Preconditions.checkNotNull(zzfoVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l10);
        byte[] zzbs = zzfoVar.zzbs();
        this.zzs.zzay().zzj().zzc("Saving complex main event, appId, data size", this.zzs.zzj().zzd(str), Integer.valueOf(zzbs.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l10);
        contentValues.put("children_to_process", Long.valueOf(j10));
        contentValues.put("main_event", zzbs);
        try {
            if (zzh().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            this.zzs.zzay().zzd().zzb("Failed to insert complex main event (got -1). appId", zzel.zzn(str));
            return false;
        } catch (SQLiteException e10) {
            this.zzs.zzay().zzd().zzc("Error storing complex main event. appId", zzel.zzn(str), e10);
            return false;
        }
    }

    public final boolean zzM(zzab zzabVar) {
        Preconditions.checkNotNull(zzabVar);
        zzg();
        zzY();
        String str = zzabVar.zza;
        Preconditions.checkNotNull(str);
        if (zzp(str, zzabVar.zzc.zzb) == null) {
            long zzab = zzab("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            this.zzs.zzf();
            if (zzab >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ORIGIN, zzabVar.zzb);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzabVar.zzc.zzb);
        zzX(contentValues, AppMeasurementSdk.ConditionalUserProperty.VALUE, Preconditions.checkNotNull(zzabVar.zzc.zza()));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.valueOf(zzabVar.zze));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzabVar.zzf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzabVar.zzh));
        contentValues.put("timed_out_event", this.zzs.zzv().zzan(zzabVar.zzg));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzabVar.zzd));
        contentValues.put("triggered_event", this.zzs.zzv().zzan(zzabVar.zzi));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzabVar.zzc.zzc));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzabVar.zzj));
        contentValues.put("expired_event", this.zzs.zzv().zzan(zzabVar.zzk));
        try {
            if (zzh().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                this.zzs.zzay().zzd().zzb("Failed to insert/update conditional user property (got -1)", zzel.zzn(str));
            }
        } catch (SQLiteException e10) {
            this.zzs.zzay().zzd().zzc("Error storing conditional user property", zzel.zzn(str), e10);
        }
        return true;
    }

    public final boolean zzN(zzkx zzkxVar) {
        Preconditions.checkNotNull(zzkxVar);
        zzg();
        zzY();
        if (zzp(zzkxVar.zza, zzkxVar.zzc) == null) {
            if (zzkz.zzah(zzkxVar.zzc)) {
                if (zzab("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzkxVar.zza}) >= this.zzs.zzf().zzf(zzkxVar.zza, zzdy.zzF, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(zzkxVar.zzc)) {
                long zzab = zzab("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzkxVar.zza, zzkxVar.zzb});
                this.zzs.zzf();
                if (zzab >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzkxVar.zza);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ORIGIN, zzkxVar.zzb);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzkxVar.zzc);
        contentValues.put("set_timestamp", Long.valueOf(zzkxVar.zzd));
        zzX(contentValues, AppMeasurementSdk.ConditionalUserProperty.VALUE, zzkxVar.zze);
        try {
            if (zzh().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                this.zzs.zzay().zzd().zzb("Failed to insert/update user property (got -1). appId", zzel.zzn(zzkxVar.zza));
            }
        } catch (SQLiteException e10) {
            this.zzs.zzay().zzd().zzc("Error storing user property. appId", zzel.zzn(zzkxVar.zza), e10);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x023d: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:109:0x023d */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean] */
    public final void zzW(String str, long j10, long j11, zzkr zzkrVar) {
        Cursor r42;
        Cursor cursor;
        String str2;
        Cursor rawQuery;
        String string;
        char c10;
        String str3;
        String[] strArr;
        Preconditions.checkNotNull(zzkrVar);
        zzg();
        zzY();
        Cursor cursor2 = null;
        r3 = null;
        r3 = null;
        String str4 = null;
        try {
            try {
                SQLiteDatabase zzh2 = zzh();
                r42 = TextUtils.isEmpty(null);
                try {
                    if (r42 != 0) {
                        String[] strArr2 = j11 != -1 ? new String[]{String.valueOf(j11), String.valueOf(j10)} : new String[]{String.valueOf(j10)};
                        str2 = j11 != -1 ? "rowid <= ? and " : "";
                        StringBuilder sb2 = new StringBuilder(str2.length() + 148);
                        sb2.append("select app_id, metadata_fingerprint from raw_events where ");
                        sb2.append(str2);
                        sb2.append("app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;");
                        rawQuery = zzh2.rawQuery(sb2.toString(), strArr2);
                        if (!rawQuery.moveToFirst()) {
                            rawQuery.close();
                            return;
                        } else {
                            str4 = rawQuery.getString(0);
                            string = rawQuery.getString(1);
                            rawQuery.close();
                        }
                    } else {
                        String[] strArr3 = j11 != -1 ? new String[]{null, String.valueOf(j11)} : new String[]{null};
                        str2 = j11 != -1 ? " and rowid <= ?" : "";
                        StringBuilder sb3 = new StringBuilder(str2.length() + 84);
                        sb3.append("select metadata_fingerprint from raw_events where app_id = ?");
                        sb3.append(str2);
                        sb3.append(" order by rowid limit 1;");
                        rawQuery = zzh2.rawQuery(sb3.toString(), strArr3);
                        if (!rawQuery.moveToFirst()) {
                            rawQuery.close();
                            return;
                        } else {
                            string = rawQuery.getString(0);
                            rawQuery.close();
                        }
                    }
                    Cursor cursor3 = rawQuery;
                    String str5 = string;
                    try {
                        Cursor query = zzh2.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str4, str5}, null, null, "rowid", "2");
                        try {
                            if (!query.moveToFirst()) {
                                this.zzs.zzay().zzd().zzb("Raw event metadata record is missing. appId", zzel.zzn(str4));
                                query.close();
                                return;
                            }
                            try {
                                try {
                                    com.google.android.gms.internal.measurement.zzfy zzaA = ((com.google.android.gms.internal.measurement.zzfx) zzku.zzl(com.google.android.gms.internal.measurement.zzfy.zzu(), query.getBlob(0))).zzaA();
                                    if (query.moveToNext()) {
                                        this.zzs.zzay().zzk().zzb("Get multiple raw event metadata records, expected one. appId", zzel.zzn(str4));
                                    }
                                    query.close();
                                    Preconditions.checkNotNull(zzaA);
                                    zzkrVar.zza = zzaA;
                                    if (j11 != -1) {
                                        c10 = 1;
                                        str3 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                        strArr = new String[]{str4, str5, String.valueOf(j11)};
                                    } else {
                                        c10 = 1;
                                        str3 = "app_id = ? and metadata_fingerprint = ?";
                                        strArr = new String[]{str4, str5};
                                    }
                                    String[] strArr4 = new String[4];
                                    strArr4[0] = "rowid";
                                    strArr4[c10] = AppMeasurementSdk.ConditionalUserProperty.NAME;
                                    strArr4[2] = "timestamp";
                                    strArr4[3] = "data";
                                    Cursor query2 = zzh2.query("raw_events", strArr4, str3, strArr, null, null, "rowid", null);
                                    if (!query2.moveToFirst()) {
                                        this.zzs.zzay().zzk().zzb("Raw event data disappeared while in transaction. appId", zzel.zzn(str4));
                                        query2.close();
                                        return;
                                    }
                                    do {
                                        long j12 = query2.getLong(0);
                                        try {
                                            com.google.android.gms.internal.measurement.zzfn zzfnVar = (com.google.android.gms.internal.measurement.zzfn) zzku.zzl(com.google.android.gms.internal.measurement.zzfo.zze(), query2.getBlob(3));
                                            zzfnVar.zzi(query2.getString(1));
                                            zzfnVar.zzm(query2.getLong(2));
                                            if (!zzkrVar.zza(j12, zzfnVar.zzaA())) {
                                                query2.close();
                                                return;
                                            }
                                        } catch (IOException e10) {
                                            this.zzs.zzay().zzd().zzc("Data loss. Failed to merge raw event. appId", zzel.zzn(str4), e10);
                                        }
                                    } while (query2.moveToNext());
                                    query2.close();
                                } catch (IOException e11) {
                                    this.zzs.zzay().zzd().zzc("Data loss. Failed to merge raw event metadata. appId", zzel.zzn(str4), e11);
                                    query.close();
                                }
                            } catch (SQLiteException e12) {
                                e = e12;
                                r42 = query;
                                this.zzs.zzay().zzd().zzc("Data loss. Error selecting raw event. appId", zzel.zzn(str4), e);
                                if (r42 != 0) {
                                    r42.close();
                                }
                            } catch (Throwable th) {
                                th = th;
                                cursor2 = query;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteException e13) {
                            e = e13;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (SQLiteException e14) {
                        e = e14;
                        r42 = cursor3;
                    } catch (Throwable th3) {
                        th = th3;
                        cursor2 = cursor3;
                    }
                } catch (SQLiteException e15) {
                    e = e15;
                }
            } catch (Throwable th4) {
                th = th4;
                cursor2 = cursor;
            }
        } catch (SQLiteException e16) {
            e = e16;
            r42 = 0;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public final int zza(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzY();
        try {
            return zzh().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e10) {
            this.zzs.zzay().zzd().zzd("Error deleting conditional property", zzel.zzn(str), this.zzs.zzj().zzf(str2), e10);
            return 0;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzki
    public final boolean zzb() {
        return false;
    }

    @VisibleForTesting
    public final long zzc(String str, String str2) {
        long zzac;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty("first_open_count");
        zzg();
        zzY();
        SQLiteDatabase zzh2 = zzh();
        zzh2.beginTransaction();
        long j10 = 0;
        try {
            try {
                StringBuilder sb2 = new StringBuilder(48);
                sb2.append("select ");
                sb2.append("first_open_count");
                sb2.append(" from app2 where app_id=?");
                zzac = zzac(sb2.toString(), new String[]{str}, -1L);
                if (zzac == -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put("first_open_count", (Integer) 0);
                    contentValues.put("previous_install_count", (Integer) 0);
                    if (zzh2.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        this.zzs.zzay().zzd().zzc("Failed to insert column (got -1). appId", zzel.zzn(str), "first_open_count");
                        return -1L;
                    }
                    zzac = 0;
                }
            } catch (SQLiteException e10) {
                e = e10;
            }
            try {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("app_id", str);
                contentValues2.put("first_open_count", Long.valueOf(1 + zzac));
                if (zzh2.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                    this.zzs.zzay().zzd().zzc("Failed to update column (got 0). appId", zzel.zzn(str), "first_open_count");
                    return -1L;
                }
                zzh2.setTransactionSuccessful();
                return zzac;
            } catch (SQLiteException e11) {
                e = e11;
                j10 = zzac;
                this.zzs.zzay().zzd().zzd("Error inserting column. appId", zzel.zzn(str), "first_open_count", e);
                zzh2.endTransaction();
                return j10;
            }
        } finally {
            zzh2.endTransaction();
        }
    }

    public final long zzd() {
        return zzac("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    public final long zze() {
        return zzac("select max(timestamp) from raw_events", null, 0L);
    }

    public final long zzf(String str) {
        Preconditions.checkNotEmpty(str);
        return zzac("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    @VisibleForTesting
    public final SQLiteDatabase zzh() {
        zzg();
        try {
            return this.zzj.getWritableDatabase();
        } catch (SQLiteException e10) {
            this.zzs.zzay().zzk().zzb("Error opening database", e10);
            throw e10;
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x00d6: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:57:0x00d6 */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bundle zzi(String str) {
        Cursor cursor;
        Cursor cursor2;
        zzg();
        zzY();
        Cursor cursor3 = null;
        try {
            try {
                cursor = zzh().rawQuery("select parameters from default_event_params where app_id=?", new String[]{str});
                try {
                    if (!cursor.moveToFirst()) {
                        this.zzs.zzay().zzj().zza("Default event parameters not found");
                        cursor.close();
                        return null;
                    }
                    try {
                        com.google.android.gms.internal.measurement.zzfo zzaA = ((com.google.android.gms.internal.measurement.zzfn) zzku.zzl(com.google.android.gms.internal.measurement.zzfo.zze(), cursor.getBlob(0))).zzaA();
                        this.zzf.zzu();
                        List<com.google.android.gms.internal.measurement.zzfs> zzi2 = zzaA.zzi();
                        Bundle bundle = new Bundle();
                        for (com.google.android.gms.internal.measurement.zzfs zzfsVar : zzi2) {
                            String zzg2 = zzfsVar.zzg();
                            if (zzfsVar.zzu()) {
                                bundle.putDouble(zzg2, zzfsVar.zza());
                            } else if (zzfsVar.zzv()) {
                                bundle.putFloat(zzg2, zzfsVar.zzb());
                            } else if (zzfsVar.zzy()) {
                                bundle.putString(zzg2, zzfsVar.zzh());
                            } else if (zzfsVar.zzw()) {
                                bundle.putLong(zzg2, zzfsVar.zzd());
                            }
                        }
                        cursor.close();
                        return bundle;
                    } catch (IOException e10) {
                        this.zzs.zzay().zzd().zzc("Failed to retrieve default event parameters. appId", zzel.zzn(str), e10);
                        cursor.close();
                        return null;
                    }
                } catch (SQLiteException e11) {
                    e = e11;
                    this.zzs.zzay().zzd().zzb("Error selecting default event parameters", e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor3 != null) {
            }
            throw th;
        }
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0281: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:56:0x0281 */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01ce A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:5:0x00db, B:10:0x00e5, B:12:0x0145, B:16:0x014f, B:19:0x0199, B:21:0x01ce, B:24:0x01dd, B:25:0x01d9, B:26:0x01e0, B:28:0x01e8, B:30:0x01ef, B:33:0x020a, B:35:0x0215, B:36:0x0227, B:38:0x0238, B:39:0x0241, B:41:0x024a, B:45:0x0206, B:47:0x0194, B:50:0x0267), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0215 A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:5:0x00db, B:10:0x00e5, B:12:0x0145, B:16:0x014f, B:19:0x0199, B:21:0x01ce, B:24:0x01dd, B:25:0x01d9, B:26:0x01e0, B:28:0x01e8, B:30:0x01ef, B:33:0x020a, B:35:0x0215, B:36:0x0227, B:38:0x0238, B:39:0x0241, B:41:0x024a, B:45:0x0206, B:47:0x0194, B:50:0x0267), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0238 A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:5:0x00db, B:10:0x00e5, B:12:0x0145, B:16:0x014f, B:19:0x0199, B:21:0x01ce, B:24:0x01dd, B:25:0x01d9, B:26:0x01e0, B:28:0x01e8, B:30:0x01ef, B:33:0x020a, B:35:0x0215, B:36:0x0227, B:38:0x0238, B:39:0x0241, B:41:0x024a, B:45:0x0206, B:47:0x0194, B:50:0x0267), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x024a A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TRY_LEAVE, TryCatch #0 {all -> 0x0280, blocks: (B:5:0x00db, B:10:0x00e5, B:12:0x0145, B:16:0x014f, B:19:0x0199, B:21:0x01ce, B:24:0x01dd, B:25:0x01d9, B:26:0x01e0, B:28:0x01e8, B:30:0x01ef, B:33:0x020a, B:35:0x0215, B:36:0x0227, B:38:0x0238, B:39:0x0241, B:41:0x024a, B:45:0x0206, B:47:0x0194, B:50:0x0267), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0206 A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:5:0x00db, B:10:0x00e5, B:12:0x0145, B:16:0x014f, B:19:0x0199, B:21:0x01ce, B:24:0x01dd, B:25:0x01d9, B:26:0x01e0, B:28:0x01e8, B:30:0x01ef, B:33:0x020a, B:35:0x0215, B:36:0x0227, B:38:0x0238, B:39:0x0241, B:41:0x024a, B:45:0x0206, B:47:0x0194, B:50:0x0267), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0194 A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:5:0x00db, B:10:0x00e5, B:12:0x0145, B:16:0x014f, B:19:0x0199, B:21:0x01ce, B:24:0x01dd, B:25:0x01d9, B:26:0x01e0, B:28:0x01e8, B:30:0x01ef, B:33:0x020a, B:35:0x0215, B:36:0x0227, B:38:0x0238, B:39:0x0241, B:41:0x024a, B:45:0x0206, B:47:0x0194, B:50:0x0267), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0284  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzg zzj(String str) {
        Cursor cursor;
        Cursor cursor2;
        boolean z10;
        Preconditions.checkNotEmpty(str);
        zzg();
        zzY();
        Cursor cursor3 = null;
        try {
            try {
                cursor = zzh().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "admob_app_id", "dynamite_version", "safelisted_events", "ga_app_id"}, "app_id=?", new String[]{str}, null, null, null);
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    zzg zzgVar = new zzg(this.zzf.zzq(), str);
                    zzgVar.zzI(cursor.getString(0));
                    zzgVar.zzY(cursor.getString(1));
                    zzgVar.zzag(cursor.getString(2));
                    zzgVar.zzac(cursor.getLong(3));
                    zzgVar.zzad(cursor.getLong(4));
                    zzgVar.zzab(cursor.getLong(5));
                    zzgVar.zzK(cursor.getString(6));
                    zzgVar.zzJ(cursor.getString(7));
                    zzgVar.zzZ(cursor.getLong(8));
                    zzgVar.zzT(cursor.getLong(9));
                    if (!cursor.isNull(10) && cursor.getInt(10) == 0) {
                        z10 = false;
                        zzgVar.zzae(z10);
                        zzgVar.zzS(cursor.getLong(11));
                        zzgVar.zzQ(cursor.getLong(12));
                        zzgVar.zzP(cursor.getLong(13));
                        zzgVar.zzN(cursor.getLong(14));
                        zzgVar.zzM(cursor.getLong(15));
                        zzgVar.zzV(cursor.getLong(16));
                        zzgVar.zzL(!cursor.isNull(17) ? -2147483648L : cursor.getInt(17));
                        zzgVar.zzW(cursor.getString(18));
                        zzgVar.zzO(cursor.getLong(19));
                        zzgVar.zzR(cursor.getLong(20));
                        zzgVar.zzaa(cursor.getString(21));
                        if (!this.zzs.zzf().zzs(null, zzdy.zzan)) {
                            zzgVar.zzH(cursor.isNull(22) ? 0L : cursor.getLong(22));
                        }
                        zzgVar.zzG((cursor.isNull(23) && cursor.getInt(23) == 0) ? false : true);
                        zzgVar.zzF(cursor.getString(24));
                        zzgVar.zzU(!cursor.isNull(25) ? 0L : cursor.getLong(25));
                        if (!cursor.isNull(26)) {
                            zzgVar.zzah(Arrays.asList(cursor.getString(26).split(",", -1)));
                        }
                        zzot.zzc();
                        if (this.zzs.zzf().zzs(str, zzdy.zzad)) {
                            zzgVar.zzX(cursor.getString(27));
                        }
                        zzgVar.zzD();
                        if (cursor.moveToNext()) {
                            this.zzs.zzay().zzd().zzb("Got multiple records for app, expected one. appId", zzel.zzn(str));
                        }
                        cursor.close();
                        return zzgVar;
                    }
                    z10 = true;
                    zzgVar.zzae(z10);
                    zzgVar.zzS(cursor.getLong(11));
                    zzgVar.zzQ(cursor.getLong(12));
                    zzgVar.zzP(cursor.getLong(13));
                    zzgVar.zzN(cursor.getLong(14));
                    zzgVar.zzM(cursor.getLong(15));
                    zzgVar.zzV(cursor.getLong(16));
                    zzgVar.zzL(!cursor.isNull(17) ? -2147483648L : cursor.getInt(17));
                    zzgVar.zzW(cursor.getString(18));
                    zzgVar.zzO(cursor.getLong(19));
                    zzgVar.zzR(cursor.getLong(20));
                    zzgVar.zzaa(cursor.getString(21));
                    if (!this.zzs.zzf().zzs(null, zzdy.zzan)) {
                    }
                    zzgVar.zzG((cursor.isNull(23) && cursor.getInt(23) == 0) ? false : true);
                    zzgVar.zzF(cursor.getString(24));
                    zzgVar.zzU(!cursor.isNull(25) ? 0L : cursor.getLong(25));
                    if (!cursor.isNull(26)) {
                    }
                    zzot.zzc();
                    if (this.zzs.zzf().zzs(str, zzdy.zzad)) {
                    }
                    zzgVar.zzD();
                    if (cursor.moveToNext()) {
                    }
                    cursor.close();
                    return zzgVar;
                } catch (SQLiteException e10) {
                    e = e10;
                    this.zzs.zzay().zzd().zzc("Error querying app. appId", zzel.zzn(str), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            e = e11;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor3 != null) {
            }
            throw th;
        }
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x0151: MOVE (r9 I:??[OBJECT, ARRAY]) = (r10 I:??[OBJECT, ARRAY]), block:B:27:0x0151 */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0154  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzab zzk(String str, String str2) {
        Cursor cursor;
        Cursor cursor2;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzY();
        Cursor cursor3 = null;
        try {
            try {
                cursor = zzh().query("conditional_properties", new String[]{AppMeasurementSdk.ConditionalUserProperty.ORIGIN, AppMeasurementSdk.ConditionalUserProperty.VALUE, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, "timed_out_event", AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, "triggered_event", AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    String string = cursor.getString(0);
                    Object zzq = zzq(cursor, 1);
                    boolean z10 = cursor.getInt(2) != 0;
                    String string2 = cursor.getString(3);
                    long j10 = cursor.getLong(4);
                    zzku zzu = this.zzf.zzu();
                    byte[] blob = cursor.getBlob(5);
                    Parcelable.Creator<zzat> creator = zzat.CREATOR;
                    zzab zzabVar = new zzab(str, string, new zzkv(str2, cursor.getLong(8), zzq, string), cursor.getLong(6), z10, string2, (zzat) zzu.zzh(blob, creator), j10, (zzat) this.zzf.zzu().zzh(cursor.getBlob(7), creator), cursor.getLong(9), (zzat) this.zzf.zzu().zzh(cursor.getBlob(10), creator));
                    if (cursor.moveToNext()) {
                        this.zzs.zzay().zzd().zzc("Got multiple records for conditional property, expected one", zzel.zzn(str), this.zzs.zzj().zzf(str2));
                    }
                    cursor.close();
                    return zzabVar;
                } catch (SQLiteException e10) {
                    e = e10;
                    this.zzs.zzay().zzd().zzd("Error querying conditional property", zzel.zzn(str), this.zzs.zzj().zzf(str2), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            e = e11;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor3 != null) {
            }
            throw th;
        }
    }

    public final zzah zzl(long j10, String str, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        return zzm(j10, str, 1L, false, false, z12, false, z14);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzah zzm(long j10, String str, long j11, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        Cursor cursor;
        Cursor cursor2;
        Preconditions.checkNotEmpty(str);
        zzg();
        zzY();
        String[] strArr = {str};
        zzah zzahVar = new zzah();
        try {
            try {
                SQLiteDatabase zzh2 = zzh();
                cursor2 = zzh2.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                try {
                    if (!cursor2.moveToFirst()) {
                        this.zzs.zzay().zzk().zzb("Not updating daily counts, app is not known. appId", zzel.zzn(str));
                        cursor2.close();
                        return zzahVar;
                    }
                    if (cursor2.getLong(0) == j10) {
                        zzahVar.zzb = cursor2.getLong(1);
                        zzahVar.zza = cursor2.getLong(2);
                        zzahVar.zzc = cursor2.getLong(3);
                        zzahVar.zzd = cursor2.getLong(4);
                        zzahVar.zze = cursor2.getLong(5);
                    }
                    if (z10) {
                        zzahVar.zzb += j11;
                    }
                    if (z11) {
                        zzahVar.zza += j11;
                    }
                    if (z12) {
                        zzahVar.zzc += j11;
                    }
                    if (z13) {
                        zzahVar.zzd += j11;
                    }
                    if (z14) {
                        zzahVar.zze += j11;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("day", Long.valueOf(j10));
                    contentValues.put("daily_public_events_count", Long.valueOf(zzahVar.zza));
                    contentValues.put("daily_events_count", Long.valueOf(zzahVar.zzb));
                    contentValues.put("daily_conversions_count", Long.valueOf(zzahVar.zzc));
                    contentValues.put("daily_error_events_count", Long.valueOf(zzahVar.zzd));
                    contentValues.put("daily_realtime_events_count", Long.valueOf(zzahVar.zze));
                    zzh2.update("apps", contentValues, "app_id=?", strArr);
                    cursor2.close();
                    return zzahVar;
                } catch (SQLiteException e10) {
                    e = e10;
                    this.zzs.zzay().zzd().zzc("Error updating daily counts. appId", zzel.zzn(str), e);
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return zzahVar;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            e = e11;
            cursor2 = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (0 != 0) {
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x016e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzap zzn(String str, String str2) {
        Cursor cursor;
        Cursor cursor2;
        Boolean bool;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzY();
        Cursor cursor3 = null;
        try {
            Cursor query = zzh().query("events", (String[]) new ArrayList(Arrays.asList("lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling", "current_session_count")).toArray(new String[0]), "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                if (!query.moveToFirst()) {
                    query.close();
                    return null;
                }
                long j10 = query.getLong(0);
                long j11 = query.getLong(1);
                long j12 = query.getLong(2);
                long j13 = query.isNull(3) ? 0L : query.getLong(3);
                Long valueOf = query.isNull(4) ? null : Long.valueOf(query.getLong(4));
                Long valueOf2 = query.isNull(5) ? null : Long.valueOf(query.getLong(5));
                Long valueOf3 = query.isNull(6) ? null : Long.valueOf(query.getLong(6));
                if (query.isNull(7)) {
                    bool = null;
                } else {
                    bool = Boolean.valueOf(query.getLong(7) == 1);
                }
                cursor2 = query;
                try {
                    zzap zzapVar = new zzap(str, str2, j10, j11, query.isNull(8) ? 0L : query.getLong(8), j12, j13, valueOf, valueOf2, valueOf3, bool);
                    if (cursor2.moveToNext()) {
                        this.zzs.zzay().zzd().zzb("Got multiple records for event aggregates, expected one. appId", zzel.zzn(str));
                    }
                    cursor2.close();
                    return zzapVar;
                } catch (SQLiteException e10) {
                    e = e10;
                    cursor = cursor2;
                    try {
                        this.zzs.zzay().zzd().zzd("Error querying events. appId", zzel.zzn(str), this.zzs.zzj().zzd(str2), e);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    } catch (Throwable th) {
                        th = th;
                        cursor3 = cursor;
                        if (cursor3 != null) {
                            cursor3.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor3 = cursor2;
                    if (cursor3 != null) {
                    }
                    throw th;
                }
            } catch (SQLiteException e11) {
                e = e11;
                cursor2 = query;
            } catch (Throwable th3) {
                th = th3;
                cursor2 = query;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursor = null;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00a8: MOVE (r10 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:27:0x00a8 */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzkx zzp(String str, String str2) {
        Cursor cursor;
        Cursor cursor2;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzY();
        Cursor cursor3 = null;
        try {
            try {
                cursor = zzh().query("user_attributes", new String[]{"set_timestamp", AppMeasurementSdk.ConditionalUserProperty.VALUE, AppMeasurementSdk.ConditionalUserProperty.ORIGIN}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    long j10 = cursor.getLong(0);
                    Object zzq = zzq(cursor, 1);
                    if (zzq == null) {
                        cursor.close();
                        return null;
                    }
                    zzkx zzkxVar = new zzkx(str, cursor.getString(2), str2, j10, zzq);
                    if (cursor.moveToNext()) {
                        this.zzs.zzay().zzd().zzb("Got multiple records for user property, expected one. appId", zzel.zzn(str));
                    }
                    cursor.close();
                    return zzkxVar;
                } catch (SQLiteException e10) {
                    e = e10;
                    this.zzs.zzay().zzd().zzd("Error querying user property. appId", zzel.zzn(str), this.zzs.zzj().zzf(str2), e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            e = e11;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor3 != null) {
            }
            throw th;
        }
    }

    @VisibleForTesting
    public final Object zzq(Cursor cursor, int i10) {
        int type = cursor.getType(i10);
        if (type == 0) {
            this.zzs.zzay().zzd().zza("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i10));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i10));
        }
        if (type == 3) {
            return cursor.getString(i10);
        }
        if (type != 4) {
            this.zzs.zzay().zzd().zzb("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        this.zzs.zzay().zzd().zza("Loaded invalid blob type value, ignoring it");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0040  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String zzr() {
        SQLiteException e10;
        Cursor cursor;
        SQLiteDatabase zzh2 = zzh();
        var r12 = 0;
        try {
            try {
                cursor = zzh2.rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    String string = cursor.getString(0);
                    cursor.close();
                    return string;
                } catch (SQLiteException e11) {
                    e10 = e11;
                    this.zzs.zzay().zzd().zzb("Database error getting next bundle app id", e10);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                r12 = zzh2;
                th = th;
                if (r12 != 0) {
                    r12.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e10 = e12;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (r12 != 0) {
            }
            throw th;
        }
    }

    public final List<zzab> zzs(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzY();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb2 = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb2.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb2.append(" and name glob ?");
        }
        return zzt(sb2.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x008f, code lost:
    
        r3 = r41.zzs.zzay().zzd();
        r41.zzs.zzf();
        r3.zzb("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x018c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<zzab> zzt(String str, String[] strArr) {
        Cursor cursor;
        int i10;
        boolean z10;
        zzg();
        zzY();
        ArrayList arrayList = new ArrayList();
        try {
            SQLiteDatabase zzh2 = zzh();
            String[] strArr2 = {"app_id", AppMeasurementSdk.ConditionalUserProperty.ORIGIN, AppMeasurementSdk.ConditionalUserProperty.NAME, AppMeasurementSdk.ConditionalUserProperty.VALUE, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, "timed_out_event", AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, "triggered_event", AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, "expired_event"};
            this.zzs.zzf();
            int i11 = 4;
            Cursor query = zzh2.query("conditional_properties", strArr2, str, strArr, null, null, "rowid", "1001");
            try {
                if (!query.moveToFirst()) {
                    query.close();
                    return arrayList;
                }
                while (true) {
                    int size = arrayList.size();
                    this.zzs.zzf();
                    if (size >= 1000) {
                        break;
                    }
                    String string = query.getString(0);
                    String string2 = query.getString(1);
                    String string3 = query.getString(2);
                    Object zzq = zzq(query, 3);
                    if (query.getInt(i11) != 0) {
                        i10 = 5;
                        z10 = true;
                    } else {
                        i10 = 5;
                        z10 = false;
                    }
                    String string4 = query.getString(i10);
                    long j10 = query.getLong(6);
                    zzku zzu = this.zzf.zzu();
                    byte[] blob = query.getBlob(7);
                    Parcelable.Creator<zzat> creator = zzat.CREATOR;
                    zzat zzatVar = (zzat) zzu.zzh(blob, creator);
                    arrayList.add(new zzab(string, string2, new zzkv(string3, query.getLong(10), zzq, string2), query.getLong(8), z10, string4, zzatVar, j10, (zzat) this.zzf.zzu().zzh(query.getBlob(9), creator), query.getLong(11), (zzat) this.zzf.zzu().zzh(query.getBlob(12), creator)));
                    if (!query.moveToNext()) {
                        break;
                    }
                    i11 = 4;
                }
                query.close();
                return arrayList;
            } catch (SQLiteException e10) {
                e = e10;
                cursor = query;
                try {
                    this.zzs.zzay().zzd().zzb("Error querying conditional user property value", e);
                    List<zzab> emptyList = Collections.emptyList();
                    if (cursor != null) {
                        cursor.close();
                    }
                    return emptyList;
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = query;
                if (cursor != null) {
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            e = e11;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public final List<zzkx> zzu(String str) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzY();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                this.zzs.zzf();
                cursor = zzh().query("user_attributes", new String[]{AppMeasurementSdk.ConditionalUserProperty.NAME, AppMeasurementSdk.ConditionalUserProperty.ORIGIN, "set_timestamp", AppMeasurementSdk.ConditionalUserProperty.VALUE}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return arrayList;
                }
                do {
                    String string = cursor.getString(0);
                    String string2 = cursor.getString(1);
                    if (string2 == null) {
                        string2 = "";
                    }
                    String str2 = string2;
                    long j10 = cursor.getLong(2);
                    Object zzq = zzq(cursor, 3);
                    if (zzq == null) {
                        this.zzs.zzay().zzd().zzb("Read invalid user property value, ignoring it. appId", zzel.zzn(str));
                    } else {
                        arrayList.add(new zzkx(str, str2, string, j10, zzq));
                    }
                } while (cursor.moveToNext());
                cursor.close();
                return arrayList;
            } catch (SQLiteException e10) {
                this.zzs.zzay().zzd().zzc("Error querying user properties. appId", zzel.zzn(str), e10);
                List<zzkx> emptyList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return emptyList;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ad, code lost:
    
        r3 = r19.zzs.zzay().zzd();
        r19.zzs.zzf();
        r3.zzb("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<zzkx> zzv(String str, String str2, String str3) {
        Cursor cursor;
        String str4;
        ArrayList arrayList;
        Cursor query;
        Preconditions.checkNotEmpty(str);
        zzg();
        zzY();
        ArrayList arrayList2 = new ArrayList();
        try {
            try {
                arrayList = new ArrayList(3);
            } catch (Throwable th) {
                th = th;
                cursor = null;
            }
        } catch (SQLiteException e10) {
            e = e10;
        }
        try {
            arrayList.add(str);
            StringBuilder sb2 = new StringBuilder("app_id=?");
            if (TextUtils.isEmpty(str2)) {
                str4 = str2;
            } else {
                str4 = str2;
                try {
                    arrayList.add(str4);
                    sb2.append(" and origin=?");
                } catch (SQLiteException e11) {
                    e = e11;
                    cursor = null;
                    try {
                        this.zzs.zzay().zzd().zzd("(2)Error querying user properties", zzel.zzn(str), str4, e);
                        List<zzkx> emptyList = Collections.emptyList();
                        if (cursor != null) {
                        }
                        return emptyList;
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
            if (!TextUtils.isEmpty(str3)) {
                arrayList.add(String.valueOf(str3).concat("*"));
                sb2.append(" and name glob ?");
            }
            String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            SQLiteDatabase zzh2 = zzh();
            String[] strArr2 = {AppMeasurementSdk.ConditionalUserProperty.NAME, "set_timestamp", AppMeasurementSdk.ConditionalUserProperty.VALUE, AppMeasurementSdk.ConditionalUserProperty.ORIGIN};
            String sb3 = sb2.toString();
            this.zzs.zzf();
            query = zzh2.query("user_attributes", strArr2, sb3, strArr, null, null, "rowid", "1001");
        } catch (SQLiteException e12) {
            e = e12;
            str4 = str2;
            cursor = null;
            this.zzs.zzay().zzd().zzd("(2)Error querying user properties", zzel.zzn(str), str4, e);
            List<zzkx> emptyList2 = Collections.emptyList();
            if (cursor != null) {
                cursor.close();
            }
            return emptyList2;
        }
        try {
            if (!query.moveToFirst()) {
                query.close();
                return arrayList2;
            }
            while (true) {
                int size = arrayList2.size();
                this.zzs.zzf();
                if (size < 1000) {
                    String string = query.getString(0);
                    long j10 = query.getLong(1);
                    Object zzq = zzq(query, 2);
                    str4 = query.getString(3);
                    if (zzq == null) {
                        this.zzs.zzay().zzd().zzd("(2)Read invalid user property value, ignoring it", zzel.zzn(str), str4, str3);
                    } else {
                        arrayList2.add(new zzkx(str, str4, string, j10, zzq));
                    }
                    if (!query.moveToNext()) {
                        break;
                    }
                } else {
                    break;
                }
            }
            query.close();
            return arrayList2;
        } catch (SQLiteException e13) {
            e = e13;
            cursor = query;
            this.zzs.zzay().zzd().zzd("(2)Error querying user properties", zzel.zzn(str), str4, e);
            List<zzkx> emptyList22 = Collections.emptyList();
            if (cursor != null) {
            }
            return emptyList22;
        } catch (Throwable th3) {
            th = th3;
            cursor = query;
            if (cursor != null) {
            }
            throw th;
        }
    }

    public final void zzw() {
        zzY();
        zzh().beginTransaction();
    }

    public final void zzx(List<Long> list) {
        Preconditions.checkNotNull(list);
        zzg();
        zzY();
        StringBuilder sb2 = new StringBuilder("rowid in (");
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (i10 != 0) {
                sb2.append(",");
            }
            sb2.append(list.get(i10).longValue());
        }
        sb2.append(")");
        int delete = zzh().delete("raw_events", sb2.toString(), null);
        if (delete != list.size()) {
            this.zzs.zzay().zzd().zzc("Deleted fewer rows from raw events table than expected", Integer.valueOf(delete), Integer.valueOf(list.size()));
        }
    }

    public final void zzy() {
        zzY();
        zzh().endTransaction();
    }

    @VisibleForTesting
    public final void zzz(List<Long> list) {
        zzg();
        zzY();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (zzK()) {
            String join = TextUtils.join(",", list);
            StringBuilder sb2 = new StringBuilder(String.valueOf(join).length() + 2);
            sb2.append("(");
            sb2.append(join);
            sb2.append(")");
            String sb3 = sb2.toString();
            StringBuilder sb4 = new StringBuilder(String.valueOf(sb3).length() + 80);
            sb4.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb4.append(sb3);
            sb4.append(" AND retry_count =  2147483647 LIMIT 1");
            if (zzab(sb4.toString(), null) > 0) {
                this.zzs.zzay().zzk().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase zzh2 = zzh();
                StringBuilder sb5 = new StringBuilder(String.valueOf(sb3).length() + 127);
                sb5.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb5.append(sb3);
                sb5.append(" AND (retry_count IS NULL OR retry_count < ");
                sb5.append(Api.BaseClientBuilder.API_PRIORITY_OTHER);
                sb5.append(")");
                zzh2.execSQL(sb5.toString());
            } catch (SQLiteException e10) {
                this.zzs.zzay().zzd().zzb("Error incrementing retry count. error", e10);
            }
        }
    }
}
