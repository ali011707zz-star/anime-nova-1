package d8;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: TranscoderRegistry.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public final List<a<?, ?>> f5723a = new ArrayList();

    /* compiled from: TranscoderRegistry.java */
    /* loaded from: classes.dex */
    public static final class a<Z, R> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<Z> f5724a;

        /* renamed from: b, reason: collision with root package name */
        public final Class<R> f5725b;

        /* renamed from: c, reason: collision with root package name */
        public final e<Z, R> f5726c;

        public a(Class<Z> cls, Class<R> cls2, e<Z, R> eVar) {
            this.f5724a = cls;
            this.f5725b = cls2;
            this.f5726c = eVar;
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return this.f5724a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f5725b);
        }
    }

    public synchronized <Z, R> e<Z, R> a(Class<Z> cls, Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return g.b();
        }
        for (a<?, ?> aVar : this.f5723a) {
            if (aVar.a(cls, cls2)) {
                return (e<Z, R>) aVar.f5726c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    public synchronized <Z, R> List<Class<R>> b(Class<Z> cls, Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator<a<?, ?>> it2 = this.f5723a.iterator();
        while (it2.hasNext()) {
            if (it2.next().a(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }

    public synchronized <Z, R> void c(Class<Z> cls, Class<R> cls2, e<Z, R> eVar) {
        this.f5723a.add(new a<>(cls, cls2, eVar));
    }
}
