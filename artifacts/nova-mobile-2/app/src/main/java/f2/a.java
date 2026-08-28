package f2;

import d2.l;
import d2.s;
import java.util.HashMap;
import java.util.Map;
import m2.p;

/* compiled from: DelayedWorkTracker.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: d, reason: collision with root package name */
    public static final String f6381d = l.f("DelayedWorkTracker");

    /* renamed from: a, reason: collision with root package name */
    public final b f6382a;

    /* renamed from: b, reason: collision with root package name */
    public final s f6383b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<String, Runnable> f6384c = new HashMap();

    /* compiled from: DelayedWorkTracker.java */
    /* renamed from: f2.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0117a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ p f6385f;

        public RunnableC0117a(p pVar) {
            this.f6385f = pVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            l.c().a(a.f6381d, String.format("Scheduling work %s", this.f6385f.f10827a), new Throwable[0]);
            a.this.f6382a.f(this.f6385f);
        }
    }

    public a(b bVar, s sVar) {
        this.f6382a = bVar;
        this.f6383b = sVar;
    }

    public void a(p pVar) {
        Runnable remove = this.f6384c.remove(pVar.f10827a);
        if (remove != null) {
            this.f6383b.b(remove);
        }
        RunnableC0117a runnableC0117a = new RunnableC0117a(pVar);
        this.f6384c.put(pVar.f10827a, runnableC0117a);
        this.f6383b.a(pVar.a() - System.currentTimeMillis(), runnableC0117a);
    }

    public void b(String str) {
        Runnable remove = this.f6384c.remove(str);
        if (remove != null) {
            this.f6383b.b(remove);
        }
    }
}
