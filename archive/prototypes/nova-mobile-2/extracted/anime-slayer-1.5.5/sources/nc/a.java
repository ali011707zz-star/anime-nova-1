package nc;

import java.lang.Comparable;

/* compiled from: Ranges.kt */
/* loaded from: classes2.dex */
public interface a<T extends Comparable<? super T>> extends b<T> {
    boolean a(T t10, T t11);

    @Override // nc.b
    boolean isEmpty();
}
