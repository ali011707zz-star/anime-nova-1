package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import d2.l;
import e2.i;
import i2.c;
import i2.d;
import java.util.Collections;
import java.util.List;
import m2.p;

/* loaded from: classes.dex */
public class ConstraintTrackingWorker extends ListenableWorker implements c {

    /* renamed from: p, reason: collision with root package name */
    public static final String f3411p = l.f("ConstraintTrkngWrkr");

    /* renamed from: k, reason: collision with root package name */
    public WorkerParameters f3412k;

    /* renamed from: l, reason: collision with root package name */
    public final Object f3413l;

    /* renamed from: m, reason: collision with root package name */
    public volatile boolean f3414m;

    /* renamed from: n, reason: collision with root package name */
    public o2.c<ListenableWorker.a> f3415n;

    /* renamed from: o, reason: collision with root package name */
    public ListenableWorker f3416o;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConstraintTrackingWorker.this.s();
        }
    }

    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ w9.a f3418f;

        public b(w9.a aVar) {
            this.f3418f = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ConstraintTrackingWorker.this.f3413l) {
                if (ConstraintTrackingWorker.this.f3414m) {
                    ConstraintTrackingWorker.this.r();
                } else {
                    ConstraintTrackingWorker.this.f3415n.r(this.f3418f);
                }
            }
        }
    }

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f3412k = workerParameters;
        this.f3413l = new Object();
        this.f3414m = false;
        this.f3415n = o2.c.t();
    }

    @Override // i2.c
    public void c(List<String> list) {
        l.c().a(f3411p, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.f3413l) {
            this.f3414m = true;
        }
    }

    @Override // i2.c
    public void d(List<String> list) {
    }

    @Override // androidx.work.ListenableWorker
    public p2.a g() {
        return i.r(a()).x();
    }

    @Override // androidx.work.ListenableWorker
    public boolean i() {
        ListenableWorker listenableWorker = this.f3416o;
        return listenableWorker != null && listenableWorker.i();
    }

    @Override // androidx.work.ListenableWorker
    public void l() {
        super.l();
        ListenableWorker listenableWorker = this.f3416o;
        if (listenableWorker == null || listenableWorker.j()) {
            return;
        }
        this.f3416o.o();
    }

    @Override // androidx.work.ListenableWorker
    public w9.a<ListenableWorker.a> n() {
        b().execute(new a());
        return this.f3415n;
    }

    public WorkDatabase p() {
        return i.r(a()).w();
    }

    public void q() {
        this.f3415n.p(ListenableWorker.a.a());
    }

    public void r() {
        this.f3415n.p(ListenableWorker.a.b());
    }

    public void s() {
        String k10 = f().k("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        if (TextUtils.isEmpty(k10)) {
            l.c().b(f3411p, "No worker to delegate to.", new Throwable[0]);
            q();
            return;
        }
        ListenableWorker b10 = h().b(a(), k10, this.f3412k);
        this.f3416o = b10;
        if (b10 == null) {
            l.c().a(f3411p, "No worker to delegate to.", new Throwable[0]);
            q();
            return;
        }
        p l10 = p().O().l(e().toString());
        if (l10 == null) {
            q();
            return;
        }
        d dVar = new d(a(), g(), this);
        dVar.d(Collections.singletonList(l10));
        if (dVar.c(e().toString())) {
            l.c().a(f3411p, String.format("Constraints met for delegate %s", k10), new Throwable[0]);
            try {
                w9.a<ListenableWorker.a> n10 = this.f3416o.n();
                n10.g(new b(n10), b());
                return;
            } catch (Throwable th) {
                l c10 = l.c();
                String str = f3411p;
                c10.a(str, String.format("Delegated worker %s threw exception in startWork.", k10), th);
                synchronized (this.f3413l) {
                    if (this.f3414m) {
                        l.c().a(str, "Constraints were unmet, Retrying.", new Throwable[0]);
                        r();
                    } else {
                        q();
                    }
                    return;
                }
            }
        }
        l.c().a(f3411p, String.format("Constraints not met for delegate %s. Requesting retry.", k10), new Throwable[0]);
        r();
    }
}
