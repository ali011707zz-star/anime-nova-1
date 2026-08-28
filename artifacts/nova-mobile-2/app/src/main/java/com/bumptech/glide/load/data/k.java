package com.bumptech.glide.load.data;

import com.bumptech.glide.load.data.e;
import java.io.IOException;
import java.io.InputStream;
import y7.w;

/* compiled from: InputStreamRewinder.java */
/* loaded from: classes.dex */
public final class k implements e<InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final w f4625a;

    /* compiled from: InputStreamRewinder.java */
    /* loaded from: classes.dex */
    public static final class a implements e.a<InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final s7.b f4626a;

        public a(s7.b bVar) {
            this.f4626a = bVar;
        }

        @Override // com.bumptech.glide.load.data.e.a
        public Class<InputStream> a() {
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.data.e.a
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public e<InputStream> b(InputStream inputStream) {
            return new k(inputStream, this.f4626a);
        }
    }

    public k(InputStream inputStream, s7.b bVar) {
        w wVar = new w(inputStream, bVar);
        this.f4625a = wVar;
        wVar.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.e
    public void b() {
        this.f4625a.release();
    }

    public void c() {
        this.f4625a.d();
    }

    @Override // com.bumptech.glide.load.data.e
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public InputStream a() throws IOException {
        this.f4625a.reset();
        return this.f4625a;
    }
}
