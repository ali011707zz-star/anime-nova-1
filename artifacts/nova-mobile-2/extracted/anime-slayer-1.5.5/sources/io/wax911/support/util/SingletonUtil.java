package io.wax911.support.util;

import ic.l;

/* compiled from: SingletonUtil.kt */
/* loaded from: classes.dex */
public class SingletonUtil<T, A> {
    private l<? super A, ? extends T> creator;
    private volatile T instance;

    public SingletonUtil(l<? super A, ? extends T> lVar) {
        jc.l.f(lVar, "creator");
        this.creator = lVar;
    }

    public final T getInstance(A a10) {
        T t10;
        T t11 = this.instance;
        if (t11 != null) {
            return t11;
        }
        synchronized (this) {
            t10 = this.instance;
            if (t10 == null) {
                l<? super A, ? extends T> lVar = this.creator;
                jc.l.c(lVar);
                t10 = lVar.invoke(a10);
                this.instance = t10;
                this.creator = null;
            }
        }
        return t10;
    }
}
