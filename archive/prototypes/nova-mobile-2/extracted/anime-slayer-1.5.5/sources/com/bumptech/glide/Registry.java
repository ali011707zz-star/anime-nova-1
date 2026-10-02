package com.bumptech.glide;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import r7.s;
import r7.u;
import v7.n;
import v7.o;
import v7.p;

/* loaded from: classes.dex */
public class Registry {

    /* renamed from: a, reason: collision with root package name */
    public final p f4504a;

    /* renamed from: b, reason: collision with root package name */
    public final g8.a f4505b;

    /* renamed from: c, reason: collision with root package name */
    public final g8.e f4506c;

    /* renamed from: d, reason: collision with root package name */
    public final g8.f f4507d;

    /* renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.load.data.f f4508e;

    /* renamed from: f, reason: collision with root package name */
    public final d8.f f4509f;

    /* renamed from: g, reason: collision with root package name */
    public final g8.b f4510g;

    /* renamed from: h, reason: collision with root package name */
    public final g8.d f4511h = new g8.d();

    /* renamed from: i, reason: collision with root package name */
    public final g8.c f4512i = new g8.c();

    /* renamed from: j, reason: collision with root package name */
    public final p0.f<List<Throwable>> f4513j;

    /* loaded from: classes.dex */
    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(String str) {
            super(str);
        }
    }

    /* loaded from: classes.dex */
    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    /* loaded from: classes.dex */
    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException(Object obj) {
            super("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }

        public <M> NoModelLoaderAvailableException(M m10, List<n<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m10);
        }

        public NoModelLoaderAvailableException(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    /* loaded from: classes.dex */
    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* loaded from: classes.dex */
    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public Registry() {
        p0.f<List<Throwable>> e10 = m8.a.e();
        this.f4513j = e10;
        this.f4504a = new p(e10);
        this.f4505b = new g8.a();
        this.f4506c = new g8.e();
        this.f4507d = new g8.f();
        this.f4508e = new com.bumptech.glide.load.data.f();
        this.f4509f = new d8.f();
        this.f4510g = new g8.b();
        r(Arrays.asList("Gif", "Bitmap", "BitmapDrawable"));
    }

    public <Data, TResource> Registry a(Class<Data> cls, Class<TResource> cls2, p7.i<Data, TResource> iVar) {
        e("legacy_append", cls, cls2, iVar);
        return this;
    }

    public <Model, Data> Registry b(Class<Model> cls, Class<Data> cls2, o<Model, Data> oVar) {
        this.f4504a.a(cls, cls2, oVar);
        return this;
    }

    public <Data> Registry c(Class<Data> cls, p7.d<Data> dVar) {
        this.f4505b.a(cls, dVar);
        return this;
    }

    public <TResource> Registry d(Class<TResource> cls, p7.j<TResource> jVar) {
        this.f4507d.a(cls, jVar);
        return this;
    }

    public <Data, TResource> Registry e(String str, Class<Data> cls, Class<TResource> cls2, p7.i<Data, TResource> iVar) {
        this.f4506c.a(str, iVar, cls, cls2);
        return this;
    }

    public final <Data, TResource, Transcode> List<r7.i<Data, TResource, Transcode>> f(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f4506c.d(cls, cls2)) {
            for (Class cls5 : this.f4509f.b(cls4, cls3)) {
                arrayList.add(new r7.i(cls, cls4, cls5, this.f4506c.b(cls, cls4), this.f4509f.a(cls4, cls5), this.f4513j));
            }
        }
        return arrayList;
    }

    public List<ImageHeaderParser> g() {
        List<ImageHeaderParser> b10 = this.f4510g.b();
        if (b10.isEmpty()) {
            throw new NoImageHeaderParserException();
        }
        return b10;
    }

    public <Data, TResource, Transcode> s<Data, TResource, Transcode> h(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        s<Data, TResource, Transcode> a10 = this.f4512i.a(cls, cls2, cls3);
        if (this.f4512i.c(a10)) {
            return null;
        }
        if (a10 == null) {
            List<r7.i<Data, TResource, Transcode>> f10 = f(cls, cls2, cls3);
            a10 = f10.isEmpty() ? null : new s<>(cls, cls2, cls3, f10, this.f4513j);
            this.f4512i.d(cls, cls2, cls3, a10);
        }
        return a10;
    }

    public <Model> List<n<Model, ?>> i(Model model) {
        return this.f4504a.d(model);
    }

    public <Model, TResource, Transcode> List<Class<?>> j(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> a10 = this.f4511h.a(cls, cls2, cls3);
        if (a10 == null) {
            a10 = new ArrayList<>();
            Iterator<Class<?>> it2 = this.f4504a.c(cls).iterator();
            while (it2.hasNext()) {
                for (Class<?> cls4 : this.f4506c.d(it2.next(), cls2)) {
                    if (!this.f4509f.b(cls4, cls3).isEmpty() && !a10.contains(cls4)) {
                        a10.add(cls4);
                    }
                }
            }
            this.f4511h.b(cls, cls2, cls3, Collections.unmodifiableList(a10));
        }
        return a10;
    }

    public <X> p7.j<X> k(u<X> uVar) throws NoResultEncoderAvailableException {
        p7.j<X> b10 = this.f4507d.b(uVar.c());
        if (b10 != null) {
            return b10;
        }
        throw new NoResultEncoderAvailableException(uVar.c());
    }

    public <X> com.bumptech.glide.load.data.e<X> l(X x10) {
        return this.f4508e.a(x10);
    }

    public <X> p7.d<X> m(X x10) throws NoSourceEncoderAvailableException {
        p7.d<X> b10 = this.f4505b.b(x10.getClass());
        if (b10 != null) {
            return b10;
        }
        throw new NoSourceEncoderAvailableException(x10.getClass());
    }

    public boolean n(u<?> uVar) {
        return this.f4507d.b(uVar.c()) != null;
    }

    public Registry o(ImageHeaderParser imageHeaderParser) {
        this.f4510g.a(imageHeaderParser);
        return this;
    }

    public Registry p(e.a<?> aVar) {
        this.f4508e.b(aVar);
        return this;
    }

    public <TResource, Transcode> Registry q(Class<TResource> cls, Class<Transcode> cls2, d8.e<TResource, Transcode> eVar) {
        this.f4509f.c(cls, cls2, eVar);
        return this;
    }

    public final Registry r(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        arrayList.add(0, "legacy_prepend_all");
        arrayList.add("legacy_append");
        this.f4506c.e(arrayList);
        return this;
    }
}
