package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.c;
import e8.l;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import t7.a;
import t7.j;

/* compiled from: GlideBuilder.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public r7.k f4528b;

    /* renamed from: c, reason: collision with root package name */
    public s7.e f4529c;

    /* renamed from: d, reason: collision with root package name */
    public s7.b f4530d;

    /* renamed from: e, reason: collision with root package name */
    public t7.i f4531e;

    /* renamed from: f, reason: collision with root package name */
    public u7.a f4532f;

    /* renamed from: g, reason: collision with root package name */
    public u7.a f4533g;

    /* renamed from: h, reason: collision with root package name */
    public a.InterfaceC0350a f4534h;

    /* renamed from: i, reason: collision with root package name */
    public t7.j f4535i;

    /* renamed from: j, reason: collision with root package name */
    public e8.d f4536j;

    /* renamed from: m, reason: collision with root package name */
    public l.b f4539m;

    /* renamed from: n, reason: collision with root package name */
    public u7.a f4540n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f4541o;

    /* renamed from: p, reason: collision with root package name */
    public List<h8.g<Object>> f4542p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f4543q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f4544r;

    /* renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, k<?, ?>> f4527a = new s.a();

    /* renamed from: k, reason: collision with root package name */
    public int f4537k = 4;

    /* renamed from: l, reason: collision with root package name */
    public c.a f4538l = new a();

    /* compiled from: GlideBuilder.java */
    /* loaded from: classes.dex */
    public class a implements c.a {
        public a() {
        }

        @Override // com.bumptech.glide.c.a
        public h8.h build() {
            return new h8.h();
        }
    }

    /* compiled from: GlideBuilder.java */
    /* loaded from: classes.dex */
    public class b implements c.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ h8.h f4546a;

        public b(h8.h hVar) {
            this.f4546a = hVar;
        }

        @Override // com.bumptech.glide.c.a
        public h8.h build() {
            h8.h hVar = this.f4546a;
            return hVar != null ? hVar : new h8.h();
        }
    }

    public c a(Context context) {
        if (this.f4532f == null) {
            this.f4532f = u7.a.g();
        }
        if (this.f4533g == null) {
            this.f4533g = u7.a.e();
        }
        if (this.f4540n == null) {
            this.f4540n = u7.a.c();
        }
        if (this.f4535i == null) {
            this.f4535i = new j.a(context).a();
        }
        if (this.f4536j == null) {
            this.f4536j = new e8.f();
        }
        if (this.f4529c == null) {
            int b10 = this.f4535i.b();
            if (b10 > 0) {
                this.f4529c = new s7.k(b10);
            } else {
                this.f4529c = new s7.f();
            }
        }
        if (this.f4530d == null) {
            this.f4530d = new s7.j(this.f4535i.a());
        }
        if (this.f4531e == null) {
            this.f4531e = new t7.h(this.f4535i.d());
        }
        if (this.f4534h == null) {
            this.f4534h = new t7.g(context);
        }
        if (this.f4528b == null) {
            this.f4528b = new r7.k(this.f4531e, this.f4534h, this.f4533g, this.f4532f, u7.a.h(), this.f4540n, this.f4541o);
        }
        List<h8.g<Object>> list = this.f4542p;
        if (list == null) {
            this.f4542p = Collections.emptyList();
        } else {
            this.f4542p = Collections.unmodifiableList(list);
        }
        return new c(context, this.f4528b, this.f4531e, this.f4529c, this.f4530d, new l(this.f4539m), this.f4536j, this.f4537k, this.f4538l, this.f4527a, this.f4542p, this.f4543q, this.f4544r);
    }

    public d b(s7.e eVar) {
        this.f4529c = eVar;
        return this;
    }

    public d c(c.a aVar) {
        this.f4538l = (c.a) l8.j.d(aVar);
        return this;
    }

    public d d(h8.h hVar) {
        return c(new b(hVar));
    }

    public <T> d e(Class<T> cls, k<?, T> kVar) {
        this.f4527a.put(cls, kVar);
        return this;
    }

    public d f(a.InterfaceC0350a interfaceC0350a) {
        this.f4534h = interfaceC0350a;
        return this;
    }

    public d g(t7.i iVar) {
        this.f4531e = iVar;
        return this;
    }

    public void h(l.b bVar) {
        this.f4539m = bVar;
    }
}
