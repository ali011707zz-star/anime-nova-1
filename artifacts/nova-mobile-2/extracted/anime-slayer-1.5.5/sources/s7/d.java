package s7;

import java.util.Queue;
import s7.m;

/* compiled from: BaseKeyPool.java */
/* loaded from: classes.dex */
public abstract class d<T extends m> {

    /* renamed from: a, reason: collision with root package name */
    public final Queue<T> f13811a = l8.k.f(20);

    public abstract T a();

    public T b() {
        T poll = this.f13811a.poll();
        return poll == null ? a() : poll;
    }

    public void c(T t10) {
        if (this.f13811a.size() < 20) {
            this.f13811a.offer(t10);
        }
    }
}
