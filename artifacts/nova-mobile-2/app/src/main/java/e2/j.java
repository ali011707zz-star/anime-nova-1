package e2;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import d2.l;
import d2.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import m2.p;
import m2.q;
import m2.t;
import n2.m;

/* compiled from: WorkerWrapper.java */
/* loaded from: classes.dex */
public class j implements Runnable {

    /* renamed from: y, reason: collision with root package name */
    public static final String f5973y = l.f("WorkerWrapper");

    /* renamed from: f, reason: collision with root package name */
    public Context f5974f;

    /* renamed from: g, reason: collision with root package name */
    public String f5975g;

    /* renamed from: h, reason: collision with root package name */
    public List<e> f5976h;

    /* renamed from: i, reason: collision with root package name */
    public WorkerParameters.a f5977i;

    /* renamed from: j, reason: collision with root package name */
    public p f5978j;

    /* renamed from: k, reason: collision with root package name */
    public ListenableWorker f5979k;

    /* renamed from: m, reason: collision with root package name */
    public d2.b f5981m;

    /* renamed from: n, reason: collision with root package name */
    public p2.a f5982n;

    /* renamed from: o, reason: collision with root package name */
    public l2.a f5983o;

    /* renamed from: p, reason: collision with root package name */
    public WorkDatabase f5984p;

    /* renamed from: q, reason: collision with root package name */
    public q f5985q;

    /* renamed from: r, reason: collision with root package name */
    public m2.b f5986r;

    /* renamed from: s, reason: collision with root package name */
    public t f5987s;

    /* renamed from: t, reason: collision with root package name */
    public List<String> f5988t;

    /* renamed from: u, reason: collision with root package name */
    public String f5989u;

    /* renamed from: x, reason: collision with root package name */
    public volatile boolean f5992x;

    /* renamed from: l, reason: collision with root package name */
    public ListenableWorker.a f5980l = ListenableWorker.a.a();

    /* renamed from: v, reason: collision with root package name */
    public o2.c<Boolean> f5990v = o2.c.t();

    /* renamed from: w, reason: collision with root package name */
    public w9.a<ListenableWorker.a> f5991w = null;

    /* compiled from: WorkerWrapper.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ o2.c f5993f;

        public a(o2.c cVar) {
            this.f5993f = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                l.c().a(j.f5973y, String.format("Starting work for %s", j.this.f5978j.f10829c), new Throwable[0]);
                j jVar = j.this;
                jVar.f5991w = jVar.f5979k.n();
                this.f5993f.r(j.this.f5991w);
            } catch (Throwable th) {
                this.f5993f.q(th);
            }
        }
    }

    /* compiled from: WorkerWrapper.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ o2.c f5995f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f5996g;

        public b(o2.c cVar, String str) {
            this.f5995f = cVar;
            this.f5996g = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            try {
                try {
                    ListenableWorker.a aVar = (ListenableWorker.a) this.f5995f.get();
                    if (aVar == null) {
                        l.c().b(j.f5973y, String.format("%s returned a null result. Treating it as a failure.", j.this.f5978j.f10829c), new Throwable[0]);
                    } else {
                        l.c().a(j.f5973y, String.format("%s returned a %s result.", j.this.f5978j.f10829c, aVar), new Throwable[0]);
                        j.this.f5980l = aVar;
                    }
                } catch (InterruptedException e10) {
                    e = e10;
                    l.c().b(j.f5973y, String.format("%s failed because it threw an exception/error", this.f5996g), e);
                } catch (CancellationException e11) {
                    l.c().d(j.f5973y, String.format("%s was cancelled", this.f5996g), e11);
                } catch (ExecutionException e12) {
                    e = e12;
                    l.c().b(j.f5973y, String.format("%s failed because it threw an exception/error", this.f5996g), e);
                }
            } finally {
                j.this.f();
            }
        }
    }

    /* compiled from: WorkerWrapper.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public Context f5998a;

        /* renamed from: b, reason: collision with root package name */
        public ListenableWorker f5999b;

        /* renamed from: c, reason: collision with root package name */
        public l2.a f6000c;

        /* renamed from: d, reason: collision with root package name */
        public p2.a f6001d;

        /* renamed from: e, reason: collision with root package name */
        public d2.b f6002e;

        /* renamed from: f, reason: collision with root package name */
        public WorkDatabase f6003f;

        /* renamed from: g, reason: collision with root package name */
        public String f6004g;

        /* renamed from: h, reason: collision with root package name */
        public List<e> f6005h;

        /* renamed from: i, reason: collision with root package name */
        public WorkerParameters.a f6006i = new WorkerParameters.a();

        public c(Context context, d2.b bVar, p2.a aVar, l2.a aVar2, WorkDatabase workDatabase, String str) {
            this.f5998a = context.getApplicationContext();
            this.f6001d = aVar;
            this.f6000c = aVar2;
            this.f6002e = bVar;
            this.f6003f = workDatabase;
            this.f6004g = str;
        }

        public j a() {
            return new j(this);
        }

        public c b(WorkerParameters.a aVar) {
            if (aVar != null) {
                this.f6006i = aVar;
            }
            return this;
        }

        public c c(List<e> list) {
            this.f6005h = list;
            return this;
        }
    }

    public j(c cVar) {
        this.f5974f = cVar.f5998a;
        this.f5982n = cVar.f6001d;
        this.f5983o = cVar.f6000c;
        this.f5975g = cVar.f6004g;
        this.f5976h = cVar.f6005h;
        this.f5977i = cVar.f6006i;
        this.f5979k = cVar.f5999b;
        this.f5981m = cVar.f6002e;
        WorkDatabase workDatabase = cVar.f6003f;
        this.f5984p = workDatabase;
        this.f5985q = workDatabase.O();
        this.f5986r = this.f5984p.G();
        this.f5987s = this.f5984p.P();
    }

    public final String a(List<String> list) {
        StringBuilder sb2 = new StringBuilder("Work [ id=");
        sb2.append(this.f5975g);
        sb2.append(", tags={ ");
        boolean z10 = true;
        for (String str : list) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        sb2.append(" } ]");
        return sb2.toString();
    }

    public w9.a<Boolean> b() {
        return this.f5990v;
    }

    public final void c(ListenableWorker.a aVar) {
        if (aVar instanceof ListenableWorker.a.c) {
            l.c().d(f5973y, String.format("Worker result SUCCESS for %s", this.f5989u), new Throwable[0]);
            if (this.f5978j.d()) {
                h();
                return;
            } else {
                m();
                return;
            }
        }
        if (aVar instanceof ListenableWorker.a.b) {
            l.c().d(f5973y, String.format("Worker result RETRY for %s", this.f5989u), new Throwable[0]);
            g();
            return;
        }
        l.c().d(f5973y, String.format("Worker result FAILURE for %s", this.f5989u), new Throwable[0]);
        if (this.f5978j.d()) {
            h();
        } else {
            l();
        }
    }

    public void d() {
        boolean z10;
        this.f5992x = true;
        n();
        w9.a<ListenableWorker.a> aVar = this.f5991w;
        if (aVar != null) {
            z10 = aVar.isDone();
            this.f5991w.cancel(true);
        } else {
            z10 = false;
        }
        ListenableWorker listenableWorker = this.f5979k;
        if (listenableWorker != null && !z10) {
            listenableWorker.o();
        } else {
            l.c().a(f5973y, String.format("WorkSpec %s is already done. Not interrupting.", this.f5978j), new Throwable[0]);
        }
    }

    public final void e(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.f5985q.j(str2) != u.a.CANCELLED) {
                this.f5985q.b(u.a.FAILED, str2);
            }
            linkedList.addAll(this.f5986r.d(str2));
        }
    }

    public void f() {
        if (!n()) {
            this.f5984p.e();
            try {
                u.a j10 = this.f5985q.j(this.f5975g);
                this.f5984p.N().a(this.f5975g);
                if (j10 == null) {
                    i(false);
                } else if (j10 == u.a.RUNNING) {
                    c(this.f5980l);
                } else if (!j10.a()) {
                    g();
                }
                this.f5984p.D();
            } finally {
                this.f5984p.i();
            }
        }
        List<e> list = this.f5976h;
        if (list != null) {
            Iterator<e> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().b(this.f5975g);
            }
            f.b(this.f5981m, this.f5984p, this.f5976h);
        }
    }

    public final void g() {
        this.f5984p.e();
        try {
            this.f5985q.b(u.a.ENQUEUED, this.f5975g);
            this.f5985q.r(this.f5975g, System.currentTimeMillis());
            this.f5985q.f(this.f5975g, -1L);
            this.f5984p.D();
        } finally {
            this.f5984p.i();
            i(true);
        }
    }

    public final void h() {
        this.f5984p.e();
        try {
            this.f5985q.r(this.f5975g, System.currentTimeMillis());
            this.f5985q.b(u.a.ENQUEUED, this.f5975g);
            this.f5985q.m(this.f5975g);
            this.f5985q.f(this.f5975g, -1L);
            this.f5984p.D();
        } finally {
            this.f5984p.i();
            i(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001f A[Catch: all -> 0x0067, TryCatch #0 {all -> 0x0067, blocks: (B:3:0x0005, B:5:0x0013, B:10:0x001f, B:12:0x0028, B:13:0x003e, B:15:0x0042, B:17:0x0046, B:19:0x004c, B:20:0x0053), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0028 A[Catch: all -> 0x0067, TryCatch #0 {all -> 0x0067, blocks: (B:3:0x0005, B:5:0x0013, B:10:0x001f, B:12:0x0028, B:13:0x003e, B:15:0x0042, B:17:0x0046, B:19:0x004c, B:20:0x0053), top: B:2:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(boolean z10) {
        boolean z11;
        ListenableWorker listenableWorker;
        this.f5984p.e();
        try {
            List<String> d10 = this.f5984p.O().d();
            if (d10 != null && !d10.isEmpty()) {
                z11 = false;
                if (z11) {
                    n2.e.a(this.f5974f, RescheduleReceiver.class, false);
                }
                if (z10) {
                    this.f5985q.b(u.a.ENQUEUED, this.f5975g);
                    this.f5985q.f(this.f5975g, -1L);
                }
                if (this.f5978j != null && (listenableWorker = this.f5979k) != null && listenableWorker.i()) {
                    this.f5983o.b(this.f5975g);
                }
                this.f5984p.D();
                this.f5984p.i();
                this.f5990v.p(Boolean.valueOf(z10));
            }
            z11 = true;
            if (z11) {
            }
            if (z10) {
            }
            if (this.f5978j != null) {
                this.f5983o.b(this.f5975g);
            }
            this.f5984p.D();
            this.f5984p.i();
            this.f5990v.p(Boolean.valueOf(z10));
        } catch (Throwable th) {
            this.f5984p.i();
            throw th;
        }
    }

    public final void j() {
        u.a j10 = this.f5985q.j(this.f5975g);
        if (j10 == u.a.RUNNING) {
            l.c().a(f5973y, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f5975g), new Throwable[0]);
            i(true);
        } else {
            l.c().a(f5973y, String.format("Status for %s is %s; not doing any work", this.f5975g, j10), new Throwable[0]);
            i(false);
        }
    }

    public final void k() {
        androidx.work.a b10;
        if (n()) {
            return;
        }
        this.f5984p.e();
        try {
            p l10 = this.f5985q.l(this.f5975g);
            this.f5978j = l10;
            if (l10 == null) {
                l.c().b(f5973y, String.format("Didn't find WorkSpec for id %s", this.f5975g), new Throwable[0]);
                i(false);
                this.f5984p.D();
                return;
            }
            if (l10.f10828b != u.a.ENQUEUED) {
                j();
                this.f5984p.D();
                l.c().a(f5973y, String.format("%s is not in ENQUEUED state. Nothing more to do.", this.f5978j.f10829c), new Throwable[0]);
                return;
            }
            if (l10.d() || this.f5978j.c()) {
                long currentTimeMillis = System.currentTimeMillis();
                p pVar = this.f5978j;
                if (!(pVar.f10840n == 0) && currentTimeMillis < pVar.a()) {
                    l.c().a(f5973y, String.format("Delaying execution for %s because it is being executed before schedule.", this.f5978j.f10829c), new Throwable[0]);
                    i(true);
                    this.f5984p.D();
                    return;
                }
            }
            this.f5984p.D();
            this.f5984p.i();
            if (this.f5978j.d()) {
                b10 = this.f5978j.f10831e;
            } else {
                d2.j b11 = this.f5981m.e().b(this.f5978j.f10830d);
                if (b11 == null) {
                    l.c().b(f5973y, String.format("Could not create Input Merger %s", this.f5978j.f10830d), new Throwable[0]);
                    l();
                    return;
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.f5978j.f10831e);
                    arrayList.addAll(this.f5985q.p(this.f5975g));
                    b10 = b11.b(arrayList);
                }
            }
            WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(this.f5975g), b10, this.f5988t, this.f5977i, this.f5978j.f10837k, this.f5981m.d(), this.f5982n, this.f5981m.l(), new m(this.f5984p, this.f5982n), new n2.l(this.f5984p, this.f5983o, this.f5982n));
            if (this.f5979k == null) {
                this.f5979k = this.f5981m.l().b(this.f5974f, this.f5978j.f10829c, workerParameters);
            }
            ListenableWorker listenableWorker = this.f5979k;
            if (listenableWorker == null) {
                l.c().b(f5973y, String.format("Could not create Worker %s", this.f5978j.f10829c), new Throwable[0]);
                l();
                return;
            }
            if (listenableWorker.k()) {
                l.c().b(f5973y, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.f5978j.f10829c), new Throwable[0]);
                l();
                return;
            }
            this.f5979k.m();
            if (o()) {
                if (n()) {
                    return;
                }
                o2.c t10 = o2.c.t();
                this.f5982n.a().execute(new a(t10));
                t10.g(new b(t10, this.f5989u), this.f5982n.c());
                return;
            }
            j();
        } finally {
            this.f5984p.i();
        }
    }

    public void l() {
        this.f5984p.e();
        try {
            e(this.f5975g);
            this.f5985q.u(this.f5975g, ((ListenableWorker.a.C0057a) this.f5980l).e());
            this.f5984p.D();
        } finally {
            this.f5984p.i();
            i(false);
        }
    }

    public final void m() {
        this.f5984p.e();
        try {
            this.f5985q.b(u.a.SUCCEEDED, this.f5975g);
            this.f5985q.u(this.f5975g, ((ListenableWorker.a.c) this.f5980l).e());
            long currentTimeMillis = System.currentTimeMillis();
            for (String str : this.f5986r.d(this.f5975g)) {
                if (this.f5985q.j(str) == u.a.BLOCKED && this.f5986r.b(str)) {
                    l.c().d(f5973y, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    this.f5985q.b(u.a.ENQUEUED, str);
                    this.f5985q.r(str, currentTimeMillis);
                }
            }
            this.f5984p.D();
        } finally {
            this.f5984p.i();
            i(false);
        }
    }

    public final boolean n() {
        if (!this.f5992x) {
            return false;
        }
        l.c().a(f5973y, String.format("Work interrupted for %s", this.f5989u), new Throwable[0]);
        if (this.f5985q.j(this.f5975g) == null) {
            i(false);
        } else {
            i(!r0.a());
        }
        return true;
    }

    public final boolean o() {
        this.f5984p.e();
        try {
            boolean z10 = true;
            if (this.f5985q.j(this.f5975g) == u.a.ENQUEUED) {
                this.f5985q.b(u.a.RUNNING, this.f5975g);
                this.f5985q.q(this.f5975g);
            } else {
                z10 = false;
            }
            this.f5984p.D();
            return z10;
        } finally {
            this.f5984p.i();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> b10 = this.f5987s.b(this.f5975g);
        this.f5988t = b10;
        this.f5989u = a(b10);
        k();
    }
}
