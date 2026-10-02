package s3;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: Stream.java */
/* loaded from: classes.dex */
public class g<T> implements Closeable {

    /* renamed from: f, reason: collision with root package name */
    public final Iterator<? extends T> f13732f;

    /* renamed from: g, reason: collision with root package name */
    public final u3.b f13733g;

    public g(Iterator<? extends T> it2) {
        this(null, it2);
    }

    public static <K, V> g<Map.Entry<K, V>> F(Map<K, V> map) {
        e.c(map);
        return new g<>(map.entrySet());
    }

    public static <T> g<T> G(T... tArr) {
        e.c(tArr);
        if (tArr.length == 0) {
            return d();
        }
        return new g<>(new w3.c(tArr));
    }

    public static <T> g<T> d() {
        return z(Collections.emptyList());
    }

    public static <T> g<T> z(Iterable<? extends T> iterable) {
        e.c(iterable);
        return new g<>(iterable);
    }

    public g<T> L(Comparator<? super T> comparator) {
        return new g<>(this.f13733g, new w3.e(this.f13732f, comparator));
    }

    public List<T> N() {
        ArrayList arrayList = new ArrayList();
        while (this.f13732f.hasNext()) {
            arrayList.add(this.f13732f.next());
        }
        return arrayList;
    }

    public <R, A> R b(a<? super T, A, R> aVar) {
        A a10 = aVar.b().get();
        while (this.f13732f.hasNext()) {
            aVar.c().accept(a10, this.f13732f.next());
        }
        if (aVar.a() != null) {
            return aVar.a().apply(a10);
        }
        return (R) b.a().apply(a10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public f<c<T>> h(int i10, int i11, t3.c<? super T> cVar) {
        while (this.f13732f.hasNext()) {
            T next = this.f13732f.next();
            if (cVar.a(i10, next)) {
                return f.d(new c(i10, next));
            }
            i10 += i11;
        }
        return f.a();
    }

    public f<c<T>> k(t3.c<? super T> cVar) {
        return h(0, 1, cVar);
    }

    public <R> g<R> x(t3.b<? super T, ? extends R> bVar) {
        return new g<>(this.f13733g, new w3.d(this.f13732f, bVar));
    }

    public g(Iterable<? extends T> iterable) {
        this(null, new v3.a(iterable));
    }

    public g(u3.b bVar, Iterator<? extends T> it2) {
        this.f13732f = it2;
    }
}
