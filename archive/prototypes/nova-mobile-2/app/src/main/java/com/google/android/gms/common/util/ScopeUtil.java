package com.google.android.gms.common.util;

import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public final class ScopeUtil {
    private ScopeUtil() {
    }

    @RecentlyNonNull
    @KeepForSdk
    public static Set<Scope> fromScopeString(@RecentlyNonNull Collection<String> collection) {
        Preconditions.checkNotNull(collection, "scopeStrings can't be null.");
        return fromScopeString((String[]) collection.toArray(new String[collection.size()]));
    }

    @RecentlyNonNull
    @KeepForSdk
    public static String[] toScopeString(@RecentlyNonNull Set<Scope> set) {
        Preconditions.checkNotNull(set, "scopes can't be null.");
        return toScopeString((Scope[]) set.toArray(new Scope[set.size()]));
    }

    @RecentlyNonNull
    @KeepForSdk
    public static Set<Scope> fromScopeString(@RecentlyNonNull String... strArr) {
        Preconditions.checkNotNull(strArr, "scopeStrings can't be null.");
        HashSet hashSet = new HashSet(strArr.length);
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                hashSet.add(new Scope(str));
            }
        }
        return hashSet;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static String[] toScopeString(@RecentlyNonNull Scope[] scopeArr) {
        Preconditions.checkNotNull(scopeArr, "scopes can't be null.");
        String[] strArr = new String[scopeArr.length];
        for (int i10 = 0; i10 < scopeArr.length; i10++) {
            strArr[i10] = scopeArr[i10].getScopeUri();
        }
        return strArr;
    }
}
