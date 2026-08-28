package r7;

import com.bumptech.glide.Registry;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import r7.h;
import v7.n;

/* compiled from: DecodeHelper.java */
/* loaded from: classes.dex */
public final class g<Transcode> {

    /* renamed from: a, reason: collision with root package name */
    public final List<n.a<?>> f12906a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final List<p7.e> f12907b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public com.bumptech.glide.e f12908c;

    /* renamed from: d, reason: collision with root package name */
    public Object f12909d;

    /* renamed from: e, reason: collision with root package name */
    public int f12910e;

    /* renamed from: f, reason: collision with root package name */
    public int f12911f;

    /* renamed from: g, reason: collision with root package name */
    public Class<?> f12912g;

    /* renamed from: h, reason: collision with root package name */
    public h.e f12913h;

    /* renamed from: i, reason: collision with root package name */
    public p7.g f12914i;

    /* renamed from: j, reason: collision with root package name */
    public Map<Class<?>, p7.k<?>> f12915j;

    /* renamed from: k, reason: collision with root package name */
    public Class<Transcode> f12916k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f12917l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f12918m;

    /* renamed from: n, reason: collision with root package name */
    public p7.e f12919n;

    /* renamed from: o, reason: collision with root package name */
    public com.bumptech.glide.g f12920o;

    /* renamed from: p, reason: collision with root package name */
    public j f12921p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f12922q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f12923r;

    public void a() {
        this.f12908c = null;
        this.f12909d = null;
        this.f12919n = null;
        this.f12912g = null;
        this.f12916k = null;
        this.f12914i = null;
        this.f12920o = null;
        this.f12915j = null;
        this.f12921p = null;
        this.f12906a.clear();
        this.f12917l = false;
        this.f12907b.clear();
        this.f12918m = false;
    }

    public s7.b b() {
        return this.f12908c.b();
    }

    public List<p7.e> c() {
        if (!this.f12918m) {
            this.f12918m = true;
            this.f12907b.clear();
            List<n.a<?>> g10 = g();
            int size = g10.size();
            for (int i10 = 0; i10 < size; i10++) {
                n.a<?> aVar = g10.get(i10);
                if (!this.f12907b.contains(aVar.f14916a)) {
                    this.f12907b.add(aVar.f14916a);
                }
                for (int i11 = 0; i11 < aVar.f14917b.size(); i11++) {
                    if (!this.f12907b.contains(aVar.f14917b.get(i11))) {
                        this.f12907b.add(aVar.f14917b.get(i11));
                    }
                }
            }
        }
        return this.f12907b;
    }

    public t7.a d() {
        return this.f12913h.a();
    }

    public j e() {
        return this.f12921p;
    }

    public int f() {
        return this.f12911f;
    }

    public List<n.a<?>> g() {
        if (!this.f12917l) {
            this.f12917l = true;
            this.f12906a.clear();
            List i10 = this.f12908c.h().i(this.f12909d);
            int size = i10.size();
            for (int i11 = 0; i11 < size; i11++) {
                n.a<?> a10 = ((v7.n) i10.get(i11)).a(this.f12909d, this.f12910e, this.f12911f, this.f12914i);
                if (a10 != null) {
                    this.f12906a.add(a10);
                }
            }
        }
        return this.f12906a;
    }

    public <Data> s<Data, ?, Transcode> h(Class<Data> cls) {
        return this.f12908c.h().h(cls, this.f12912g, this.f12916k);
    }

    public Class<?> i() {
        return this.f12909d.getClass();
    }

    public List<v7.n<File, ?>> j(File file) throws Registry.NoModelLoaderAvailableException {
        return this.f12908c.h().i(file);
    }

    public p7.g k() {
        return this.f12914i;
    }

    public com.bumptech.glide.g l() {
        return this.f12920o;
    }

    public List<Class<?>> m() {
        return this.f12908c.h().j(this.f12909d.getClass(), this.f12912g, this.f12916k);
    }

    public <Z> p7.j<Z> n(u<Z> uVar) {
        return this.f12908c.h().k(uVar);
    }

    public p7.e o() {
        return this.f12919n;
    }

    public <X> p7.d<X> p(X x10) throws Registry.NoSourceEncoderAvailableException {
        return this.f12908c.h().m(x10);
    }

    public Class<?> q() {
        return this.f12916k;
    }

    public <Z> p7.k<Z> r(Class<Z> cls) {
        p7.k<Z> kVar = (p7.k) this.f12915j.get(cls);
        if (kVar == null) {
            Iterator<Map.Entry<Class<?>, p7.k<?>>> it2 = this.f12915j.entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, p7.k<?>> next = it2.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    kVar = (p7.k) next.getValue();
                    break;
                }
            }
        }
        if (kVar != null) {
            return kVar;
        }
        if (this.f12915j.isEmpty() && this.f12922q) {
            throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
        }
        return x7.c.c();
    }

    public int s() {
        return this.f12910e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean t(Class<?> cls) {
        return h(cls) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <R> void u(com.bumptech.glide.e eVar, Object obj, p7.e eVar2, int i10, int i11, j jVar, Class<?> cls, Class<R> cls2, com.bumptech.glide.g gVar, p7.g gVar2, Map<Class<?>, p7.k<?>> map, boolean z10, boolean z11, h.e eVar3) {
        this.f12908c = eVar;
        this.f12909d = obj;
        this.f12919n = eVar2;
        this.f12910e = i10;
        this.f12911f = i11;
        this.f12921p = jVar;
        this.f12912g = cls;
        this.f12913h = eVar3;
        this.f12916k = cls2;
        this.f12920o = gVar;
        this.f12914i = gVar2;
        this.f12915j = map;
        this.f12922q = z10;
        this.f12923r = z11;
    }

    public boolean v(u<?> uVar) {
        return this.f12908c.h().n(uVar);
    }

    public boolean w() {
        return this.f12923r;
    }

    public boolean x(p7.e eVar) {
        List<n.a<?>> g10 = g();
        int size = g10.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (g10.get(i10).f14916a.equals(eVar)) {
                return true;
            }
        }
        return false;
    }
}
