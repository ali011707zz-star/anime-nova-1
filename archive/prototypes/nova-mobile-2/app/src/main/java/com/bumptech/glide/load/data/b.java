package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import com.bumptech.glide.load.data.d;
import java.io.IOException;

/* compiled from: AssetPathFetcher.java */
/* loaded from: classes.dex */
public abstract class b<T> implements d<T> {

    /* renamed from: f, reason: collision with root package name */
    public final String f4603f;

    /* renamed from: g, reason: collision with root package name */
    public final AssetManager f4604g;

    /* renamed from: h, reason: collision with root package name */
    public T f4605h;

    public b(AssetManager assetManager, String str) {
        this.f4604g = assetManager;
        this.f4603f = str;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        T t10 = this.f4605h;
        if (t10 == null) {
            return;
        }
        try {
            c(t10);
        } catch (IOException unused) {
        }
    }

    public abstract void c(T t10) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
    }

    public abstract T d(AssetManager assetManager, String str) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public p7.a e() {
        return p7.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public void f(com.bumptech.glide.g gVar, d.a<? super T> aVar) {
        try {
            T d10 = d(this.f4604g, this.f4603f);
            this.f4605h = d10;
            aVar.d(d10);
        } catch (IOException e10) {
            aVar.c(e10);
        }
    }
}
