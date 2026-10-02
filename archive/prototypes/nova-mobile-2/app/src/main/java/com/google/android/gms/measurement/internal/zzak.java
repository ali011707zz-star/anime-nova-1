package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzak {
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        if (r0 == false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void zza(zzel zzelVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) throws SQLiteException {
        Cursor cursor;
        if (zzelVar != null) {
            Cursor cursor2 = null;
            try {
                cursor = sQLiteDatabase.query("SQLITE_MASTER", new String[]{AppMeasurementSdk.ConditionalUserProperty.NAME}, "name=?", new String[]{str}, null, null, null);
                try {
                    try {
                        boolean moveToFirst = cursor.moveToFirst();
                        cursor.close();
                    } catch (SQLiteException e10) {
                        e = e10;
                        zzelVar.zzk().zzc("Error querying for table", str, e);
                        if (cursor != null) {
                            cursor.close();
                        }
                        sQLiteDatabase.execSQL(str2);
                        try {
                            HashSet hashSet = new HashSet();
                            StringBuilder sb2 = new StringBuilder(str.length() + 22);
                            sb2.append("SELECT * FROM ");
                            sb2.append(str);
                            sb2.append(" LIMIT 0");
                            Cursor rawQuery = sQLiteDatabase.rawQuery(sb2.toString(), null);
                            try {
                                Collections.addAll(hashSet, rawQuery.getColumnNames());
                                rawQuery.close();
                                for (String str4 : str3.split(",")) {
                                    if (!hashSet.remove(str4)) {
                                        StringBuilder sb3 = new StringBuilder(str.length() + 35 + String.valueOf(str4).length());
                                        sb3.append("Table ");
                                        sb3.append(str);
                                        sb3.append(" is missing required column: ");
                                        sb3.append(str4);
                                        throw new SQLiteException(sb3.toString());
                                    }
                                }
                                if (strArr != null) {
                                    for (int i10 = 0; i10 < strArr.length; i10 += 2) {
                                        if (!hashSet.remove(strArr[i10])) {
                                            sQLiteDatabase.execSQL(strArr[i10 + 1]);
                                        }
                                    }
                                }
                                if (hashSet.isEmpty()) {
                                    return;
                                }
                                zzelVar.zzk().zzc("Table has extra columns. table, columns", str, TextUtils.join(", ", hashSet));
                            } catch (Throwable th) {
                                rawQuery.close();
                                throw th;
                            }
                        } catch (SQLiteException e11) {
                            zzelVar.zzd().zzb("Failed to verify columns on table that was just created", str);
                            throw e11;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e12) {
                e = e12;
                cursor = null;
            } catch (Throwable th3) {
                th = th3;
                if (cursor2 != null) {
                }
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Monitor must not be null");
        }
    }

    public static void zzb(zzel zzelVar, SQLiteDatabase sQLiteDatabase) {
        if (zzelVar != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                zzelVar.zzk().zza("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                zzelVar.zzk().zza("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                zzelVar.zzk().zza("Failed to turn on database read permission for owner");
            }
            if (file.setWritable(true, true)) {
                return;
            }
            zzelVar.zzk().zza("Failed to turn on database write permission for owner");
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }
}
