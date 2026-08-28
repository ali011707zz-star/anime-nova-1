package v7;

import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ModelLoaderRegistry.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public final r f14919a;

    /* renamed from: b, reason: collision with root package name */
    public final a f14920b;

    /* compiled from: ModelLoaderRegistry.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Map<Class<?>, C0392a<?>> f14921a = new HashMap();

        /* compiled from: ModelLoaderRegistry.java */
        /* renamed from: v7.p$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0392a<Model> {

            /* renamed from: a, reason: collision with root package name */
            public final List<n<Model, ?>> f14922a;

            public C0392a(List<n<Model, ?>> list) {
                this.f14922a = list;
            }
        }

        public void a() {
            this.f14921a.clear();
        }

        public <Model> List<n<Model, ?>> b(Class<Model> cls) {
            C0392a<?> c0392a = this.f14921a.get(cls);
            if (c0392a == null) {
                return null;
            }
            return (List<n<Model, ?>>) c0392a.f14922a;
        }

        public <Model> void c(Class<Model> cls, List<n<Model, ?>> list) {
            if (this.f14921a.put(cls, new C0392a<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }
    }

    public p(p0.f<List<Throwable>> fVar) {
        this(new r(fVar));
    }

    public static <A> Class<A> b(A a10) {
        return (Class<A>) a10.getClass();
    }

    public synchronized <Model, Data> void a(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        this.f14919a.b(cls, cls2, oVar);
        this.f14920b.a();
    }

    public synchronized List<Class<?>> c(Class<?> cls) {
        return this.f14919a.g(cls);
    }

    public <A> List<n<A, ?>> d(A a10) {
        List<n<A, ?>> e10 = e(b(a10));
        if (!e10.isEmpty()) {
            int size = e10.size();
            List<n<A, ?>> emptyList = Collections.emptyList();
            boolean z10 = true;
            for (int i10 = 0; i10 < size; i10++) {
                n<A, ?> nVar = e10.get(i10);
                if (nVar.b(a10)) {
                    if (z10) {
                        emptyList = new ArrayList<>(size - i10);
                        z10 = false;
                    }
                    emptyList.add(nVar);
                }
            }
            if (emptyList.isEmpty()) {
                throw new Registry.NoModelLoaderAvailableException(a10, e10);
            }
            return emptyList;
        }
        throw new Registry.NoModelLoaderAvailableException(a10);
    }

    public final synchronized <A> List<n<A, ?>> e(Class<A> cls) {
        List<n<A, ?>> b10;
        b10 = this.f14920b.b(cls);
        if (b10 == null) {
            b10 = Collections.unmodifiableList(this.f14919a.c(cls));
            this.f14920b.c(cls, b10);
        }
        return b10;
    }

    public p(r rVar) {
        this.f14920b = new a();
        this.f14919a = rVar;
    }
}
