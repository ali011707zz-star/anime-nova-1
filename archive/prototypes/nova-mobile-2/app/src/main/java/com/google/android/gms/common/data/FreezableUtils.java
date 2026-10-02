package com.google.android.gms.common.data;

import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.Iterator;
import sb.b;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class FreezableUtils {
    @RecentlyNonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(@RecentlyNonNull ArrayList<E> arrayList) {
        b.a aVar = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            aVar.add(arrayList.get(i10).freeze());
        }
        return aVar;
    }

    @RecentlyNonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(@RecentlyNonNull Iterable<E> iterable) {
        b.a aVar = (ArrayList<T>) new ArrayList();
        Iterator<E> it2 = iterable.iterator();
        while (it2.hasNext()) {
            aVar.add(it2.next().freeze());
        }
        return aVar;
    }

    @RecentlyNonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(@RecentlyNonNull E[] eArr) {
        b.a aVar = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e10 : eArr) {
            aVar.add(e10.freeze());
        }
        return aVar;
    }
}
