package com.bumptech.glide.load.data;

import com.bumptech.glide.load.data.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: DataRewinderRegistry.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: b, reason: collision with root package name */
    public static final e.a<?> f4610b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, e.a<?>> f4611a = new HashMap();

    /* compiled from: DataRewinderRegistry.java */
    /* loaded from: classes.dex */
    public class a implements e.a<Object> {
        @Override // com.bumptech.glide.load.data.e.a
        public Class<Object> a() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // com.bumptech.glide.load.data.e.a
        public e<Object> b(Object obj) {
            return new b(obj);
        }
    }

    /* compiled from: DataRewinderRegistry.java */
    /* loaded from: classes.dex */
    public static final class b implements e<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4612a;

        public b(Object obj) {
            this.f4612a = obj;
        }

        @Override // com.bumptech.glide.load.data.e
        public Object a() {
            return this.f4612a;
        }

        @Override // com.bumptech.glide.load.data.e
        public void b() {
        }
    }

    public synchronized <T> e<T> a(T t10) {
        e.a<?> aVar;
        l8.j.d(t10);
        aVar = this.f4611a.get(t10.getClass());
        if (aVar == null) {
            Iterator<e.a<?>> it2 = this.f4611a.values().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                e.a<?> next = it2.next();
                if (next.a().isAssignableFrom(t10.getClass())) {
                    aVar = next;
                    break;
                }
            }
        }
        if (aVar == null) {
            aVar = f4610b;
        }
        return (e<T>) aVar.b(t10);
    }

    public synchronized void b(e.a<?> aVar) {
        this.f4611a.put(aVar.a(), aVar);
    }
}
