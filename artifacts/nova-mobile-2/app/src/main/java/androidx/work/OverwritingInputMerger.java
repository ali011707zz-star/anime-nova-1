package androidx.work;

import androidx.work.a;
import d2.j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class OverwritingInputMerger extends j {
    @Override // d2.j
    public a b(List<a> list) {
        a.C0058a c0058a = new a.C0058a();
        HashMap hashMap = new HashMap();
        Iterator<a> it2 = list.iterator();
        while (it2.hasNext()) {
            hashMap.putAll(it2.next().i());
        }
        c0058a.d(hashMap);
        return c0058a.a();
    }
}
