package wb;

import java.util.Set;

/* compiled from: Sets.kt */
/* loaded from: classes2.dex */
public class e0 extends d0 {
    public static final <T> Set<T> b() {
        return x.f15466f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Set<T> c(Set<? extends T> set) {
        jc.l.f(set, "<this>");
        int size = set.size();
        if (size != 0) {
            return size != 1 ? set : d0.a(set.iterator().next());
        }
        return b();
    }
}
