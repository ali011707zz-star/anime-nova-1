package g8;

import d8.g;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import r7.i;
import r7.s;

/* compiled from: LoadPathCache.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: c, reason: collision with root package name */
    public static final s<?, ?, ?> f7028c = new s<>(Object.class, Object.class, Object.class, Collections.singletonList(new i(Object.class, Object.class, Object.class, Collections.emptyList(), new g(), null)), null);

    /* renamed from: a, reason: collision with root package name */
    public final s.a<l8.i, s<?, ?, ?>> f7029a = new s.a<>();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference<l8.i> f7030b = new AtomicReference<>();

    public <Data, TResource, Transcode> s<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        s<Data, TResource, Transcode> sVar;
        l8.i b10 = b(cls, cls2, cls3);
        synchronized (this.f7029a) {
            sVar = (s) this.f7029a.get(b10);
        }
        this.f7030b.set(b10);
        return sVar;
    }

    public final l8.i b(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        l8.i andSet = this.f7030b.getAndSet(null);
        if (andSet == null) {
            andSet = new l8.i();
        }
        andSet.a(cls, cls2, cls3);
        return andSet;
    }

    public boolean c(s<?, ?, ?> sVar) {
        return f7028c.equals(sVar);
    }

    public void d(Class<?> cls, Class<?> cls2, Class<?> cls3, s<?, ?, ?> sVar) {
        synchronized (this.f7029a) {
            s.a<l8.i, s<?, ?, ?>> aVar = this.f7029a;
            l8.i iVar = new l8.i(cls, cls2, cls3);
            if (sVar == null) {
                sVar = f7028c;
            }
            aVar.put(iVar, sVar);
        }
    }
}
