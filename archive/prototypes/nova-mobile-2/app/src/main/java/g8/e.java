package g8;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p7.i;

/* compiled from: ResourceDecoderRegistry.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public final List<String> f7033a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final Map<String, List<a<?, ?>>> f7034b = new HashMap();

    /* compiled from: ResourceDecoderRegistry.java */
    /* loaded from: classes.dex */
    public static class a<T, R> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<T> f7035a;

        /* renamed from: b, reason: collision with root package name */
        public final Class<R> f7036b;

        /* renamed from: c, reason: collision with root package name */
        public final i<T, R> f7037c;

        public a(Class<T> cls, Class<R> cls2, i<T, R> iVar) {
            this.f7035a = cls;
            this.f7036b = cls2;
            this.f7037c = iVar;
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return this.f7035a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f7036b);
        }
    }

    public synchronized <T, R> void a(String str, i<T, R> iVar, Class<T> cls, Class<R> cls2) {
        c(str).add(new a<>(cls, cls2, iVar));
    }

    public synchronized <T, R> List<i<T, R>> b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it2 = this.f7033a.iterator();
        while (it2.hasNext()) {
            List<a<?, ?>> list = this.f7034b.get(it2.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2)) {
                        arrayList.add(aVar.f7037c);
                    }
                }
            }
        }
        return arrayList;
    }

    public final synchronized List<a<?, ?>> c(String str) {
        List<a<?, ?>> list;
        if (!this.f7033a.contains(str)) {
            this.f7033a.add(str);
        }
        list = this.f7034b.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f7034b.put(str, list);
        }
        return list;
    }

    public synchronized <T, R> List<Class<R>> d(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it2 = this.f7033a.iterator();
        while (it2.hasNext()) {
            List<a<?, ?>> list = this.f7034b.get(it2.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2) && !arrayList.contains(aVar.f7036b)) {
                        arrayList.add(aVar.f7036b);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized void e(List<String> list) {
        ArrayList<String> arrayList = new ArrayList(this.f7033a);
        this.f7033a.clear();
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            this.f7033a.add(it2.next());
        }
        for (String str : arrayList) {
            if (!list.contains(str)) {
                this.f7033a.add(str);
            }
        }
    }
}
