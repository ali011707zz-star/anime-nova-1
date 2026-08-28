package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.cache.DiskLruCache;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzee extends zzf {
    private final zzed zza;
    private boolean zzb;

    public zzee(zzfv zzfvVar) {
        super(zzfvVar);
        Context zzau = this.zzs.zzau();
        this.zzs.zzf();
        this.zza = new zzed(this, zzau, "google_app_measurement_local.db");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0129  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v10, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean zzq(int i10, byte[] bArr) {
        SQLiteDatabase sQLiteDatabase;
        ?? r10;
        Cursor cursor;
        zzg();
        ?? r22 = 0;
        if (this.zzb) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", Integer.valueOf(i10));
        contentValues.put("entry", bArr);
        this.zzs.zzf();
        int i11 = 0;
        int i12 = 5;
        for (int i13 = 5; i11 < i13; i13 = 5) {
            Cursor cursor2 = null;
            cursor2 = null;
            cursor2 = null;
            r8 = null;
            SQLiteDatabase sQLiteDatabase2 = null;
            try {
                sQLiteDatabase = zzh();
                try {
                    if (sQLiteDatabase == null) {
                        this.zzb = true;
                        return r22;
                    }
                    sQLiteDatabase.beginTransaction();
                    r10 = sQLiteDatabase.rawQuery("select count(1) from messages", null);
                    long j10 = 0;
                    if (r10 != 0) {
                        try {
                            if (r10.moveToFirst()) {
                                j10 = r10.getLong(r22);
                            }
                        } catch (SQLiteDatabaseLockedException unused) {
                            cursor2 = r10;
                            try {
                                SystemClock.sleep(i12);
                                i12 += 20;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                i11++;
                                r22 = 0;
                            } catch (Throwable th) {
                                th = th;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteFullException e10) {
                            e = e10;
                            sQLiteDatabase2 = sQLiteDatabase;
                            cursor = r10;
                            this.zzs.zzay().zzd().zzb("Error writing entry; local database full", e);
                            this.zzb = true;
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (sQLiteDatabase2 == null) {
                                i11++;
                                r22 = 0;
                            }
                            sQLiteDatabase2.close();
                            i11++;
                            r22 = 0;
                        } catch (SQLiteException e11) {
                            e = e11;
                            sQLiteDatabase2 = sQLiteDatabase;
                            r10 = r10;
                            if (sQLiteDatabase2 != null) {
                                try {
                                    if (sQLiteDatabase2.inTransaction()) {
                                        sQLiteDatabase2.endTransaction();
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    cursor2 = r10;
                                    if (cursor2 != null) {
                                    }
                                    if (sQLiteDatabase != null) {
                                    }
                                    throw th;
                                }
                            }
                            this.zzs.zzay().zzd().zzb("Error writing entry to local database", e);
                            this.zzb = true;
                            if (r10 != 0) {
                                r10.close();
                            }
                            if (sQLiteDatabase2 == null) {
                                i11++;
                                r22 = 0;
                            }
                            sQLiteDatabase2.close();
                            i11++;
                            r22 = 0;
                        } catch (Throwable th3) {
                            th = th3;
                            cursor2 = r10;
                            if (cursor2 != null) {
                            }
                            if (sQLiteDatabase != null) {
                            }
                            throw th;
                        }
                    }
                    if (j10 >= 100000) {
                        this.zzs.zzay().zzd().zza("Data loss, local db full");
                        long j11 = (100000 - j10) + 1;
                        String[] strArr = new String[1];
                        strArr[r22] = Long.toString(j11);
                        long delete = sQLiteDatabase.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", strArr);
                        if (delete != j11) {
                            this.zzs.zzay().zzd().zzd("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j11), Long.valueOf(delete), Long.valueOf(j11 - delete));
                        }
                    }
                    sQLiteDatabase.insertOrThrow("messages", null, contentValues);
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    if (r10 != 0) {
                        r10.close();
                    }
                    sQLiteDatabase.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused2) {
                } catch (SQLiteFullException e12) {
                    e = e12;
                    r10 = 0;
                } catch (SQLiteException e13) {
                    e = e13;
                    r10 = 0;
                }
            } catch (SQLiteDatabaseLockedException unused3) {
                sQLiteDatabase = null;
            } catch (SQLiteFullException e14) {
                e = e14;
                cursor = null;
            } catch (SQLiteException e15) {
                e = e15;
                r10 = 0;
            } catch (Throwable th4) {
                th = th4;
                sQLiteDatabase = null;
                if (cursor2 != null) {
                }
                if (sQLiteDatabase != null) {
                }
                throw th;
            }
        }
        this.zzs.zzay().zzj().zza("Failed to write entry to local database");
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final boolean zzf() {
        return false;
    }

    @VisibleForTesting
    public final SQLiteDatabase zzh() throws SQLiteException {
        if (this.zzb) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zza.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.zzb = true;
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:194:0x01e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0258 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0258 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0258 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x020b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0266  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<AbstractSafeParcelable> zzi(int i10) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase2;
        Cursor cursor2;
        long j10;
        long j11;
        String str;
        String[] strArr;
        Parcel obtain;
        zzkv zzkvVar;
        zzab zzabVar;
        zzg();
        Cursor cursor3 = null;
        if (this.zzb) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!zzl()) {
            return arrayList;
        }
        int i11 = 0;
        int i12 = 5;
        for (int i13 = 5; i11 < i13; i13 = 5) {
            try {
                SQLiteDatabase zzh = zzh();
                if (zzh == null) {
                    this.zzb = true;
                    return null;
                }
                try {
                    zzh.beginTransaction();
                    try {
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabase2 = zzh;
                    }
                    try {
                        cursor2 = zzh.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", DiskLruCache.VERSION_1);
                        try {
                            j10 = -1;
                            if (cursor2.moveToFirst()) {
                                j11 = cursor2.getLong(0);
                                try {
                                    cursor2.close();
                                } catch (SQLiteDatabaseLockedException unused) {
                                    sQLiteDatabase2 = zzh;
                                    cursor = null;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    SystemClock.sleep(i12);
                                    i12 += 20;
                                    if (cursor != null) {
                                    }
                                    if (sQLiteDatabase == null) {
                                    }
                                    sQLiteDatabase.close();
                                    i11++;
                                } catch (SQLiteFullException e10) {
                                    e = e10;
                                    sQLiteDatabase2 = zzh;
                                    cursor = null;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    this.zzs.zzay().zzd().zzb("Error reading entries from local database", e);
                                    this.zzb = true;
                                    if (cursor != null) {
                                    }
                                    if (sQLiteDatabase == null) {
                                    }
                                    sQLiteDatabase.close();
                                    i11++;
                                } catch (SQLiteException e11) {
                                    e = e11;
                                    sQLiteDatabase2 = zzh;
                                    cursor = null;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    if (sQLiteDatabase != null) {
                                    }
                                    this.zzs.zzay().zzd().zzb("Error reading entries from local database", e);
                                    this.zzb = true;
                                    if (cursor != null) {
                                    }
                                    if (sQLiteDatabase == null) {
                                    }
                                    sQLiteDatabase.close();
                                    i11++;
                                } catch (Throwable th2) {
                                    th = th2;
                                    sQLiteDatabase2 = zzh;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    if (cursor3 != null) {
                                    }
                                    if (sQLiteDatabase != null) {
                                    }
                                    throw th;
                                }
                            } else {
                                cursor2.close();
                                j11 = -1;
                            }
                            if (j11 != -1) {
                                str = "rowid<?";
                                strArr = new String[]{String.valueOf(j11)};
                            } else {
                                str = null;
                                strArr = null;
                            }
                            cursor = zzh.query("messages", new String[]{"rowid", "type", "entry"}, str, strArr, null, null, "rowid asc", Integer.toString(100));
                            while (cursor.moveToNext()) {
                                try {
                                    j10 = cursor.getLong(0);
                                    int i14 = cursor.getInt(1);
                                    byte[] blob = cursor.getBlob(2);
                                    if (i14 == 0) {
                                        obtain = Parcel.obtain();
                                        try {
                                            try {
                                                obtain.unmarshall(blob, 0, blob.length);
                                                obtain.setDataPosition(0);
                                                zzat createFromParcel = zzat.CREATOR.createFromParcel(obtain);
                                                if (createFromParcel != null) {
                                                    arrayList.add(createFromParcel);
                                                }
                                            } catch (SafeParcelReader.ParseException unused2) {
                                                this.zzs.zzay().zzd().zza("Failed to load event from local database");
                                                obtain.recycle();
                                            }
                                        } finally {
                                        }
                                    } else if (i14 == 1) {
                                        obtain = Parcel.obtain();
                                        try {
                                            try {
                                                obtain.unmarshall(blob, 0, blob.length);
                                                obtain.setDataPosition(0);
                                                zzkvVar = zzkv.CREATOR.createFromParcel(obtain);
                                            } catch (SafeParcelReader.ParseException unused3) {
                                                this.zzs.zzay().zzd().zza("Failed to load user property from local database");
                                                obtain.recycle();
                                                zzkvVar = null;
                                            }
                                            if (zzkvVar != null) {
                                                arrayList.add(zzkvVar);
                                            }
                                        } finally {
                                        }
                                    } else if (i14 == 2) {
                                        obtain = Parcel.obtain();
                                        try {
                                            try {
                                                obtain.unmarshall(blob, 0, blob.length);
                                                obtain.setDataPosition(0);
                                                zzabVar = zzab.CREATOR.createFromParcel(obtain);
                                            } finally {
                                            }
                                        } catch (SafeParcelReader.ParseException unused4) {
                                            this.zzs.zzay().zzd().zza("Failed to load conditional user property from local database");
                                            obtain.recycle();
                                            zzabVar = null;
                                        }
                                        if (zzabVar != null) {
                                            arrayList.add(zzabVar);
                                        }
                                    } else if (i14 == 3) {
                                        this.zzs.zzay().zzk().zza("Skipping app launch break");
                                    } else {
                                        this.zzs.zzay().zzd().zza("Unknown record type in local database");
                                    }
                                } catch (SQLiteDatabaseLockedException unused5) {
                                    sQLiteDatabase2 = zzh;
                                } catch (SQLiteFullException e12) {
                                    e = e12;
                                    sQLiteDatabase2 = zzh;
                                } catch (SQLiteException e13) {
                                    e = e13;
                                    sQLiteDatabase2 = zzh;
                                } catch (Throwable th3) {
                                    th = th3;
                                    sQLiteDatabase2 = zzh;
                                }
                            }
                            sQLiteDatabase2 = zzh;
                        } catch (Throwable th4) {
                            th = th4;
                            sQLiteDatabase2 = zzh;
                            if (cursor2 != null) {
                                try {
                                    cursor2.close();
                                } catch (SQLiteDatabaseLockedException unused6) {
                                    cursor = null;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    SystemClock.sleep(i12);
                                    i12 += 20;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    if (sQLiteDatabase == null) {
                                        i11++;
                                    }
                                    sQLiteDatabase.close();
                                    i11++;
                                } catch (SQLiteFullException e14) {
                                    e = e14;
                                    cursor = null;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    this.zzs.zzay().zzd().zzb("Error reading entries from local database", e);
                                    this.zzb = true;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    if (sQLiteDatabase == null) {
                                        i11++;
                                    }
                                    sQLiteDatabase.close();
                                    i11++;
                                } catch (SQLiteException e15) {
                                    e = e15;
                                    cursor = null;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    if (sQLiteDatabase != null) {
                                        try {
                                            if (sQLiteDatabase.inTransaction()) {
                                                sQLiteDatabase.endTransaction();
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            cursor3 = cursor;
                                            if (cursor3 != null) {
                                                cursor3.close();
                                            }
                                            if (sQLiteDatabase != null) {
                                                sQLiteDatabase.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    this.zzs.zzay().zzd().zzb("Error reading entries from local database", e);
                                    this.zzb = true;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    if (sQLiteDatabase == null) {
                                        i11++;
                                    }
                                    sQLiteDatabase.close();
                                    i11++;
                                } catch (Throwable th6) {
                                    th = th6;
                                    sQLiteDatabase = sQLiteDatabase2;
                                    if (cursor3 != null) {
                                    }
                                    if (sQLiteDatabase != null) {
                                    }
                                    throw th;
                                }
                            }
                            throw th;
                            break;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        sQLiteDatabase2 = zzh;
                        cursor2 = null;
                        if (cursor2 != null) {
                        }
                        throw th;
                        break;
                        break;
                    }
                } catch (SQLiteDatabaseLockedException unused7) {
                    sQLiteDatabase2 = zzh;
                } catch (SQLiteFullException e16) {
                    e = e16;
                    sQLiteDatabase2 = zzh;
                } catch (SQLiteException e17) {
                    e = e17;
                    sQLiteDatabase2 = zzh;
                } catch (Throwable th8) {
                    th = th8;
                    sQLiteDatabase2 = zzh;
                }
                try {
                    if (sQLiteDatabase2.delete("messages", "rowid <= ?", new String[]{Long.toString(j10)}) < arrayList.size()) {
                        this.zzs.zzay().zzd().zza("Fewer entries removed from local database than expected");
                    }
                    sQLiteDatabase2.setTransactionSuccessful();
                    sQLiteDatabase2.endTransaction();
                    cursor.close();
                    sQLiteDatabase2.close();
                    return arrayList;
                } catch (SQLiteDatabaseLockedException unused8) {
                    sQLiteDatabase = sQLiteDatabase2;
                    SystemClock.sleep(i12);
                    i12 += 20;
                    if (cursor != null) {
                    }
                    if (sQLiteDatabase == null) {
                    }
                    sQLiteDatabase.close();
                    i11++;
                } catch (SQLiteFullException e18) {
                    e = e18;
                    sQLiteDatabase = sQLiteDatabase2;
                    this.zzs.zzay().zzd().zzb("Error reading entries from local database", e);
                    this.zzb = true;
                    if (cursor != null) {
                    }
                    if (sQLiteDatabase == null) {
                    }
                    sQLiteDatabase.close();
                    i11++;
                } catch (SQLiteException e19) {
                    e = e19;
                    sQLiteDatabase = sQLiteDatabase2;
                    if (sQLiteDatabase != null) {
                    }
                    this.zzs.zzay().zzd().zzb("Error reading entries from local database", e);
                    this.zzb = true;
                    if (cursor != null) {
                    }
                    if (sQLiteDatabase == null) {
                    }
                    sQLiteDatabase.close();
                    i11++;
                } catch (Throwable th9) {
                    th = th9;
                    cursor3 = cursor;
                    sQLiteDatabase = sQLiteDatabase2;
                    if (cursor3 != null) {
                    }
                    if (sQLiteDatabase != null) {
                    }
                    throw th;
                }
            } catch (SQLiteDatabaseLockedException unused9) {
                cursor = null;
                sQLiteDatabase = null;
            } catch (SQLiteFullException e20) {
                e = e20;
                cursor = null;
                sQLiteDatabase = null;
            } catch (SQLiteException e21) {
                e = e21;
                cursor = null;
                sQLiteDatabase = null;
            } catch (Throwable th10) {
                th = th10;
                sQLiteDatabase = null;
            }
        }
        this.zzs.zzay().zzk().zza("Failed to read events from database in reasonable time");
        return null;
    }

    public final void zzj() {
        int delete;
        zzg();
        try {
            SQLiteDatabase zzh = zzh();
            if (zzh == null || (delete = zzh.delete("messages", null, null)) <= 0) {
                return;
            }
            this.zzs.zzay().zzj().zzb("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e10) {
            this.zzs.zzay().zzd().zzb("Error resetting local analytics data. error", e10);
        }
    }

    public final boolean zzk() {
        return zzq(3, new byte[0]);
    }

    @VisibleForTesting
    public final boolean zzl() {
        Context zzau = this.zzs.zzau();
        this.zzs.zzf();
        return zzau.getDatabasePath("google_app_measurement_local.db").exists();
    }

    public final boolean zzm() {
        int i10;
        zzg();
        if (!this.zzb && zzl()) {
            int i11 = 5;
            while (i10 < 5) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase zzh = zzh();
                    if (zzh == null) {
                        this.zzb = true;
                        return false;
                    }
                    zzh.beginTransaction();
                    zzh.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    zzh.setTransactionSuccessful();
                    zzh.endTransaction();
                    zzh.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep(i11);
                    i11 += 20;
                    i10 = 0 == 0 ? i10 + 1 : 0;
                    sQLiteDatabase.close();
                } catch (SQLiteFullException e10) {
                    this.zzs.zzay().zzd().zzb("Error deleting app launch break from local database", e10);
                    this.zzb = true;
                    if (0 == 0) {
                    }
                    sQLiteDatabase.close();
                } catch (SQLiteException e11) {
                    if (0 != 0) {
                        try {
                            if (sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Throwable th) {
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                            throw th;
                        }
                    }
                    this.zzs.zzay().zzd().zzb("Error deleting app launch break from local database", e11);
                    this.zzb = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            }
            this.zzs.zzay().zzk().zza("Error deleting app launch break from local database in reasonable time");
        }
        return false;
    }

    public final boolean zzn(zzab zzabVar) {
        byte[] zzan = this.zzs.zzv().zzan(zzabVar);
        if (zzan.length > 131072) {
            this.zzs.zzay().zzh().zza("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return zzq(2, zzan);
    }

    public final boolean zzo(zzat zzatVar) {
        Parcel obtain = Parcel.obtain();
        zzau.zza(zzatVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzs.zzay().zzh().zza("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return zzq(0, marshall);
    }

    public final boolean zzp(zzkv zzkvVar) {
        Parcel obtain = Parcel.obtain();
        zzkw.zza(zzkvVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzs.zzay().zzh().zza("User property too long for local database. Sending directly to service");
            return false;
        }
        return zzq(1, marshall);
    }
}
