package wb;

import com.google.android.gms.common.api.Api;
import java.util.Collections;
import java.util.Map;

/* compiled from: MapsJVM.kt */
/* loaded from: classes2.dex */
public class b0 extends a0 {
    public static final int a(int i10) {
        return i10 < 0 ? i10 : i10 < 3 ? i10 + 1 : i10 < 1073741824 ? (int) ((i10 / 0.75f) + 1.0f) : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public static final <K, V> Map<K, V> b(vb.i<? extends K, ? extends V> iVar) {
        jc.l.f(iVar, "pair");
        Map<K, V> singletonMap = Collections.singletonMap(iVar.c(), iVar.d());
        jc.l.e(singletonMap, "singletonMap(pair.first, pair.second)");
        return singletonMap;
    }

    public static final <K, V> Map<K, V> c(Map<? extends K, ? extends V> map) {
        jc.l.f(map, "<this>");
        Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        Map<K, V> singletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        jc.l.e(singletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return singletonMap;
    }
}
