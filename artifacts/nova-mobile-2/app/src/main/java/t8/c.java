package t8;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import java.io.File;
import java.util.List;
import java.util.ListIterator;
import jc.l;
import kotlin.TypeCastException;
import qc.i;
import qc.u;
import wb.t;

/* compiled from: FileUriUtils.kt */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final c f14093a = new c();

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0045, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
    
        if (r9 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0034, code lost:
    
        if (r9 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
    
        r9.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String a(Context context, Uri uri, String str, String[] strArr) {
        Cursor cursor;
        String[] strArr2 = {"_data"};
        Cursor cursor2 = null;
        try {
            ContentResolver contentResolver = context.getContentResolver();
            if (uri == null) {
                l.p();
            }
            cursor = contentResolver.query(uri, strArr2, str, strArr, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndexOrThrow("_data"));
                        cursor.close();
                        return string;
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    cursor2 = cursor;
                    th = th;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final String b(Context context, Uri uri) {
        Cursor cursor = null;
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndexOrThrow("_display_name"));
                        query.close();
                        return string;
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
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        if ((r1.length() == 0) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String c(Uri uri) {
        l.g(uri, "uriImage");
        String str = null;
        try {
            String path = uri.getPath();
            if (path != null && u.S(path, ".", 0, false, 6, null) != -1) {
                String substring = path.substring(u.S(path, ".", 0, false, 6, null) + 1);
                l.b(substring, "(this as java.lang.String).substring(startIndex)");
                str = substring;
            }
        } catch (Exception unused) {
        }
        if (str != null) {
        }
        str = "jpg";
        return '.' + str;
    }

    public final String d(File file) {
        l.g(file, "file");
        Uri fromFile = Uri.fromFile(file);
        l.b(fromFile, "Uri.fromFile(file)");
        return c(fromFile);
    }

    public final String e(Context context, Uri uri) {
        List i10;
        List i11;
        Uri uri2 = null;
        if ((Build.VERSION.SDK_INT >= 19) && DocumentsContract.isDocumentUri(context, uri)) {
            if (i(uri)) {
                String documentId = DocumentsContract.getDocumentId(uri);
                l.b(documentId, "docId");
                List<String> d10 = new i(":").d(documentId, 0);
                if (!d10.isEmpty()) {
                    ListIterator<String> listIterator = d10.listIterator(d10.size());
                    while (listIterator.hasPrevious()) {
                        if (!(listIterator.previous().length() == 0)) {
                            i11 = t.M(d10, listIterator.nextIndex() + 1);
                            break;
                        }
                    }
                }
                i11 = wb.l.i();
                Object[] array = i11.toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    if (qc.t.r("primary", strArr[0], true)) {
                        if (strArr.length > 1) {
                            return Environment.getExternalStorageDirectory().toString() + "/" + strArr[1];
                        }
                        return Environment.getExternalStorageDirectory().toString() + "/";
                    }
                    String str = "storage/" + qc.t.v(documentId, ":", "/", false, 4, null);
                    if (new File(str).exists()) {
                        return str;
                    }
                    return "/storage/sdcard/" + strArr[1];
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            if (h(uri)) {
                String b10 = b(context, uri);
                if (b10 != null) {
                    String str2 = Environment.getExternalStorageDirectory().toString() + "/Download/" + b10;
                    if (new File(str2).exists()) {
                        return str2;
                    }
                }
                String documentId2 = DocumentsContract.getDocumentId(uri);
                l.b(documentId2, "id");
                if (u.C(documentId2, ":", false, 2, null)) {
                    documentId2 = (String) u.d0(documentId2, new String[]{":"}, false, 0, 6, null).get(1);
                }
                Uri parse = Uri.parse("content://downloads/public_downloads");
                Long valueOf = Long.valueOf(documentId2);
                l.b(valueOf, "java.lang.Long.valueOf(id)");
                return a(context, ContentUris.withAppendedId(parse, valueOf.longValue()), null, null);
            }
            if (k(uri)) {
                String documentId3 = DocumentsContract.getDocumentId(uri);
                l.b(documentId3, "docId");
                List<String> d11 = new i(":").d(documentId3, 0);
                if (!d11.isEmpty()) {
                    ListIterator<String> listIterator2 = d11.listIterator(d11.size());
                    while (listIterator2.hasPrevious()) {
                        if (!(listIterator2.previous().length() == 0)) {
                            i10 = t.M(d11, listIterator2.nextIndex() + 1);
                            break;
                        }
                    }
                }
                i10 = wb.l.i();
                Object[] array2 = i10.toArray(new String[0]);
                if (array2 != null) {
                    String[] strArr2 = (String[]) array2;
                    String str3 = strArr2[0];
                    if (l.a("image", str3)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if (l.a("video", str3)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if (l.a("audio", str3)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return a(context, uri2, "_id=?", new String[]{strArr2[1]});
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
        } else {
            String scheme = uri.getScheme();
            if (scheme == null) {
                l.p();
            }
            if (qc.t.r("content", scheme, true)) {
                return j(uri) ? uri.getLastPathSegment() : a(context, uri, null, null);
            }
            String scheme2 = uri.getScheme();
            if (scheme2 == null) {
                l.p();
            }
            if (qc.t.r("file", scheme2, true)) {
                return uri.getPath();
            }
        }
        return null;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:33:0x003b
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public final java.lang.String f(android.content.Context r5, android.net.Uri r6) {
        /*
            r4 = this;
            r0 = 0
            r1 = 0
            java.lang.String r2 = r4.c(r6)     // Catch: java.lang.Throwable -> L46 java.io.IOException -> L55
            android.content.ContentResolver r3 = r5.getContentResolver()     // Catch: java.lang.Throwable -> L46 java.io.IOException -> L55
            java.io.InputStream r6 = r3.openInputStream(r6)     // Catch: java.lang.Throwable -> L46 java.io.IOException -> L55
            t8.d r3 = t8.d.f14094a     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L43
            java.io.File r5 = r5.getCacheDir()     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L43
            java.io.File r5 = r3.c(r5, r2)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L43
            if (r5 != 0) goto L20
            if (r6 == 0) goto L1f
            r6.close()     // Catch: java.io.IOException -> L1f
        L1f:
            return r1
        L20:
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L3d java.lang.Throwable -> L3f
            r2.<init>(r5)     // Catch: java.io.IOException -> L3d java.lang.Throwable -> L3f
            if (r6 == 0) goto L30
            r3 = 4096(0x1000, float:5.74E-42)
            gc.a.a(r6, r2, r3)     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L58
            r3 = 1
            goto L31
        L2e:
            r5 = move-exception
            goto L41
        L30:
            r3 = 0
        L31:
            if (r6 == 0) goto L36
            r6.close()     // Catch: java.io.IOException -> L36
        L36:
            r2.close()     // Catch: java.io.IOException -> L3b
            r0 = r3
            goto L64
        L3b:
            goto L64
        L3d:
            r2 = r1
            goto L58
        L3f:
            r5 = move-exception
            r2 = r1
        L41:
            r1 = r6
            goto L48
        L43:
            r5 = r1
            r2 = r5
            goto L58
        L46:
            r5 = move-exception
            r2 = r1
        L48:
            if (r1 == 0) goto L4f
            r1.close()     // Catch: java.io.IOException -> L4e
            goto L4f
        L4e:
        L4f:
            if (r2 == 0) goto L54
            r2.close()     // Catch: java.io.IOException -> L54
        L54:
            throw r5
        L55:
            r5 = r1
            r6 = r5
            r2 = r6
        L58:
            if (r6 == 0) goto L5f
            r6.close()     // Catch: java.io.IOException -> L5e
            goto L5f
        L5e:
        L5f:
            if (r2 == 0) goto L64
            r2.close()     // Catch: java.io.IOException -> L3b
        L64:
            if (r0 == 0) goto L6f
            if (r5 != 0) goto L6b
            jc.l.p()
        L6b:
            java.lang.String r1 = r5.getPath()
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: t8.c.f(android.content.Context, android.net.Uri):java.lang.String");
    }

    public final String g(Context context, Uri uri) {
        l.g(context, "context");
        l.g(uri, "uri");
        String e10 = e(context, uri);
        return e10 == null ? f(context, uri) : e10;
    }

    public final boolean h(Uri uri) {
        return l.a("com.android.providers.downloads.documents", uri.getAuthority());
    }

    public final boolean i(Uri uri) {
        return l.a("com.android.externalstorage.documents", uri.getAuthority());
    }

    public final boolean j(Uri uri) {
        return l.a("com.google.android.apps.photos.content", uri.getAuthority());
    }

    public final boolean k(Uri uri) {
        return l.a("com.android.providers.media.documents", uri.getAuthority());
    }
}
