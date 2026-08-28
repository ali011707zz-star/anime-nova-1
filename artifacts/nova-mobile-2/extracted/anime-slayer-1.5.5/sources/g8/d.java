package g8;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import l8.i;

/* compiled from: ModelToResourceClassCache.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference<i> f7031a = new AtomicReference<>();

    /* renamed from: b, reason: collision with root package name */
    public final s.a<i, List<Class<?>>> f7032b = new s.a<>();

    public List<Class<?>> a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        List<Class<?>> list;
        i andSet = this.f7031a.getAndSet(null);
        if (andSet == null) {
            andSet = new i(cls, cls2, cls3);
        } else {
            andSet.a(cls, cls2, cls3);
        }
        synchronized (this.f7032b) {
            list = this.f7032b.get(andSet);
        }
        this.f7031a.set(andSet);
        return list;
    }

    public void b(Class<?> cls, Class<?> cls2, Class<?> cls3, List<Class<?>> list) {
        synchronized (this.f7032b) {
            this.f7032b.put(new i(cls, cls2, cls3), list);
        }
    }
}
