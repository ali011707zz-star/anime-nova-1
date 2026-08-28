package v7;

import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import v7.n;

/* compiled from: MultiModelLoaderFactory.java */
/* loaded from: classes.dex */
public class r {

    /* renamed from: e, reason: collision with root package name */
    public static final c f14932e = new c();

    /* renamed from: f, reason: collision with root package name */
    public static final n<Object, Object> f14933f = new a();

    /* renamed from: a, reason: collision with root package name */
    public final List<b<?, ?>> f14934a;

    /* renamed from: b, reason: collision with root package name */
    public final c f14935b;

    /* renamed from: c, reason: collision with root package name */
    public final Set<b<?, ?>> f14936c;

    /* renamed from: d, reason: collision with root package name */
    public final p0.f<List<Throwable>> f14937d;

    /* compiled from: MultiModelLoaderFactory.java */
    /* loaded from: classes.dex */
    public static class a implements n<Object, Object> {
        @Override // v7.n
        public n.a<Object> a(Object obj, int i10, int i11, p7.g gVar) {
            return null;
        }

        @Override // v7.n
        public boolean b(Object obj) {
            return false;
        }
    }

    /* compiled from: MultiModelLoaderFactory.java */
    /* loaded from: classes.dex */
    public static class b<Model, Data> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<Model> f14938a;

        /* renamed from: b, reason: collision with root package name */
        public final Class<Data> f14939b;

        /* renamed from: c, reason: collision with root package name */
        public final o<? extends Model, ? extends Data> f14940c;

        public b(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
            this.f14938a = cls;
            this.f14939b = cls2;
            this.f14940c = oVar;
        }

        public boolean a(Class<?> cls) {
            return this.f14938a.isAssignableFrom(cls);
        }

        public boolean b(Class<?> cls, Class<?> cls2) {
            return a(cls) && this.f14939b.isAssignableFrom(cls2);
        }
    }

    /* compiled from: MultiModelLoaderFactory.java */
    /* loaded from: classes.dex */
    public static class c {
        public <Model, Data> q<Model, Data> a(List<n<Model, Data>> list, p0.f<List<Throwable>> fVar) {
            return new q<>(list, fVar);
        }
    }

    public r(p0.f<List<Throwable>> fVar) {
        this(fVar, f14932e);
    }

    public static <Model, Data> n<Model, Data> f() {
        return (n<Model, Data>) f14933f;
    }

    public final <Model, Data> void a(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar, boolean z10) {
        b<?, ?> bVar = new b<>(cls, cls2, oVar);
        List<b<?, ?>> list = this.f14934a;
        list.add(z10 ? list.size() : 0, bVar);
    }

    public synchronized <Model, Data> void b(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        a(cls, cls2, oVar, true);
    }

    public synchronized <Model> List<n<Model, ?>> c(Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b<?, ?> bVar : this.f14934a) {
                if (!this.f14936c.contains(bVar) && bVar.a(cls)) {
                    this.f14936c.add(bVar);
                    arrayList.add(e(bVar));
                    this.f14936c.remove(bVar);
                }
            }
        } catch (Throwable th) {
            this.f14936c.clear();
            throw th;
        }
        return arrayList;
    }

    public synchronized <Model, Data> n<Model, Data> d(Class<Model> cls, Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z10 = false;
            for (b<?, ?> bVar : this.f14934a) {
                if (this.f14936c.contains(bVar)) {
                    z10 = true;
                } else if (bVar.b(cls, cls2)) {
                    this.f14936c.add(bVar);
                    arrayList.add(e(bVar));
                    this.f14936c.remove(bVar);
                }
            }
            if (arrayList.size() > 1) {
                return this.f14935b.a(arrayList, this.f14937d);
            }
            if (arrayList.size() == 1) {
                return (n) arrayList.get(0);
            }
            if (z10) {
                return f();
            }
            throw new Registry.NoModelLoaderAvailableException((Class<?>) cls, (Class<?>) cls2);
        } catch (Throwable th) {
            this.f14936c.clear();
            throw th;
        }
    }

    public final <Model, Data> n<Model, Data> e(b<?, ?> bVar) {
        return (n) l8.j.d(bVar.f14940c.a(this));
    }

    public synchronized List<Class<?>> g(Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b<?, ?> bVar : this.f14934a) {
            if (!arrayList.contains(bVar.f14939b) && bVar.a(cls)) {
                arrayList.add(bVar.f14939b);
            }
        }
        return arrayList;
    }

    public r(p0.f<List<Throwable>> fVar, c cVar) {
        this.f14934a = new ArrayList();
        this.f14936c = new HashSet();
        this.f14937d = fVar;
        this.f14935b = cVar;
    }
}
