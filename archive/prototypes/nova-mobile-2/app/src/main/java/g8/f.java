package g8;

import java.util.ArrayList;
import java.util.List;
import p7.j;

/* compiled from: ResourceEncoderRegistry.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public final List<a<?>> f7038a = new ArrayList();

    /* compiled from: ResourceEncoderRegistry.java */
    /* loaded from: classes.dex */
    public static final class a<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<T> f7039a;

        /* renamed from: b, reason: collision with root package name */
        public final j<T> f7040b;

        public a(Class<T> cls, j<T> jVar) {
            this.f7039a = cls;
            this.f7040b = jVar;
        }

        public boolean a(Class<?> cls) {
            return this.f7039a.isAssignableFrom(cls);
        }
    }

    public synchronized <Z> void a(Class<Z> cls, j<Z> jVar) {
        this.f7038a.add(new a<>(cls, jVar));
    }

    public synchronized <Z> j<Z> b(Class<Z> cls) {
        int size = this.f7038a.size();
        for (int i10 = 0; i10 < size; i10++) {
            a<?> aVar = this.f7038a.get(i10);
            if (aVar.a(cls)) {
                return (j<Z>) aVar.f7040b;
            }
        }
        return null;
    }
}
