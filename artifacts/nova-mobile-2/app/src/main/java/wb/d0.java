package wb;

import java.util.Collections;
import java.util.Set;

/* compiled from: SetsJVM.kt */
/* loaded from: classes2.dex */
public class d0 {
    public static final <T> Set<T> a(T t10) {
        Set<T> singleton = Collections.singleton(t10);
        jc.l.e(singleton, "singleton(element)");
        return singleton;
    }
}
