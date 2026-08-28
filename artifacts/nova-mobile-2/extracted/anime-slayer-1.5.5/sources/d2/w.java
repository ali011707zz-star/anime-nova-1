package d2;

import androidx.work.ListenableWorker;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* compiled from: WorkRequest.java */
/* loaded from: classes.dex */
public abstract class w {

    /* renamed from: a, reason: collision with root package name */
    public UUID f5602a;

    /* renamed from: b, reason: collision with root package name */
    public m2.p f5603b;

    /* renamed from: c, reason: collision with root package name */
    public Set<String> f5604c;

    /* compiled from: WorkRequest.java */
    /* loaded from: classes.dex */
    public static abstract class a<B extends a<?, ?>, W extends w> {

        /* renamed from: c, reason: collision with root package name */
        public m2.p f5607c;

        /* renamed from: e, reason: collision with root package name */
        public Class<? extends ListenableWorker> f5609e;

        /* renamed from: a, reason: collision with root package name */
        public boolean f5605a = false;

        /* renamed from: d, reason: collision with root package name */
        public Set<String> f5608d = new HashSet();

        /* renamed from: b, reason: collision with root package name */
        public UUID f5606b = UUID.randomUUID();

        public a(Class<? extends ListenableWorker> cls) {
            this.f5609e = cls;
            this.f5607c = new m2.p(this.f5606b.toString(), cls.getName());
            a(cls.getName());
        }

        public final B a(String str) {
            this.f5608d.add(str);
            return d();
        }

        public final W b() {
            W c10 = c();
            this.f5606b = UUID.randomUUID();
            m2.p pVar = new m2.p(this.f5607c);
            this.f5607c = pVar;
            pVar.f10827a = this.f5606b.toString();
            return c10;
        }

        public abstract W c();

        public abstract B d();

        public final B e(d2.a aVar, long j10, TimeUnit timeUnit) {
            this.f5605a = true;
            m2.p pVar = this.f5607c;
            pVar.f10838l = aVar;
            pVar.e(timeUnit.toMillis(j10));
            return d();
        }

        public final B f(c cVar) {
            this.f5607c.f10836j = cVar;
            return d();
        }

        public final B g(androidx.work.a aVar) {
            this.f5607c.f10831e = aVar;
            return d();
        }
    }

    public w(UUID uuid, m2.p pVar, Set<String> set) {
        this.f5602a = uuid;
        this.f5603b = pVar;
        this.f5604c = set;
    }

    public UUID a() {
        return this.f5602a;
    }

    public String b() {
        return this.f5602a.toString();
    }

    public Set<String> c() {
        return this.f5604c;
    }

    public m2.p d() {
        return this.f5603b;
    }
}
