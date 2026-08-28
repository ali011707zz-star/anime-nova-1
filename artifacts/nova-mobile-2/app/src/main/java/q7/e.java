package q7;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* compiled from: ThumbnailStreamOpener.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: f, reason: collision with root package name */
    public static final a f12538f = new a();

    /* renamed from: a, reason: collision with root package name */
    public final a f12539a;

    /* renamed from: b, reason: collision with root package name */
    public final d f12540b;

    /* renamed from: c, reason: collision with root package name */
    public final s7.b f12541c;

    /* renamed from: d, reason: collision with root package name */
    public final ContentResolver f12542d;

    /* renamed from: e, reason: collision with root package name */
    public final List<ImageHeaderParser> f12543e;

    public e(List<ImageHeaderParser> list, d dVar, s7.b bVar, ContentResolver contentResolver) {
        this(list, f12538f, dVar, bVar, contentResolver);
    }

    public int a(Uri uri) {
        InputStream inputStream = null;
        try {
            try {
                inputStream = this.f12542d.openInputStream(uri);
                int b10 = com.bumptech.glide.load.a.b(this.f12543e, inputStream, this.f12541c);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return b10;
            } catch (IOException | NullPointerException unused2) {
                if (Log.isLoggable("ThumbStreamOpener", 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Failed to open uri: ");
                    sb2.append(uri);
                }
                if (inputStream == null) {
                    return -1;
                }
                try {
                    inputStream.close();
                    return -1;
                } catch (IOException unused3) {
                    return -1;
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String b(Uri uri) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            cursor = this.f12540b.a(uri);
            if (cursor != null) {
                try {
                    try {
                        if (cursor.moveToFirst()) {
                            String string = cursor.getString(0);
                            cursor.close();
                            return string;
                        }
                    } catch (SecurityException unused) {
                        if (Log.isLoggable("ThumbStreamOpener", 3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Failed to query for thumbnail for Uri: ");
                            sb2.append(uri);
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (SecurityException unused2) {
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    public final boolean c(File file) {
        return this.f12539a.a(file) && 0 < this.f12539a.c(file);
    }

    public InputStream d(Uri uri) throws FileNotFoundException {
        String b10 = b(uri);
        if (TextUtils.isEmpty(b10)) {
            return null;
        }
        File b11 = this.f12539a.b(b10);
        if (!c(b11)) {
            return null;
        }
        Uri fromFile = Uri.fromFile(b11);
        try {
            return this.f12542d.openInputStream(fromFile);
        } catch (NullPointerException e10) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e10));
        }
    }

    public e(List<ImageHeaderParser> list, a aVar, d dVar, s7.b bVar, ContentResolver contentResolver) {
        this.f12539a = aVar;
        this.f12540b = dVar;
        this.f12541c = bVar;
        this.f12542d = contentResolver;
        this.f12543e = list;
    }
}
