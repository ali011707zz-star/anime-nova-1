package n0;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import n0.f;
import org.apache.http.HttpStatus;

/* compiled from: FontProvider.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final Comparator<byte[]> f11124a = new a();

    /* compiled from: FontProvider.java */
    /* loaded from: classes.dex */
    public class a implements Comparator<byte[]> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            int i10;
            int i11;
            if (bArr.length != bArr2.length) {
                i10 = bArr.length;
                i11 = bArr2.length;
            } else {
                for (int i12 = 0; i12 < bArr.length; i12++) {
                    if (bArr[i12] != bArr2[i12]) {
                        i10 = bArr[i12];
                        i11 = bArr2[i12];
                    }
                }
                return 0;
            }
            return i10 - i11;
        }
    }

    public static List<byte[]> a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    public static boolean b(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!Arrays.equals(list.get(i10), list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public static List<List<byte[]>> c(d dVar, Resources resources) {
        if (dVar.b() != null) {
            return dVar.b();
        }
        return g0.e.c(resources, dVar.c());
    }

    public static f.a d(Context context, d dVar, CancellationSignal cancellationSignal) throws PackageManager.NameNotFoundException {
        ProviderInfo e10 = e(context.getPackageManager(), dVar, context.getResources());
        if (e10 == null) {
            return f.a.a(1, null);
        }
        return f.a.a(0, f(context, dVar, e10.authority, cancellationSignal));
    }

    public static ProviderInfo e(PackageManager packageManager, d dVar, Resources resources) throws PackageManager.NameNotFoundException {
        String e10 = dVar.e();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(e10, 0);
        if (resolveContentProvider != null) {
            if (resolveContentProvider.packageName.equals(dVar.f())) {
                List<byte[]> a10 = a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
                Collections.sort(a10, f11124a);
                List<List<byte[]>> c10 = c(dVar, resources);
                for (int i10 = 0; i10 < c10.size(); i10++) {
                    ArrayList arrayList = new ArrayList(c10.get(i10));
                    Collections.sort(arrayList, f11124a);
                    if (b(a10, arrayList)) {
                        return resolveContentProvider;
                    }
                }
                return null;
            }
            throw new PackageManager.NameNotFoundException("Found content provider " + e10 + ", but package was not " + dVar.f());
        }
        throw new PackageManager.NameNotFoundException("No package found for authority: " + e10);
    }

    public static f.b[] f(Context context, d dVar, String str, CancellationSignal cancellationSignal) {
        int i10;
        Cursor query;
        Uri withAppendedId;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor = null;
        try {
            String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
            if (Build.VERSION.SDK_INT > 16) {
                i10 = 1;
                query = context.getContentResolver().query(build, strArr, "query = ?", new String[]{dVar.g()}, null, cancellationSignal);
            } else {
                i10 = 1;
                query = context.getContentResolver().query(build, strArr, "query = ?", new String[]{dVar.g()}, null);
            }
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        int columnIndex = query.getColumnIndex("result_code");
                        arrayList = new ArrayList();
                        int columnIndex2 = query.getColumnIndex("_id");
                        int columnIndex3 = query.getColumnIndex("file_id");
                        int columnIndex4 = query.getColumnIndex("font_ttc_index");
                        int columnIndex5 = query.getColumnIndex("font_weight");
                        int columnIndex6 = query.getColumnIndex("font_italic");
                        while (query.moveToNext()) {
                            int i11 = columnIndex != -1 ? query.getInt(columnIndex) : 0;
                            int i12 = columnIndex4 != -1 ? query.getInt(columnIndex4) : 0;
                            if (columnIndex3 == -1) {
                                withAppendedId = ContentUris.withAppendedId(build, query.getLong(columnIndex2));
                            } else {
                                withAppendedId = ContentUris.withAppendedId(build2, query.getLong(columnIndex3));
                            }
                            arrayList.add(f.b.a(withAppendedId, i12, columnIndex5 != -1 ? query.getInt(columnIndex5) : HttpStatus.SC_BAD_REQUEST, columnIndex6 != -1 && query.getInt(columnIndex6) == i10, i11));
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return (f.b[]) arrayList.toArray(new f.b[0]);
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
