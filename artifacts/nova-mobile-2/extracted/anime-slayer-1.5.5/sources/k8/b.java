package k8;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import p7.e;

/* compiled from: ApplicationVersionSignature.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentMap<String, e> f10058a = new ConcurrentHashMap();

    public static PackageInfo a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot resolve info for");
            sb2.append(context.getPackageName());
            return null;
        }
    }

    public static String b(PackageInfo packageInfo) {
        if (packageInfo != null) {
            return String.valueOf(packageInfo.versionCode);
        }
        return UUID.randomUUID().toString();
    }

    public static e c(Context context) {
        String packageName = context.getPackageName();
        ConcurrentMap<String, e> concurrentMap = f10058a;
        e eVar = concurrentMap.get(packageName);
        if (eVar != null) {
            return eVar;
        }
        e d10 = d(context);
        e putIfAbsent = concurrentMap.putIfAbsent(packageName, d10);
        return putIfAbsent == null ? d10 : putIfAbsent;
    }

    public static e d(Context context) {
        return new d(b(a(context)));
    }
}
