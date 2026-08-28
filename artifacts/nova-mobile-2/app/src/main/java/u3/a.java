package u3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Operators.java */
/* loaded from: classes.dex */
public final class a {
    public static <T> List<T> a(Iterator<? extends T> it2) {
        ArrayList arrayList = new ArrayList();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        return arrayList;
    }
}
