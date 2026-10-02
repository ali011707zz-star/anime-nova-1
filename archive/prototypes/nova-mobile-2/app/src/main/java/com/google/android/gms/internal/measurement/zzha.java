package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import s.a;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzha implements zzhe {
    private final ContentResolver zzc;
    private final Uri zzd;
    private final ContentObserver zze;
    private final Object zzf;
    private volatile Map<String, String> zzg;
    private final List<zzhb> zzh;
    private static final Map<Uri, zzha> zzb = new a();
    public static final String[] zza = {"key", AppMeasurementSdk.ConditionalUserProperty.VALUE};

    private zzha(ContentResolver contentResolver, Uri uri) {
        zzgz zzgzVar = new zzgz(this, null);
        this.zze = zzgzVar;
        this.zzf = new Object();
        this.zzh = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.zzc = contentResolver;
        this.zzd = uri;
        contentResolver.registerContentObserver(uri, false, zzgzVar);
    }

    public static zzha zza(ContentResolver contentResolver, Uri uri) {
        zzha zzhaVar;
        synchronized (zzha.class) {
            Map<Uri, zzha> map = zzb;
            zzhaVar = map.get(uri);
            if (zzhaVar == null) {
                try {
                    zzha zzhaVar2 = new zzha(contentResolver, uri);
                    try {
                        map.put(uri, zzhaVar2);
                    } catch (SecurityException unused) {
                    }
                    zzhaVar = zzhaVar2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return zzhaVar;
    }

    public static synchronized void zze() {
        synchronized (zzha.class) {
            for (zzha zzhaVar : zzb.values()) {
                zzhaVar.zzc.unregisterContentObserver(zzhaVar.zze);
            }
            zzb.clear();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhe
    public final /* bridge */ /* synthetic */ Object zzb(String str) {
        return zzc().get(str);
    }

    public final Map<String, String> zzc() {
        Map<String, String> map;
        Map<String, String> map2 = this.zzg;
        if (map2 == null) {
            synchronized (this.zzf) {
                map2 = this.zzg;
                if (map2 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        map = (Map) zzhc.zza(new zzhd() { // from class: com.google.android.gms.internal.measurement.zzgy
                            @Override // com.google.android.gms.internal.measurement.zzhd
                            public final Object zza() {
                                return zzha.this.zzd();
                            }
                        });
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    } catch (SQLiteException | IllegalStateException | SecurityException unused) {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        map = null;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        throw th;
                    }
                    this.zzg = map;
                    map2 = map;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    public final /* synthetic */ Map zzd() {
        Map hashMap;
        Cursor query = this.zzc.query(this.zzd, zza, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            if (count <= 256) {
                hashMap = new a(count);
            } else {
                hashMap = new HashMap(count, 1.0f);
            }
            while (query.moveToNext()) {
                hashMap.put(query.getString(0), query.getString(1));
            }
            return hashMap;
        } finally {
            query.close();
        }
    }

    public final void zzf() {
        synchronized (this.zzf) {
            this.zzg = null;
            zzhu.zze();
        }
        synchronized (this) {
            Iterator<zzhb> it2 = this.zzh.iterator();
            while (it2.hasNext()) {
                it2.next().zza();
            }
        }
    }
}
