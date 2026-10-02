package o1;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* compiled from: EntityInsertionAdapter.java */
/* loaded from: classes.dex */
public abstract class s<T> extends v0 {
    public s(p0 p0Var) {
        super(p0Var);
    }

    public abstract void g(r1.k kVar, T t10);

    public final void h(T t10) {
        r1.k a10 = a();
        try {
            g(a10, t10);
            a10.x0();
        } finally {
            f(a10);
        }
    }

    public final List<Long> i(Collection<? extends T> collection) {
        r1.k a10 = a();
        try {
            ArrayList arrayList = new ArrayList(collection.size());
            int i10 = 0;
            Iterator<? extends T> it2 = collection.iterator();
            while (it2.hasNext()) {
                g(a10, it2.next());
                arrayList.add(i10, Long.valueOf(a10.x0()));
                i10++;
            }
            return arrayList;
        } finally {
            f(a10);
        }
    }
}
