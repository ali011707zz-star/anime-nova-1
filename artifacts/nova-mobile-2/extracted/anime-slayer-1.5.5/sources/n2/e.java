package n2;

import android.content.ComponentName;
import android.content.Context;

/* compiled from: PackageManagerHelper.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11204a = d2.l.f("PackageManagerHelper");

    public static void a(Context context, Class<?> cls, boolean z10) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z10 ? 1 : 2, 1);
            d2.l c10 = d2.l.c();
            String str = f11204a;
            Object[] objArr = new Object[2];
            objArr[0] = cls.getName();
            objArr[1] = z10 ? "enabled" : "disabled";
            c10.a(str, String.format("%s %s", objArr), new Throwable[0]);
        } catch (Exception e10) {
            d2.l c11 = d2.l.c();
            String str2 = f11204a;
            Object[] objArr2 = new Object[2];
            objArr2[0] = cls.getName();
            objArr2[1] = z10 ? "enabled" : "disabled";
            c11.a(str2, String.format("%s could not be %s", objArr2), e10);
        }
    }
}
