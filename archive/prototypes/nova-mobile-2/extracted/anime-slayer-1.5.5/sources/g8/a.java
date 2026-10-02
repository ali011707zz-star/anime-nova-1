package g8;

import java.util.ArrayList;
import java.util.List;

/* compiled from: EncoderRegistry.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final List<C0134a<?>> f7024a = new ArrayList();

    /* compiled from: EncoderRegistry.java */
    /* renamed from: g8.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0134a<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<T> f7025a;

        /* renamed from: b, reason: collision with root package name */
        public final p7.d<T> f7026b;

        public C0134a(Class<T> cls, p7.d<T> dVar) {
            this.f7025a = cls;
            this.f7026b = dVar;
        }

        public boolean a(Class<?> cls) {
            return this.f7025a.isAssignableFrom(cls);
        }
    }

    public synchronized <T> void a(Class<T> cls, p7.d<T> dVar) {
        this.f7024a.add(new C0134a<>(cls, dVar));
    }

    public synchronized <T> p7.d<T> b(Class<T> cls) {
        for (C0134a<?> c0134a : this.f7024a) {
            if (c0134a.a(cls)) {
                return (p7.d<T>) c0134a.f7026b;
            }
        }
        return null;
    }
}
