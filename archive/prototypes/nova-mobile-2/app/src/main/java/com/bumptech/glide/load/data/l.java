package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import com.bumptech.glide.load.data.d;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: LocalUriFetcher.java */
/* loaded from: classes.dex */
public abstract class l<T> implements d<T> {

    /* renamed from: f, reason: collision with root package name */
    public final Uri f4627f;

    /* renamed from: g, reason: collision with root package name */
    public final ContentResolver f4628g;

    /* renamed from: h, reason: collision with root package name */
    public T f4629h;

    public l(ContentResolver contentResolver, Uri uri) {
        this.f4628g = contentResolver;
        this.f4627f = uri;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        T t10 = this.f4629h;
        if (t10 != null) {
            try {
                c(t10);
            } catch (IOException unused) {
            }
        }
    }

    public abstract void c(T t10) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
    }

    public abstract T d(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override // com.bumptech.glide.load.data.d
    public p7.a e() {
        return p7.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void f(com.bumptech.glide.g gVar, d.a<? super T> aVar) {
        try {
            T d10 = d(this.f4627f, this.f4628g);
            this.f4629h = d10;
            aVar.d(d10);
        } catch (FileNotFoundException e10) {
            aVar.c(e10);
        }
    }
}
