package c;

import android.content.Context;
import android.content.Intent;
import c.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ActivityResultContracts.java */
/* loaded from: classes.dex */
public final class b extends a<String[], Map<String, Boolean>> {
    public static Intent e(String[] strArr) {
        return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
    }

    @Override // c.a
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, String[] strArr) {
        return e(strArr);
    }

    @Override // c.a
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public a.C0072a<Map<String, Boolean>> b(Context context, String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            s.a aVar = new s.a();
            boolean z10 = true;
            for (String str : strArr) {
                boolean z11 = f0.a.a(context, str) == 0;
                aVar.put(str, Boolean.valueOf(z11));
                if (!z11) {
                    z10 = false;
                }
            }
            if (z10) {
                return new a.C0072a<>(aVar);
            }
            return null;
        }
        return new a.C0072a<>(Collections.emptyMap());
    }

    @Override // c.a
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public Map<String, Boolean> c(int i10, Intent intent) {
        if (i10 != -1) {
            return Collections.emptyMap();
        }
        if (intent == null) {
            return Collections.emptyMap();
        }
        String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        if (intArrayExtra != null && stringArrayExtra != null) {
            HashMap hashMap = new HashMap();
            int length = stringArrayExtra.length;
            for (int i11 = 0; i11 < length; i11++) {
                hashMap.put(stringArrayExtra[i11], Boolean.valueOf(intArrayExtra[i11] == 0));
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }
}
