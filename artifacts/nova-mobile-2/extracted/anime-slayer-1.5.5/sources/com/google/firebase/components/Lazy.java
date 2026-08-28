package com.google.firebase.components;

import com.google.firebase.inject.Provider;

/* loaded from: classes.dex */
public class Lazy<T> implements Provider<T> {
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider<T> provider;

    public Lazy(Provider<T> provider) {
        this.provider = provider;
    }

    @Override // com.google.firebase.inject.Provider
    public T get() {
        T t10 = (T) this.instance;
        Object obj = UNINITIALIZED;
        if (t10 == obj) {
            synchronized (this) {
                t10 = (T) this.instance;
                if (t10 == obj) {
                    t10 = this.provider.get();
                    this.instance = t10;
                    this.provider = null;
                }
            }
        }
        return t10;
    }
}
