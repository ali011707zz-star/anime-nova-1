package wb;

import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Maps.kt */
/* loaded from: classes2.dex */
public class c0 extends b0 {
    public static final <K, V> Map<K, V> d() {
        w wVar = w.f15465f;
        jc.l.d(wVar, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return wVar;
    }

    public static final <K, V> HashMap<K, V> e(vb.i<? extends K, ? extends V>... iVarArr) {
        jc.l.f(iVarArr, "pairs");
        HashMap<K, V> hashMap = new HashMap<>(b0.a(iVarArr.length));
        h(hashMap, iVarArr);
        return hashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> f(Map<K, ? extends V> map) {
        jc.l.f(map, "<this>");
        int size = map.size();
        if (size != 0) {
            return size != 1 ? map : b0.c(map);
        }
        return d();
    }

    public static final <K, V> void g(Map<? super K, ? super V> map, Iterable<? extends vb.i<? extends K, ? extends V>> iterable) {
        jc.l.f(map, "<this>");
        jc.l.f(iterable, "pairs");
        for (vb.i<? extends K, ? extends V> iVar : iterable) {
            map.put(iVar.a(), iVar.b());
        }
    }

    public static final <K, V> void h(Map<? super K, ? super V> map, vb.i<? extends K, ? extends V>[] iVarArr) {
        jc.l.f(map, "<this>");
        jc.l.f(iVarArr, "pairs");
        for (vb.i<? extends K, ? extends V> iVar : iVarArr) {
            map.put(iVar.a(), iVar.b());
        }
    }

    public static final <K, V> Map<K, V> i(Iterable<? extends vb.i<? extends K, ? extends V>> iterable) {
        jc.l.f(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return d();
            }
            if (size != 1) {
                return j(iterable, new LinkedHashMap(b0.a(collection.size())));
            }
            return b0.b(iterable instanceof List ? (vb.i<? extends K, ? extends V>) ((List) iterable).get(0) : iterable.iterator().next());
        }
        return f(j(iterable, new LinkedHashMap()));
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M j(Iterable<? extends vb.i<? extends K, ? extends V>> iterable, M m10) {
        jc.l.f(iterable, "<this>");
        jc.l.f(m10, "destination");
        g(m10, iterable);
        return m10;
    }
}
