package l8;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: LruCache.java */
/* loaded from: classes.dex */
public class g<T, Y> {

    /* renamed from: a, reason: collision with root package name */
    public final Map<T, Y> f10524a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b, reason: collision with root package name */
    public final long f10525b;

    /* renamed from: c, reason: collision with root package name */
    public long f10526c;

    /* renamed from: d, reason: collision with root package name */
    public long f10527d;

    public g(long j10) {
        this.f10525b = j10;
        this.f10526c = j10;
    }

    public void b() {
        m(0L);
    }

    public final void f() {
        m(this.f10526c);
    }

    public synchronized Y g(T t10) {
        return this.f10524a.get(t10);
    }

    public synchronized long h() {
        return this.f10526c;
    }

    public int i(Y y10) {
        return 1;
    }

    public void j(T t10, Y y10) {
    }

    public synchronized Y k(T t10, Y y10) {
        long i10 = i(y10);
        if (i10 >= this.f10526c) {
            j(t10, y10);
            return null;
        }
        if (y10 != null) {
            this.f10527d += i10;
        }
        Y put = this.f10524a.put(t10, y10);
        if (put != null) {
            this.f10527d -= i(put);
            if (!put.equals(y10)) {
                j(t10, put);
            }
        }
        f();
        return put;
    }

    public synchronized Y l(T t10) {
        Y remove;
        remove = this.f10524a.remove(t10);
        if (remove != null) {
            this.f10527d -= i(remove);
        }
        return remove;
    }

    public synchronized void m(long j10) {
        while (this.f10527d > j10) {
            Iterator<Map.Entry<T, Y>> it2 = this.f10524a.entrySet().iterator();
            Map.Entry<T, Y> next = it2.next();
            Y value = next.getValue();
            this.f10527d -= i(value);
            T key = next.getKey();
            it2.remove();
            j(key, value);
        }
    }
}
