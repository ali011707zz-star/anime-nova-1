package t7;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: DiskCacheWriteLocker.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, a> f14048a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final b f14049b = new b();

    /* compiled from: DiskCacheWriteLocker.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Lock f14050a = new ReentrantLock();

        /* renamed from: b, reason: collision with root package name */
        public int f14051b;
    }

    /* compiled from: DiskCacheWriteLocker.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final Queue<a> f14052a = new ArrayDeque();

        public a a() {
            a poll;
            synchronized (this.f14052a) {
                poll = this.f14052a.poll();
            }
            return poll == null ? new a() : poll;
        }

        public void b(a aVar) {
            synchronized (this.f14052a) {
                if (this.f14052a.size() < 10) {
                    this.f14052a.offer(aVar);
                }
            }
        }
    }

    public void a(String str) {
        a aVar;
        synchronized (this) {
            aVar = this.f14048a.get(str);
            if (aVar == null) {
                aVar = this.f14049b.a();
                this.f14048a.put(str, aVar);
            }
            aVar.f14051b++;
        }
        aVar.f14050a.lock();
    }

    public void b(String str) {
        a aVar;
        synchronized (this) {
            aVar = (a) l8.j.d(this.f14048a.get(str));
            int i10 = aVar.f14051b;
            if (i10 >= 1) {
                int i11 = i10 - 1;
                aVar.f14051b = i11;
                if (i11 == 0) {
                    a remove = this.f14048a.remove(str);
                    if (remove.equals(aVar)) {
                        this.f14049b.b(remove);
                    } else {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + remove + ", safeKey: " + str);
                    }
                }
            } else {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f14051b);
            }
        }
        aVar.f14050a.unlock();
    }
}
