package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import com.bumptech.glide.c;
import java.util.List;
import java.util.Map;

/* compiled from: GlideContext.java */
/* loaded from: classes.dex */
public class e extends ContextWrapper {

    /* renamed from: k, reason: collision with root package name */
    public static final k<?, ?> f4548k = new b();

    /* renamed from: a, reason: collision with root package name */
    public final s7.b f4549a;

    /* renamed from: b, reason: collision with root package name */
    public final Registry f4550b;

    /* renamed from: c, reason: collision with root package name */
    public final i8.g f4551c;

    /* renamed from: d, reason: collision with root package name */
    public final c.a f4552d;

    /* renamed from: e, reason: collision with root package name */
    public final List<h8.g<Object>> f4553e;

    /* renamed from: f, reason: collision with root package name */
    public final Map<Class<?>, k<?, ?>> f4554f;

    /* renamed from: g, reason: collision with root package name */
    public final r7.k f4555g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f4556h;

    /* renamed from: i, reason: collision with root package name */
    public final int f4557i;

    /* renamed from: j, reason: collision with root package name */
    public h8.h f4558j;

    public e(Context context, s7.b bVar, Registry registry, i8.g gVar, c.a aVar, Map<Class<?>, k<?, ?>> map, List<h8.g<Object>> list, r7.k kVar, boolean z10, int i10) {
        super(context.getApplicationContext());
        this.f4549a = bVar;
        this.f4550b = registry;
        this.f4551c = gVar;
        this.f4552d = aVar;
        this.f4553e = list;
        this.f4554f = map;
        this.f4555g = kVar;
        this.f4556h = z10;
        this.f4557i = i10;
    }

    public <X> i8.j<ImageView, X> a(ImageView imageView, Class<X> cls) {
        return this.f4551c.a(imageView, cls);
    }

    public s7.b b() {
        return this.f4549a;
    }

    public List<h8.g<Object>> c() {
        return this.f4553e;
    }

    public synchronized h8.h d() {
        if (this.f4558j == null) {
            this.f4558j = this.f4552d.build().M();
        }
        return this.f4558j;
    }

    public <T> k<?, T> e(Class<T> cls) {
        k<?, T> kVar = (k) this.f4554f.get(cls);
        if (kVar == null) {
            for (Map.Entry<Class<?>, k<?, ?>> entry : this.f4554f.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    kVar = (k) entry.getValue();
                }
            }
        }
        return kVar == null ? (k<?, T>) f4548k : kVar;
    }

    public r7.k f() {
        return this.f4555g;
    }

    public int g() {
        return this.f4557i;
    }

    public Registry h() {
        return this.f4550b;
    }

    public boolean i() {
        return this.f4556h;
    }
}
