package r7;

import android.util.Log;
import com.bumptech.glide.load.data.d;
import java.util.Collections;
import java.util.List;
import r7.f;
import v7.n;

/* compiled from: SourceGenerator.java */
/* loaded from: classes.dex */
public class y implements f, f.a {

    /* renamed from: f, reason: collision with root package name */
    public final g<?> f13079f;

    /* renamed from: g, reason: collision with root package name */
    public final f.a f13080g;

    /* renamed from: h, reason: collision with root package name */
    public int f13081h;

    /* renamed from: i, reason: collision with root package name */
    public c f13082i;

    /* renamed from: j, reason: collision with root package name */
    public Object f13083j;

    /* renamed from: k, reason: collision with root package name */
    public volatile n.a<?> f13084k;

    /* renamed from: l, reason: collision with root package name */
    public d f13085l;

    /* compiled from: SourceGenerator.java */
    /* loaded from: classes.dex */
    public class a implements d.a<Object> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ n.a f13086f;

        public a(n.a aVar) {
            this.f13086f = aVar;
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void c(Exception exc) {
            if (y.this.g(this.f13086f)) {
                y.this.i(this.f13086f, exc);
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void d(Object obj) {
            if (y.this.g(this.f13086f)) {
                y.this.h(this.f13086f, obj);
            }
        }
    }

    public y(g<?> gVar, f.a aVar) {
        this.f13079f = gVar;
        this.f13080g = aVar;
    }

    @Override // r7.f.a
    public void a() {
        throw new UnsupportedOperationException();
    }

    @Override // r7.f.a
    public void b(p7.e eVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, p7.a aVar) {
        this.f13080g.b(eVar, exc, dVar, this.f13084k.f14918c.e());
    }

    @Override // r7.f.a
    public void c(p7.e eVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, p7.a aVar, p7.e eVar2) {
        this.f13080g.c(eVar, obj, dVar, this.f13084k.f14918c.e(), eVar);
    }

    @Override // r7.f
    public void cancel() {
        n.a<?> aVar = this.f13084k;
        if (aVar != null) {
            aVar.f14918c.cancel();
        }
    }

    public final void d(Object obj) {
        long b10 = l8.f.b();
        try {
            p7.d<X> p10 = this.f13079f.p(obj);
            e eVar = new e(p10, obj, this.f13079f.k());
            this.f13085l = new d(this.f13084k.f14916a, this.f13079f.o());
            this.f13079f.d().a(this.f13085l, eVar);
            if (Log.isLoggable("SourceGenerator", 2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Finished encoding source to cache, key: ");
                sb2.append(this.f13085l);
                sb2.append(", data: ");
                sb2.append(obj);
                sb2.append(", encoder: ");
                sb2.append(p10);
                sb2.append(", duration: ");
                sb2.append(l8.f.a(b10));
            }
            this.f13084k.f14918c.b();
            this.f13082i = new c(Collections.singletonList(this.f13084k.f14916a), this.f13079f, this);
        } catch (Throwable th) {
            this.f13084k.f14918c.b();
            throw th;
        }
    }

    @Override // r7.f
    public boolean e() {
        Object obj = this.f13083j;
        if (obj != null) {
            this.f13083j = null;
            d(obj);
        }
        c cVar = this.f13082i;
        if (cVar != null && cVar.e()) {
            return true;
        }
        this.f13082i = null;
        this.f13084k = null;
        boolean z10 = false;
        while (!z10 && f()) {
            List<n.a<?>> g10 = this.f13079f.g();
            int i10 = this.f13081h;
            this.f13081h = i10 + 1;
            this.f13084k = g10.get(i10);
            if (this.f13084k != null && (this.f13079f.e().c(this.f13084k.f14918c.e()) || this.f13079f.t(this.f13084k.f14918c.a()))) {
                j(this.f13084k);
                z10 = true;
            }
        }
        return z10;
    }

    public final boolean f() {
        return this.f13081h < this.f13079f.g().size();
    }

    public boolean g(n.a<?> aVar) {
        n.a<?> aVar2 = this.f13084k;
        return aVar2 != null && aVar2 == aVar;
    }

    public void h(n.a<?> aVar, Object obj) {
        j e10 = this.f13079f.e();
        if (obj != null && e10.c(aVar.f14918c.e())) {
            this.f13083j = obj;
            this.f13080g.a();
        } else {
            f.a aVar2 = this.f13080g;
            p7.e eVar = aVar.f14916a;
            com.bumptech.glide.load.data.d<?> dVar = aVar.f14918c;
            aVar2.c(eVar, obj, dVar, dVar.e(), this.f13085l);
        }
    }

    public void i(n.a<?> aVar, Exception exc) {
        f.a aVar2 = this.f13080g;
        d dVar = this.f13085l;
        com.bumptech.glide.load.data.d<?> dVar2 = aVar.f14918c;
        aVar2.b(dVar, exc, dVar2, dVar2.e());
    }

    public final void j(n.a<?> aVar) {
        this.f13084k.f14918c.f(this.f13079f.l(), new a(aVar));
    }
}
