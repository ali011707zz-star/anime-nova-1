package w3;

import java.util.Iterator;

/* compiled from: ObjMap.java */
/* loaded from: classes.dex */
public class d<T, R> extends v3.c<R> {

    /* renamed from: f, reason: collision with root package name */
    public final Iterator<? extends T> f15243f;

    /* renamed from: g, reason: collision with root package name */
    public final t3.b<? super T, ? extends R> f15244g;

    public d(Iterator<? extends T> it2, t3.b<? super T, ? extends R> bVar) {
        this.f15243f = it2;
        this.f15244g = bVar;
    }

    @Override // v3.c
    public R a() {
        return this.f15244g.apply(this.f15243f.next());
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f15243f.hasNext();
    }
}
