package x7;

import l8.j;
import r7.u;

/* compiled from: SimpleResource.java */
/* loaded from: classes.dex */
public class b<T> implements u<T> {

    /* renamed from: f, reason: collision with root package name */
    public final T f16132f;

    public b(T t10) {
        this.f16132f = (T) j.d(t10);
    }

    @Override // r7.u
    public final int a() {
        return 1;
    }

    @Override // r7.u
    public void b() {
    }

    @Override // r7.u
    public Class<T> c() {
        return (Class<T>) this.f16132f.getClass();
    }

    @Override // r7.u
    public final T get() {
        return this.f16132f;
    }
}
