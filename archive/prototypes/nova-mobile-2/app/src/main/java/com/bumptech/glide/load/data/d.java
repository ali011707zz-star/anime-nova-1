package com.bumptech.glide.load.data;

/* compiled from: DataFetcher.java */
/* loaded from: classes.dex */
public interface d<T> {

    /* compiled from: DataFetcher.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        void c(Exception exc);

        void d(T t10);
    }

    Class<T> a();

    void b();

    void cancel();

    p7.a e();

    void f(com.bumptech.glide.g gVar, a<? super T> aVar);
}
