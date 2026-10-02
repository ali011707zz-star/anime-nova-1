package wb;

import java.util.Collection;

/* compiled from: Iterables.kt */
/* loaded from: classes2.dex */
public class m extends l {
    public static final <T> int q(Iterable<? extends T> iterable, int i10) {
        jc.l.f(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i10;
    }
}
