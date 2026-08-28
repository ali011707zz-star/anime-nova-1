package t8;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import jc.l;

/* compiled from: PermissionUtil.kt */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final h f14098a = new h();

    public final boolean a(Context context, String str) {
        return f0.a.a(context, str) == 0;
    }

    public final boolean b(Context context, String[] strArr) {
        l.g(context, "context");
        l.g(strArr, "permissions");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (f14098a.a(context, str)) {
                arrayList.add(str);
            }
        }
        return arrayList.size() == strArr.length;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(Context context, String str) {
        boolean z10;
        l.g(context, "context");
        l.g(str, "permission");
        String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT).requestedPermissions;
        if (strArr != null) {
            if (!(strArr.length == 0)) {
                z10 = false;
                if (!z10) {
                    return false;
                }
                for (String str2 : strArr) {
                    if (l.a(str2, str)) {
                        return true;
                    }
                }
                return false;
            }
        }
        z10 = true;
        if (!z10) {
        }
    }
}
