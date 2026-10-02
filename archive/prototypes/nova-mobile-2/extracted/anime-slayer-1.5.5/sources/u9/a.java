package u9;

import android.util.SparseArray;
import h9.d;
import java.util.HashMap;

/* compiled from: PriorityMapping.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static SparseArray<d> f14496a = new SparseArray<>();

    /* renamed from: b, reason: collision with root package name */
    public static HashMap<d, Integer> f14497b;

    static {
        HashMap<d, Integer> hashMap = new HashMap<>();
        f14497b = hashMap;
        hashMap.put(d.DEFAULT, 0);
        f14497b.put(d.VERY_LOW, 1);
        f14497b.put(d.HIGHEST, 2);
        for (d dVar : f14497b.keySet()) {
            f14496a.append(f14497b.get(dVar).intValue(), dVar);
        }
    }

    public static int a(d dVar) {
        Integer num = f14497b.get(dVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + dVar);
    }

    public static d b(int i10) {
        d dVar = f14496a.get(i10);
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i10);
    }
}
