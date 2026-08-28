package io.wax911.support.util;

import ic.a;
import jc.l;

/* compiled from: InstanceUtil.kt */
/* loaded from: classes.dex */
public class InstanceUtilNoArg<T> {
    private a<? extends T> creator;

    public InstanceUtilNoArg(a<? extends T> aVar) {
        l.f(aVar, "creator");
        this.creator = aVar;
    }

    public final T newInstance() {
        return this.creator.invoke();
    }
}
