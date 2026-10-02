package db;

import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.TypedValue;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/* compiled from: BubbleUtils.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static Properties f5795a = new Properties();

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f5796b;

    public static int a(int i10) {
        return (int) TypedValue.applyDimension(1, i10, Resources.getSystem().getDisplayMetrics());
    }

    public static boolean b() {
        FileInputStream fileInputStream;
        Boolean bool = f5796b;
        if (bool != null) {
            return bool.booleanValue();
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        if (Build.VERSION.SDK_INT < 26) {
            try {
                fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
            } catch (IOException e11) {
                e = e11;
            }
            try {
                f5795a.load(fileInputStream);
                fileInputStream.close();
            } catch (IOException e12) {
                e = e12;
                fileInputStream2 = fileInputStream;
                e.printStackTrace();
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                f5796b = Boolean.valueOf(f5795a.containsKey("ro.miui.ui.version.name"));
                return f5796b.booleanValue();
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e13) {
                        e13.printStackTrace();
                    }
                }
                throw th;
            }
            f5796b = Boolean.valueOf(f5795a.containsKey("ro.miui.ui.version.name"));
            return f5796b.booleanValue();
        }
        try {
            boolean z10 = true;
            if (TextUtils.isEmpty((String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, "ro.miui.ui.version.name"))) {
                z10 = false;
            }
            f5796b = Boolean.valueOf(z10);
        } catch (Exception unused) {
            f5796b = Boolean.FALSE;
        }
        return f5796b.booleanValue();
    }

    public static int c(int i10) {
        return (int) TypedValue.applyDimension(2, i10, Resources.getSystem().getDisplayMetrics());
    }
}
