package t8;

import android.graphics.Bitmap;
import android.os.Environment;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import jc.l;
import qc.u;

/* compiled from: FileUtil.kt */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final d f14094a = new d();

    public static /* synthetic */ File d(d dVar, File file, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            file = null;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return dVar.c(file, str);
    }

    public final File a() {
        return new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM), "Camera");
    }

    public final Bitmap.CompressFormat b(String str) {
        l.g(str, "extension");
        return u.B(str, "png", true) ? Bitmap.CompressFormat.PNG : u.B(str, "webp", true) ? Bitmap.CompressFormat.WEBP : Bitmap.CompressFormat.JPEG;
    }

    public final File c(File file, String str) {
        if (str == null) {
            str = ".jpg";
        }
        try {
            String str2 = "IMG_" + e() + str;
            if (file == null) {
                file = a();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, str2);
            file2.createNewFile();
            return file2;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public final String e() {
        String format = new SimpleDateFormat("yyyyMMdd_HHmmssSSS", Locale.getDefault()).format(new Date());
        l.b(format, "SimpleDateFormat(timeFor…Default()).format(Date())");
        return format;
    }
}
