package io.wax911.support.util;

import ic.l;

/* compiled from: InstanceUtil.kt */
/* loaded from: classes.dex */
public class InstanceUtil<T, A> {
    private l<? super A, ? extends T> creator;

    public InstanceUtil(l<? super A, ? extends T> lVar) {
        jc.l.f(lVar, "creator");
        this.creator = lVar;
    }

    public final T newInstance(A a10) {
        return this.creator.invoke(a10);
    }
}
