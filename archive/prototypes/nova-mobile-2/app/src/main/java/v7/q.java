package v7;

import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import v7.n;

/* compiled from: MultiModelLoader.java */
/* loaded from: classes.dex */
public class q<Model, Data> implements n<Model, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final List<n<Model, Data>> f14923a;

    /* renamed from: b, reason: collision with root package name */
    public final p0.f<List<Throwable>> f14924b;

    /* compiled from: MultiModelLoader.java */
    /* loaded from: classes.dex */
    public static class a<Data> implements com.bumptech.glide.load.data.d<Data>, d.a<Data> {

        /* renamed from: f, reason: collision with root package name */
        public final List<com.bumptech.glide.load.data.d<Data>> f14925f;

        /* renamed from: g, reason: collision with root package name */
        public final p0.f<List<Throwable>> f14926g;

        /* renamed from: h, reason: collision with root package name */
        public int f14927h;

        /* renamed from: i, reason: collision with root package name */
        public com.bumptech.glide.g f14928i;

        /* renamed from: j, reason: collision with root package name */
        public d.a<? super Data> f14929j;

        /* renamed from: k, reason: collision with root package name */
        public List<Throwable> f14930k;

        /* renamed from: l, reason: collision with root package name */
        public boolean f14931l;

        public a(List<com.bumptech.glide.load.data.d<Data>> list, p0.f<List<Throwable>> fVar) {
            this.f14926g = fVar;
            l8.j.c(list);
            this.f14925f = list;
            this.f14927h = 0;
        }

        @Override // com.bumptech.glide.load.data.d
        public Class<Data> a() {
            return this.f14925f.get(0).a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            List<Throwable> list = this.f14930k;
            if (list != null) {
                this.f14926g.a(list);
            }
            this.f14930k = null;
            Iterator<com.bumptech.glide.load.data.d<Data>> it2 = this.f14925f.iterator();
            while (it2.hasNext()) {
                it2.next().b();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void c(Exception exc) {
            ((List) l8.j.d(this.f14930k)).add(exc);
            g();
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
            this.f14931l = true;
            Iterator<com.bumptech.glide.load.data.d<Data>> it2 = this.f14925f.iterator();
            while (it2.hasNext()) {
                it2.next().cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void d(Data data) {
            if (data != null) {
                this.f14929j.d(data);
            } else {
                g();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public p7.a e() {
            return this.f14925f.get(0).e();
        }

        @Override // com.bumptech.glide.load.data.d
        public void f(com.bumptech.glide.g gVar, d.a<? super Data> aVar) {
            this.f14928i = gVar;
            this.f14929j = aVar;
            this.f14930k = this.f14926g.b();
            this.f14925f.get(this.f14927h).f(gVar, this);
            if (this.f14931l) {
                cancel();
            }
        }

        public final void g() {
            if (this.f14931l) {
                return;
            }
            if (this.f14927h < this.f14925f.size() - 1) {
                this.f14927h++;
                f(this.f14928i, this.f14929j);
            } else {
                l8.j.d(this.f14930k);
                this.f14929j.c(new GlideException("Fetch failed", new ArrayList(this.f14930k)));
            }
        }
    }

    public q(List<n<Model, Data>> list, p0.f<List<Throwable>> fVar) {
        this.f14923a = list;
        this.f14924b = fVar;
    }

    @Override // v7.n
    public n.a<Data> a(Model model, int i10, int i11, p7.g gVar) {
        n.a<Data> a10;
        int size = this.f14923a.size();
        ArrayList arrayList = new ArrayList(size);
        p7.e eVar = null;
        for (int i12 = 0; i12 < size; i12++) {
            n<Model, Data> nVar = this.f14923a.get(i12);
            if (nVar.b(model) && (a10 = nVar.a(model, i10, i11, gVar)) != null) {
                eVar = a10.f14916a;
                arrayList.add(a10.f14918c);
            }
        }
        if (arrayList.isEmpty() || eVar == null) {
            return null;
        }
        return new n.a<>(eVar, new a(arrayList, this.f14924b));
    }

    @Override // v7.n
    public boolean b(Model model) {
        Iterator<n<Model, Data>> it2 = this.f14923a.iterator();
        while (it2.hasNext()) {
            if (it2.next().b(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f14923a.toArray()) + '}';
    }
}
