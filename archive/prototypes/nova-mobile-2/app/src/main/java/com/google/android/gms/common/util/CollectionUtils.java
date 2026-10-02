package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import s.a;
import s.b;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public final class CollectionUtils {
    private CollectionUtils() {
    }

    @KeepForSdk
    public static boolean isEmpty(Collection<?> collection) {
        if (collection == null) {
            return true;
        }
        return collection.isEmpty();
    }

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf() {
        return Collections.emptyList();
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <K, V> Map<K, V> mapOf(@RecentlyNonNull K k10, @RecentlyNonNull V v10, @RecentlyNonNull K k11, @RecentlyNonNull V v11, @RecentlyNonNull K k12, @RecentlyNonNull V v12) {
        Map zzb = zzb(3, false);
        zzb.put(k10, v10);
        zzb.put(k11, v11);
        zzb.put(k12, v12);
        return Collections.unmodifiableMap(zzb);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <K, V> Map<K, V> mapOfKeyValueArrays(@RecentlyNonNull K[] kArr, @RecentlyNonNull V[] vArr) {
        int length = kArr.length;
        int length2 = vArr.length;
        if (length != length2) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Key and values array lengths not equal: ");
            sb2.append(length);
            sb2.append(" != ");
            sb2.append(length2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (length == 0) {
            return Collections.emptyMap();
        }
        if (length != 1) {
            Map zzb = zzb(length, false);
            for (int i10 = 0; i10 < kArr.length; i10++) {
                zzb.put(kArr[i10], vArr[i10]);
            }
            return Collections.unmodifiableMap(zzb);
        }
        return Collections.singletonMap(kArr[0], vArr[0]);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <T> Set<T> mutableSetOfWithSize(int i10) {
        if (i10 == 0) {
            return new b();
        }
        return zza(i10, true);
    }

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public static <T> Set<T> setOf(@RecentlyNonNull T t10, @RecentlyNonNull T t11, @RecentlyNonNull T t12) {
        Set zza = zza(3, false);
        zza.add(t10);
        zza.add(t11);
        zza.add(t12);
        return Collections.unmodifiableSet(zza);
    }

    private static <T> Set<T> zza(int i10, boolean z10) {
        float f10 = true != z10 ? 1.0f : 0.75f;
        if (i10 <= (true != z10 ? 256 : 128)) {
            return new b(i10);
        }
        return new HashSet(i10, f10);
    }

    private static <K, V> Map<K, V> zzb(int i10, boolean z10) {
        if (i10 <= 256) {
            return new a(i10);
        }
        return new HashMap(i10, 1.0f);
    }

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf(@RecentlyNonNull T t10) {
        return Collections.singletonList(t10);
    }

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf(@RecentlyNonNull T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return listOf();
        }
        if (length != 1) {
            return Collections.unmodifiableList(Arrays.asList(tArr));
        }
        return listOf(tArr[0]);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <K, V> Map<K, V> mapOf(@RecentlyNonNull K k10, @RecentlyNonNull V v10, @RecentlyNonNull K k11, @RecentlyNonNull V v11, @RecentlyNonNull K k12, @RecentlyNonNull V v12, @RecentlyNonNull K k13, @RecentlyNonNull V v13, @RecentlyNonNull K k14, @RecentlyNonNull V v14, @RecentlyNonNull K k15, @RecentlyNonNull V v15) {
        Map zzb = zzb(6, false);
        zzb.put(k10, v10);
        zzb.put(k11, v11);
        zzb.put(k12, v12);
        zzb.put(k13, v13);
        zzb.put(k14, v14);
        zzb.put(k15, v15);
        return Collections.unmodifiableMap(zzb);
    }

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public static <T> Set<T> setOf(@RecentlyNonNull T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.emptySet();
        }
        if (length == 1) {
            return Collections.singleton(tArr[0]);
        }
        if (length == 2) {
            T t10 = tArr[0];
            T t11 = tArr[1];
            Set zza = zza(2, false);
            zza.add(t10);
            zza.add(t11);
            return Collections.unmodifiableSet(zza);
        }
        if (length == 3) {
            return setOf(tArr[0], tArr[1], tArr[2]);
        }
        if (length != 4) {
            Set zza2 = zza(length, false);
            Collections.addAll(zza2, tArr);
            return Collections.unmodifiableSet(zza2);
        }
        T t12 = tArr[0];
        T t13 = tArr[1];
        T t14 = tArr[2];
        T t15 = tArr[3];
        Set zza3 = zza(4, false);
        zza3.add(t12);
        zza3.add(t13);
        zza3.add(t14);
        zza3.add(t15);
        return Collections.unmodifiableSet(zza3);
    }
}
