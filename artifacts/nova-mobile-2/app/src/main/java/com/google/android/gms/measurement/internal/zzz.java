package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzoh;
import java.io.IOException;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import s.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzz extends zzki {
    private String zza;
    private Set<Integer> zzb;
    private Map<Integer, zzt> zzc;
    private Long zzd;
    private Long zze;

    public zzz(zzks zzksVar) {
        super(zzksVar);
    }

    private final zzt zzd(Integer num) {
        if (this.zzc.containsKey(num)) {
            return this.zzc.get(num);
        }
        zzt zztVar = new zzt(this, this.zza, null);
        this.zzc.put(num, zztVar);
        return zztVar;
    }

    private final boolean zzf(int i10, int i11) {
        zzt zztVar = this.zzc.get(Integer.valueOf(i10));
        if (zztVar == null) {
            return false;
        }
        return zzt.zzb(zztVar).get(i11);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:(6:19|20|21|22|23|(20:(7:25|26|27|28|(1:30)(3:474|(1:476)(1:478)|477)|31|(1:34)(1:33))|35|36|37|38|39|40|(2:42|43)(3:440|(6:441|442|443|444|445|(1:448)(1:447))|449)|44|(5:276|(3:278|(11:280|281|282|283|284|(5:335|292|293|(6:296|(1:331)(2:300|(8:306|307|(4:310|(2:312|313)(1:315)|314|308)|316|317|(4:320|(2:322|323)(1:325)|324|318)|326|327)(4:302|303|304|305))|328|329|305|294)|333)|(3:286|(1:288)|289)|292|293|(1:294)|333)|348)(1:439)|349|(10:352|(3:356|(4:359|(5:361|362|(1:364)(1:368)|365|366)(1:369)|367|357)|370)|371|(3:375|(4:378|(3:383|384|385)|386|376)|389)|390|(3:392|(6:395|(2:397|(3:399|400|401))(1:404)|402|403|401|393)|405)|406|(3:415|(8:418|(1:420)|421|(1:423)|424|(3:426|427|428)(1:430)|429|416)|431)|432|350)|438)|46|47|(3:169|(4:172|(9:174|(1:176)(1:273)|177|(12:179|180|181|182|183|184|185|186|187|188|189|(3:(9:191|192|193|194|195|(3:197|198|199)(1:243)|200|201|(1:204)(1:203))|205|206)(4:250|251|239|206))(1:272)|207|(4:210|(3:228|229|230)(6:212|213|(2:214|(2:216|(1:218)(2:219|220))(2:226|227))|(1:222)|223|224)|225|208)|231|232|233)(1:274)|234|170)|275)|49|50|(3:52|(6:55|(9:57|58|59|60|61|(4:128|129|124|76)|(9:63|64|65|66|67|68|(1:70)|71|72)|75|76)(1:144)|77|(2:78|(2:80|(3:114|115|116)(6:82|(2:83|(4:85|(3:87|(1:89)(1:91)|90)|92|(1:1)(2:96|(1:98)(2:99|100)))(1:113))|(2:105|104)|102|103|104))(0))|117|53)|145)|146|(9:149|150|151|152|153|154|(2:156|157)(1:159)|158|147)|167|168)(2:482|483))|39|40|(0)(0)|44|(0)|46|47|(0)|49|50|(0)|146|(1:147)|167|168) */
    /* JADX WARN: Can't wrap try/catch for region: R(26:1|(2:2|(2:4|(2:6|7)(1:497))(2:498|499))|8|(3:10|11|12)|16|(6:19|20|21|22|23|(20:(7:25|26|27|28|(1:30)(3:474|(1:476)(1:478)|477)|31|(1:34)(1:33))|35|36|37|38|39|40|(2:42|43)(3:440|(6:441|442|443|444|445|(1:448)(1:447))|449)|44|(5:276|(3:278|(11:280|281|282|283|284|(5:335|292|293|(6:296|(1:331)(2:300|(8:306|307|(4:310|(2:312|313)(1:315)|314|308)|316|317|(4:320|(2:322|323)(1:325)|324|318)|326|327)(4:302|303|304|305))|328|329|305|294)|333)|(3:286|(1:288)|289)|292|293|(1:294)|333)|348)(1:439)|349|(10:352|(3:356|(4:359|(5:361|362|(1:364)(1:368)|365|366)(1:369)|367|357)|370)|371|(3:375|(4:378|(3:383|384|385)|386|376)|389)|390|(3:392|(6:395|(2:397|(3:399|400|401))(1:404)|402|403|401|393)|405)|406|(3:415|(8:418|(1:420)|421|(1:423)|424|(3:426|427|428)(1:430)|429|416)|431)|432|350)|438)|46|47|(3:169|(4:172|(9:174|(1:176)(1:273)|177|(12:179|180|181|182|183|184|185|186|187|188|189|(3:(9:191|192|193|194|195|(3:197|198|199)(1:243)|200|201|(1:204)(1:203))|205|206)(4:250|251|239|206))(1:272)|207|(4:210|(3:228|229|230)(6:212|213|(2:214|(2:216|(1:218)(2:219|220))(2:226|227))|(1:222)|223|224)|225|208)|231|232|233)(1:274)|234|170)|275)|49|50|(3:52|(6:55|(9:57|58|59|60|61|(4:128|129|124|76)|(9:63|64|65|66|67|68|(1:70)|71|72)|75|76)(1:144)|77|(2:78|(2:80|(3:114|115|116)(6:82|(2:83|(4:85|(3:87|(1:89)(1:91)|90)|92|(1:1)(2:96|(1:98)(2:99|100)))(1:113))|(2:105|104)|102|103|104))(0))|117|53)|145)|146|(9:149|150|151|152|153|154|(2:156|157)(1:159)|158|147)|167|168)(2:482|483))|496|36|37|38|39|40|(0)(0)|44|(0)|46|47|(0)|49|50|(0)|146|(1:147)|167|168|(5:(0)|(0)|(0)|(0)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x09dc, code lost:
    
        r7 = r64.zzs.zzay().zzk();
        r9 = com.google.android.gms.measurement.internal.zzel.zzn(r64.zza);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x09f0, code lost:
    
        if (r8.zzj() == false) goto L377;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x09f2, code lost:
    
        r8 = java.lang.Integer.valueOf(r8.zza());
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x09fc, code lost:
    
        r7.zzc("Invalid property filter ID. appId, id", r9, java.lang.String.valueOf(r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x09fb, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x08e7, code lost:
    
        if (r9 == null) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0743, code lost:
    
        if (r4 != null) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x02fc, code lost:
    
        if (r5 == null) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x0220, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x0221, code lost:
    
        r20 = "audience_id";
     */
    /* JADX WARN: Code restructure failed: missing block: B:470:0x0228, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:471:0x0229, code lost:
    
        r20 = "audience_id";
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x0224, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:473:0x0225, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:486:0x0176, code lost:
    
        if (r5 == null) goto L55;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0a2e  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x058b  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01b9 A[Catch: SQLiteException -> 0x0220, all -> 0x0ac2, TRY_LEAVE, TryCatch #5 {SQLiteException -> 0x0220, blocks: (B:40:0x01b3, B:42:0x01b9, B:440:0x01c5, B:441:0x01ca, B:443:0x01d4, B:444:0x01e4, B:458:0x01f1), top: B:39:0x01b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:440:0x01c5 A[Catch: SQLiteException -> 0x0220, all -> 0x0ac2, TRY_ENTER, TryCatch #5 {SQLiteException -> 0x0220, blocks: (B:40:0x01b3, B:42:0x01b9, B:440:0x01c5, B:441:0x01ca, B:443:0x01d4, B:444:0x01e4, B:458:0x01f1), top: B:39:0x01b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:490:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0806  */
    /* JADX WARN: Type inference failed for: r4v41, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v44, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v46, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r5v5, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<com.google.android.gms.internal.measurement.zzfk> zza(String str, List<com.google.android.gms.internal.measurement.zzfo> list, List<com.google.android.gms.internal.measurement.zzgh> list2, Long l10, Long l11) {
        int i10;
        int i11;
        boolean z10;
        Cursor cursor;
        Map map;
        String str2;
        Cursor cursor2;
        Map map2;
        Map map3;
        List<com.google.android.gms.internal.measurement.zzej> list3;
        String str3;
        String str4;
        Cursor cursor3;
        Iterator it2;
        Map map4;
        Iterator it3;
        zzap zzapVar;
        zzv zzvVar;
        Iterator<com.google.android.gms.internal.measurement.zzfo> it4;
        String str5;
        String str6;
        Map map5;
        Cursor cursor4;
        Cursor cursor5;
        String str7;
        a aVar;
        List list4;
        Iterator<Integer> it5;
        Cursor cursor6;
        Cursor cursor7;
        a aVar2;
        Cursor cursor8;
        List list5;
        String str8 = "current_results";
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(list2);
        this.zza = str;
        this.zzb = new HashSet();
        this.zzc = new a();
        this.zzd = l10;
        this.zze = l11;
        Iterator<com.google.android.gms.internal.measurement.zzfo> it6 = list.iterator();
        while (true) {
            i10 = 0;
            i11 = 1;
            if (!it6.hasNext()) {
                z10 = false;
                break;
            }
            if ("_s".equals(it6.next().zzh())) {
                z10 = true;
                break;
            }
        }
        zzoh.zzc();
        boolean zzs = this.zzs.zzf().zzs(this.zza, zzdy.zzY);
        zzoh.zzc();
        boolean zzs2 = this.zzs.zzf().zzs(this.zza, zzdy.zzX);
        if (z10) {
            zzaj zzi = this.zzf.zzi();
            String str9 = this.zza;
            zzi.zzY();
            zzi.zzg();
            Preconditions.checkNotEmpty(str9);
            ContentValues contentValues = new ContentValues();
            ?? r52 = "current_session_count";
            contentValues.put("current_session_count", (Integer) 0);
            try {
                r52 = new String[]{str9};
                zzi.zzh().update("events", contentValues, "app_id = ?", r52);
                cursor = r52;
            } catch (SQLiteException e10) {
                zzi.zzs.zzay().zzd().zzc("Error resetting session-scoped event counts. appId", zzel.zzn(str9), e10);
                cursor = r52;
            }
        }
        Map emptyMap = Collections.emptyMap();
        String str10 = "Failed to merge filter. appId";
        String str11 = "Database error querying filters. appId";
        String str12 = "audience_id";
        try {
            if (zzs2 && zzs) {
                zzaj zzi2 = this.zzf.zzi();
                String str13 = this.zza;
                Preconditions.checkNotEmpty(str13);
                a aVar3 = new a();
                try {
                    try {
                        cursor8 = zzi2.zzh().query("event_filters", new String[]{"audience_id", "data"}, "app_id=?", new String[]{str13}, null, null, null);
                        try {
                        } catch (SQLiteException e11) {
                            e = e11;
                            zzi2.zzs.zzay().zzd().zzc("Database error querying filters. appId", zzel.zzn(str13), e);
                            emptyMap = Collections.emptyMap();
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (SQLiteException e12) {
                    e = e12;
                    cursor8 = null;
                } catch (Throwable th2) {
                    th = th2;
                    cursor = null;
                    if (cursor != null) {
                    }
                    throw th;
                }
                if (cursor8.moveToFirst()) {
                    while (true) {
                        try {
                            com.google.android.gms.internal.measurement.zzej zzaA = ((com.google.android.gms.internal.measurement.zzei) zzku.zzl(com.google.android.gms.internal.measurement.zzej.zzc(), cursor8.getBlob(i11))).zzaA();
                            if (zzaA.zzo()) {
                                Integer valueOf = Integer.valueOf(cursor8.getInt(i10));
                                List list6 = (List) aVar3.get(valueOf);
                                if (list6 == null) {
                                    list5 = new ArrayList();
                                    aVar3.put(valueOf, list5);
                                } else {
                                    list5 = list6;
                                }
                                list5.add(zzaA);
                            }
                        } catch (IOException e13) {
                            zzi2.zzs.zzay().zzd().zzc("Failed to merge filter. appId", zzel.zzn(str13), e13);
                        }
                        if (!cursor8.moveToNext()) {
                            break;
                        }
                        i10 = 0;
                        i11 = 1;
                    }
                    cursor8.close();
                    map = aVar3;
                    zzaj zzi3 = this.zzf.zzi();
                    String str14 = this.zza;
                    zzi3.zzY();
                    zzi3.zzg();
                    Preconditions.checkNotEmpty(str14);
                    cursor2 = zzi3.zzh().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str14}, null, null, null);
                    if (cursor2.moveToFirst()) {
                        Map emptyMap2 = Collections.emptyMap();
                        cursor2.close();
                        map2 = emptyMap2;
                        str2 = "audience_id";
                    } else {
                        a aVar4 = new a();
                        while (true) {
                            int i12 = cursor2.getInt(0);
                            try {
                                aVar4.put(Integer.valueOf(i12), ((com.google.android.gms.internal.measurement.zzgc) zzku.zzl(com.google.android.gms.internal.measurement.zzgd.zzf(), cursor2.getBlob(1))).zzaA());
                                aVar2 = aVar4;
                                str2 = str12;
                            } catch (IOException e14) {
                                aVar2 = aVar4;
                                str2 = str12;
                                try {
                                    zzi3.zzs.zzay().zzd().zzd("Failed to merge filter results. appId, audienceId, error", zzel.zzn(str14), Integer.valueOf(i12), e14);
                                } catch (SQLiteException e15) {
                                    e = e15;
                                    zzi3.zzs.zzay().zzd().zzc("Database error querying filter results. appId", zzel.zzn(str14), e);
                                    Map emptyMap3 = Collections.emptyMap();
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    map2 = emptyMap3;
                                    if (!map2.isEmpty()) {
                                    }
                                    String str15 = str11;
                                    String str16 = str10;
                                    String str17 = str2;
                                    zzu zzuVar = null;
                                    if (!list.isEmpty()) {
                                    }
                                    String str18 = str8;
                                    if (!list2.isEmpty()) {
                                    }
                                    ArrayList arrayList = new ArrayList();
                                    Set<Integer> keySet = this.zzc.keySet();
                                    keySet.removeAll(this.zzb);
                                    it5 = keySet.iterator();
                                    while (it5.hasNext()) {
                                    }
                                    return arrayList;
                                }
                            }
                            if (!cursor2.moveToNext()) {
                                break;
                            }
                            aVar4 = aVar2;
                            str12 = str2;
                        }
                        cursor2.close();
                        map2 = aVar2;
                    }
                    if (!map2.isEmpty()) {
                        HashSet hashSet = new HashSet(map2.keySet());
                        if (z10) {
                            String str19 = this.zza;
                            Preconditions.checkNotEmpty(str19);
                            Preconditions.checkNotNull(map2);
                            a aVar5 = new a();
                            if (!map2.isEmpty()) {
                                zzaj zzi4 = this.zzf.zzi();
                                zzi4.zzY();
                                zzi4.zzg();
                                Preconditions.checkNotEmpty(str19);
                                Map aVar6 = new a();
                                ?? zzh = zzi4.zzh();
                                try {
                                    try {
                                        cursor3 = zzh.rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str19, str19});
                                        try {
                                        } catch (SQLiteException e16) {
                                            e = e16;
                                            zzi4.zzs.zzay().zzd().zzc("Database error querying scoped filters. appId", zzel.zzn(str19), e);
                                            aVar6 = Collections.emptyMap();
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        if (zzh != 0) {
                                            zzh.close();
                                        }
                                        throw th;
                                    }
                                } catch (SQLiteException e17) {
                                    e = e17;
                                    cursor3 = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                    zzh = 0;
                                    if (zzh != 0) {
                                    }
                                    throw th;
                                }
                                if (!cursor3.moveToFirst()) {
                                    aVar6 = Collections.emptyMap();
                                    cursor3.close();
                                    it2 = map2.keySet().iterator();
                                    while (it2.hasNext()) {
                                        int intValue = ((Integer) it2.next()).intValue();
                                        Integer valueOf2 = Integer.valueOf(intValue);
                                        com.google.android.gms.internal.measurement.zzgd zzgdVar = (com.google.android.gms.internal.measurement.zzgd) map2.get(valueOf2);
                                        List<Integer> list7 = (List) aVar6.get(valueOf2);
                                        if (list7 != null && !list7.isEmpty()) {
                                            map4 = aVar6;
                                            List<Long> zzr = this.zzf.zzu().zzr(zzgdVar.zzk(), list7);
                                            if (zzr.isEmpty()) {
                                                aVar6 = map4;
                                            } else {
                                                com.google.android.gms.internal.measurement.zzgc zzbv = zzgdVar.zzbv();
                                                zzbv.zze();
                                                zzbv.zzb(zzr);
                                                it3 = it2;
                                                List<Long> zzr2 = this.zzf.zzu().zzr(zzgdVar.zzn(), list7);
                                                zzbv.zzf();
                                                zzbv.zzd(zzr2);
                                                for (int i13 = 0; i13 < zzgdVar.zza(); i13++) {
                                                    if (list7.contains(Integer.valueOf(zzgdVar.zze(i13).zza()))) {
                                                        zzbv.zzg(i13);
                                                    }
                                                }
                                                for (int i14 = 0; i14 < zzgdVar.zzc(); i14++) {
                                                    if (list7.contains(Integer.valueOf(zzgdVar.zzi(i14).zzb()))) {
                                                        zzbv.zzh(i14);
                                                    }
                                                }
                                                aVar5.put(Integer.valueOf(intValue), zzbv.zzaA());
                                            }
                                        } else {
                                            map4 = aVar6;
                                            it3 = it2;
                                            aVar5.put(valueOf2, zzgdVar);
                                        }
                                        aVar6 = map4;
                                        it2 = it3;
                                    }
                                }
                                do {
                                    Integer valueOf3 = Integer.valueOf(cursor3.getInt(0));
                                    List list8 = (List) aVar6.get(valueOf3);
                                    if (list8 == null) {
                                        list8 = new ArrayList();
                                        aVar6.put(valueOf3, list8);
                                    }
                                    list8.add(Integer.valueOf(cursor3.getInt(1)));
                                } while (cursor3.moveToNext());
                                cursor3.close();
                                it2 = map2.keySet().iterator();
                                while (it2.hasNext()) {
                                }
                            }
                            map3 = aVar5;
                        } else {
                            map3 = map2;
                        }
                        Iterator it7 = hashSet.iterator();
                        while (it7.hasNext()) {
                            int intValue2 = ((Integer) it7.next()).intValue();
                            com.google.android.gms.internal.measurement.zzgd zzgdVar2 = (com.google.android.gms.internal.measurement.zzgd) map3.get(Integer.valueOf(intValue2));
                            BitSet bitSet = new BitSet();
                            BitSet bitSet2 = new BitSet();
                            a aVar7 = new a();
                            if (zzgdVar2 != null && zzgdVar2.zza() != 0) {
                                for (com.google.android.gms.internal.measurement.zzfm zzfmVar : zzgdVar2.zzj()) {
                                    if (zzfmVar.zzh()) {
                                        aVar7.put(Integer.valueOf(zzfmVar.zza()), zzfmVar.zzg() ? Long.valueOf(zzfmVar.zzb()) : null);
                                    }
                                }
                            }
                            a aVar8 = new a();
                            if (zzgdVar2 != null && zzgdVar2.zzc() != 0) {
                                Iterator<com.google.android.gms.internal.measurement.zzgf> it8 = zzgdVar2.zzm().iterator();
                                while (it8.hasNext()) {
                                    com.google.android.gms.internal.measurement.zzgf next = it8.next();
                                    if (next.zzi() && next.zza() > 0) {
                                        aVar8.put(Integer.valueOf(next.zzb()), Long.valueOf(next.zzc(next.zza() - 1)));
                                        map3 = map3;
                                        it8 = it8;
                                    }
                                }
                            }
                            Map map6 = map3;
                            if (zzgdVar2 != null) {
                                int i15 = 0;
                                while (i15 < zzgdVar2.zzd() * 64) {
                                    if (zzku.zzw(zzgdVar2.zzn(), i15)) {
                                        str3 = str11;
                                        str4 = str10;
                                        this.zzs.zzay().zzj().zzc("Filter already evaluated. audience ID, filter ID", Integer.valueOf(intValue2), Integer.valueOf(i15));
                                        bitSet2.set(i15);
                                        if (zzku.zzw(zzgdVar2.zzk(), i15)) {
                                            bitSet.set(i15);
                                            i15++;
                                            str11 = str3;
                                            str10 = str4;
                                        }
                                    } else {
                                        str3 = str11;
                                        str4 = str10;
                                    }
                                    aVar7.remove(Integer.valueOf(i15));
                                    i15++;
                                    str11 = str3;
                                    str10 = str4;
                                }
                            }
                            String str20 = str11;
                            String str21 = str10;
                            Integer valueOf4 = Integer.valueOf(intValue2);
                            com.google.android.gms.internal.measurement.zzgd zzgdVar3 = (com.google.android.gms.internal.measurement.zzgd) map2.get(valueOf4);
                            if (zzs2 && zzs && (list3 = (List) map.get(valueOf4)) != null && this.zze != null && this.zzd != null) {
                                for (com.google.android.gms.internal.measurement.zzej zzejVar : list3) {
                                    int zzb = zzejVar.zzb();
                                    long longValue = this.zze.longValue() / 1000;
                                    if (zzejVar.zzm()) {
                                        longValue = this.zzd.longValue() / 1000;
                                    }
                                    Integer valueOf5 = Integer.valueOf(zzb);
                                    if (aVar7.containsKey(valueOf5)) {
                                        aVar7.put(valueOf5, Long.valueOf(longValue));
                                    }
                                    if (aVar8.containsKey(valueOf5)) {
                                        aVar8.put(valueOf5, Long.valueOf(longValue));
                                    }
                                }
                            }
                            this.zzc.put(Integer.valueOf(intValue2), new zzt(this, this.zza, zzgdVar3, bitSet, bitSet2, aVar7, aVar8, null));
                            map2 = map2;
                            str11 = str20;
                            map = map;
                            map3 = map6;
                            str10 = str21;
                        }
                    }
                    String str152 = str11;
                    String str162 = str10;
                    String str172 = str2;
                    zzu zzuVar2 = null;
                    if (!list.isEmpty()) {
                        zzv zzvVar2 = new zzv(this, zzuVar2);
                        a aVar9 = new a();
                        Iterator<com.google.android.gms.internal.measurement.zzfo> it9 = list.iterator();
                        while (it9.hasNext()) {
                            com.google.android.gms.internal.measurement.zzfo next2 = it9.next();
                            com.google.android.gms.internal.measurement.zzfo zza = zzvVar2.zza(this.zza, next2);
                            if (zza != null) {
                                zzaj zzi5 = this.zzf.zzi();
                                String str22 = this.zza;
                                String zzh2 = zza.zzh();
                                zzap zzn = zzi5.zzn(str22, next2.zzh());
                                if (zzn == null) {
                                    zzi5.zzs.zzay().zzk().zzc("Event aggregate wasn't created during raw event logging. appId, event", zzel.zzn(str22), zzi5.zzs.zzj().zzd(zzh2));
                                    zzapVar = new zzap(str22, next2.zzh(), 1L, 1L, 1L, next2.zzd(), 0L, null, null, null, null);
                                } else {
                                    zzapVar = new zzap(zzn.zza, zzn.zzb, zzn.zzc + 1, zzn.zzd + 1, zzn.zze + 1, zzn.zzf, zzn.zzg, zzn.zzh, zzn.zzi, zzn.zzj, zzn.zzk);
                                }
                                this.zzf.zzi().zzF(zzapVar);
                                long j10 = zzapVar.zzc;
                                String zzh3 = zza.zzh();
                                Map map7 = (Map) aVar9.get(zzh3);
                                if (map7 == null) {
                                    zzaj zzi6 = this.zzf.zzi();
                                    String str23 = this.zza;
                                    zzi6.zzY();
                                    zzi6.zzg();
                                    Preconditions.checkNotEmpty(str23);
                                    Preconditions.checkNotEmpty(zzh3);
                                    a aVar10 = new a();
                                    SQLiteDatabase zzh4 = zzi6.zzh();
                                    zzvVar = zzvVar2;
                                    try {
                                        try {
                                            String[] strArr = new String[2];
                                            str7 = str172;
                                            try {
                                                strArr[0] = str7;
                                                strArr[1] = "data";
                                                it4 = it9;
                                                str5 = str8;
                                            } catch (SQLiteException e18) {
                                                e = e18;
                                                str172 = str7;
                                                it4 = it9;
                                                str5 = str8;
                                                str6 = str162;
                                                cursor5 = null;
                                                zzi6.zzs.zzay().zzd().zzc(str152, zzel.zzn(str23), e);
                                                map7 = Collections.emptyMap();
                                            }
                                            try {
                                                cursor5 = zzh4.query("event_filters", strArr, "app_id=? AND event_name=?", new String[]{str23, zzh3}, null, null, null);
                                            } catch (SQLiteException e19) {
                                                e = e19;
                                                str172 = str7;
                                                str6 = str162;
                                                cursor5 = null;
                                                zzi6.zzs.zzay().zzd().zzc(str152, zzel.zzn(str23), e);
                                                map7 = Collections.emptyMap();
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            cursor4 = null;
                                        }
                                    } catch (SQLiteException e20) {
                                        e = e20;
                                    }
                                    try {
                                        try {
                                        } catch (SQLiteException e21) {
                                            e = e21;
                                            str172 = str7;
                                        }
                                        if (cursor5.moveToFirst()) {
                                            while (true) {
                                                try {
                                                    com.google.android.gms.internal.measurement.zzej zzaA2 = ((com.google.android.gms.internal.measurement.zzei) zzku.zzl(com.google.android.gms.internal.measurement.zzej.zzc(), cursor5.getBlob(1))).zzaA();
                                                    Integer valueOf6 = Integer.valueOf(cursor5.getInt(0));
                                                    List list9 = (List) aVar10.get(valueOf6);
                                                    if (list9 == null) {
                                                        str172 = str7;
                                                        try {
                                                            list4 = new ArrayList();
                                                            aVar10.put(valueOf6, list4);
                                                        } catch (SQLiteException e22) {
                                                            e = e22;
                                                            str6 = str162;
                                                            zzi6.zzs.zzay().zzd().zzc(str152, zzel.zzn(str23), e);
                                                            map7 = Collections.emptyMap();
                                                        }
                                                    } else {
                                                        str172 = str7;
                                                        list4 = list9;
                                                    }
                                                    list4.add(zzaA2);
                                                    aVar = aVar10;
                                                    str6 = str162;
                                                } catch (IOException e23) {
                                                    str172 = str7;
                                                    aVar = aVar10;
                                                    str6 = str162;
                                                    try {
                                                        zzi6.zzs.zzay().zzd().zzc(str6, zzel.zzn(str23), e23);
                                                    } catch (SQLiteException e24) {
                                                        e = e24;
                                                        zzi6.zzs.zzay().zzd().zzc(str152, zzel.zzn(str23), e);
                                                        map7 = Collections.emptyMap();
                                                    }
                                                }
                                                if (!cursor5.moveToNext()) {
                                                    break;
                                                }
                                                str162 = str6;
                                                aVar10 = aVar;
                                                str7 = str172;
                                            }
                                            cursor5.close();
                                            map7 = aVar;
                                            aVar9.put(zzh3, map7);
                                        } else {
                                            str172 = str7;
                                            str6 = str162;
                                            map7 = Collections.emptyMap();
                                            cursor5.close();
                                            aVar9.put(zzh3, map7);
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        cursor4 = cursor5;
                                        if (cursor4 != null) {
                                            cursor4.close();
                                        }
                                        throw th;
                                    }
                                } else {
                                    zzvVar = zzvVar2;
                                    it4 = it9;
                                    str5 = str8;
                                    str6 = str162;
                                }
                                Iterator it10 = map7.keySet().iterator();
                                while (it10.hasNext()) {
                                    int intValue3 = ((Integer) it10.next()).intValue();
                                    Set<Integer> set = this.zzb;
                                    Integer valueOf7 = Integer.valueOf(intValue3);
                                    if (set.contains(valueOf7)) {
                                        this.zzs.zzay().zzj().zzb("Skipping failed audience ID", valueOf7);
                                    } else {
                                        Iterator it11 = ((List) map7.get(valueOf7)).iterator();
                                        boolean z11 = true;
                                        while (true) {
                                            if (!it11.hasNext()) {
                                                map5 = map7;
                                                break;
                                            }
                                            com.google.android.gms.internal.measurement.zzej zzejVar2 = (com.google.android.gms.internal.measurement.zzej) it11.next();
                                            zzw zzwVar = new zzw(this, this.zza, intValue3, zzejVar2);
                                            map5 = map7;
                                            z11 = zzwVar.zzd(this.zzd, this.zze, zza, j10, zzapVar, zzf(intValue3, zzejVar2.zzb()));
                                            if (z11) {
                                                zzd(Integer.valueOf(intValue3)).zzc(zzwVar);
                                                map7 = map5;
                                            } else {
                                                this.zzb.add(Integer.valueOf(intValue3));
                                                break;
                                            }
                                        }
                                        if (!z11) {
                                            this.zzb.add(Integer.valueOf(intValue3));
                                        }
                                        map7 = map5;
                                    }
                                }
                                it9 = it4;
                                str162 = str6;
                                zzvVar2 = zzvVar;
                                str8 = str5;
                            }
                        }
                    }
                    String str182 = str8;
                    if (!list2.isEmpty()) {
                        a aVar11 = new a();
                        for (com.google.android.gms.internal.measurement.zzgh zzghVar : list2) {
                            String zzf = zzghVar.zzf();
                            Map map8 = (Map) aVar11.get(zzf);
                            if (map8 == null) {
                                zzaj zzi7 = this.zzf.zzi();
                                String str24 = this.zza;
                                zzi7.zzY();
                                zzi7.zzg();
                                Preconditions.checkNotEmpty(str24);
                                Preconditions.checkNotEmpty(zzf);
                                a aVar12 = new a();
                                try {
                                    cursor7 = zzi7.zzh().query("property_filters", new String[]{str172, "data"}, "app_id=? AND property_name=?", new String[]{str24, zzf}, null, null, null);
                                    try {
                                        try {
                                        } catch (Throwable th7) {
                                            th = th7;
                                            cursor6 = cursor7;
                                            if (cursor6 != null) {
                                                cursor6.close();
                                            }
                                            throw th;
                                        }
                                    } catch (SQLiteException e25) {
                                        e = e25;
                                    }
                                } catch (SQLiteException e26) {
                                    e = e26;
                                    cursor7 = null;
                                } catch (Throwable th8) {
                                    th = th8;
                                    cursor6 = null;
                                }
                                if (!cursor7.moveToFirst()) {
                                    map8 = Collections.emptyMap();
                                    cursor7.close();
                                    aVar11.put(zzf, map8);
                                }
                                do {
                                    try {
                                        com.google.android.gms.internal.measurement.zzes zzaA3 = ((com.google.android.gms.internal.measurement.zzer) zzku.zzl(com.google.android.gms.internal.measurement.zzes.zzc(), cursor7.getBlob(1))).zzaA();
                                        try {
                                            Integer valueOf8 = Integer.valueOf(cursor7.getInt(0));
                                            List list10 = (List) aVar12.get(valueOf8);
                                            if (list10 == null) {
                                                list10 = new ArrayList();
                                                aVar12.put(valueOf8, list10);
                                            }
                                            list10.add(zzaA3);
                                        } catch (SQLiteException e27) {
                                            e = e27;
                                            zzi7.zzs.zzay().zzd().zzc(str152, zzel.zzn(str24), e);
                                            map8 = Collections.emptyMap();
                                        }
                                    } catch (IOException e28) {
                                        zzi7.zzs.zzay().zzd().zzc("Failed to merge filter", zzel.zzn(str24), e28);
                                    }
                                } while (cursor7.moveToNext());
                                cursor7.close();
                                map8 = aVar12;
                                aVar11.put(zzf, map8);
                            }
                            Iterator it12 = map8.keySet().iterator();
                            while (true) {
                                if (it12.hasNext()) {
                                    int intValue4 = ((Integer) it12.next()).intValue();
                                    Set<Integer> set2 = this.zzb;
                                    Integer valueOf9 = Integer.valueOf(intValue4);
                                    if (set2.contains(valueOf9)) {
                                        this.zzs.zzay().zzj().zzb("Skipping failed audience ID", valueOf9);
                                        break;
                                    }
                                    Iterator it13 = ((List) map8.get(valueOf9)).iterator();
                                    boolean z12 = true;
                                    while (true) {
                                        if (!it13.hasNext()) {
                                            break;
                                        }
                                        com.google.android.gms.internal.measurement.zzes zzesVar = (com.google.android.gms.internal.measurement.zzes) it13.next();
                                        if (Log.isLoggable(this.zzs.zzay().zzq(), 2)) {
                                            this.zzs.zzay().zzj().zzd("Evaluating filter. audience, filter, property", Integer.valueOf(intValue4), zzesVar.zzj() ? Integer.valueOf(zzesVar.zza()) : null, this.zzs.zzj().zzf(zzesVar.zze()));
                                            this.zzs.zzay().zzj().zzb("Filter definition", this.zzf.zzu().zzp(zzesVar));
                                        }
                                        if (!zzesVar.zzj() || zzesVar.zza() > 256) {
                                            break;
                                        }
                                        zzy zzyVar = new zzy(this, this.zza, intValue4, zzesVar);
                                        z12 = zzyVar.zzd(this.zzd, this.zze, zzghVar, zzf(intValue4, zzesVar.zza()));
                                        if (z12) {
                                            zzd(Integer.valueOf(intValue4)).zzc(zzyVar);
                                        } else {
                                            this.zzb.add(Integer.valueOf(intValue4));
                                            break;
                                        }
                                    }
                                    if (z12) {
                                    }
                                    this.zzb.add(Integer.valueOf(intValue4));
                                }
                            }
                        }
                    }
                    ArrayList arrayList2 = new ArrayList();
                    Set<Integer> keySet2 = this.zzc.keySet();
                    keySet2.removeAll(this.zzb);
                    it5 = keySet2.iterator();
                    while (it5.hasNext()) {
                        int intValue5 = it5.next().intValue();
                        Map<Integer, zzt> map9 = this.zzc;
                        Integer valueOf10 = Integer.valueOf(intValue5);
                        zzt zztVar = map9.get(valueOf10);
                        Preconditions.checkNotNull(zztVar);
                        com.google.android.gms.internal.measurement.zzfk zza2 = zztVar.zza(intValue5);
                        arrayList2.add(zza2);
                        zzaj zzi8 = this.zzf.zzi();
                        String str25 = this.zza;
                        com.google.android.gms.internal.measurement.zzgd zzd = zza2.zzd();
                        zzi8.zzY();
                        zzi8.zzg();
                        Preconditions.checkNotEmpty(str25);
                        Preconditions.checkNotNull(zzd);
                        byte[] zzbs = zzd.zzbs();
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("app_id", str25);
                        String str26 = str172;
                        contentValues2.put(str26, valueOf10);
                        String str27 = str182;
                        contentValues2.put(str27, zzbs);
                        try {
                            try {
                                if (zzi8.zzh().insertWithOnConflict("audience_filter_values", null, contentValues2, 5) == -1) {
                                    zzi8.zzs.zzay().zzd().zzb("Failed to insert filter results (got -1). appId", zzel.zzn(str25));
                                }
                            } catch (SQLiteException e29) {
                                e = e29;
                                zzi8.zzs.zzay().zzd().zzc("Error storing filter results. appId", zzel.zzn(str25), e);
                                str182 = str27;
                                str172 = str26;
                            }
                        } catch (SQLiteException e30) {
                            e = e30;
                        }
                        str182 = str27;
                        str172 = str26;
                    }
                    return arrayList2;
                }
                emptyMap = Collections.emptyMap();
                cursor8.close();
            }
            if (cursor2.moveToFirst()) {
            }
            if (!map2.isEmpty()) {
            }
            String str1522 = str11;
            String str1622 = str10;
            String str1722 = str2;
            zzu zzuVar22 = null;
            if (!list.isEmpty()) {
            }
            String str1822 = str8;
            if (!list2.isEmpty()) {
            }
            ArrayList arrayList22 = new ArrayList();
            Set<Integer> keySet22 = this.zzc.keySet();
            keySet22.removeAll(this.zzb);
            it5 = keySet22.iterator();
            while (it5.hasNext()) {
            }
            return arrayList22;
        } catch (Throwable th9) {
            th = th9;
            Cursor cursor9 = cursor2;
            if (cursor9 != null) {
                cursor9.close();
            }
            throw th;
        }
        map = emptyMap;
        zzaj zzi32 = this.zzf.zzi();
        String str142 = this.zza;
        zzi32.zzY();
        zzi32.zzg();
        Preconditions.checkNotEmpty(str142);
        cursor2 = zzi32.zzh().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str142}, null, null, null);
    }

    @Override // com.google.android.gms.measurement.internal.zzki
    public final boolean zzb() {
        return false;
    }
}
