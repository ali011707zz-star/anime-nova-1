package androidx.work;

import ac.d;
import android.content.Context;
import androidx.work.ListenableWorker;
import cc.f;
import cc.k;
import ic.p;
import jc.l;
import o2.c;
import rc.c2;
import rc.d0;
import rc.g1;
import rc.h2;
import rc.l0;
import rc.q0;
import rc.r0;

/* compiled from: CoroutineWorker.kt */
/* loaded from: classes.dex */
public abstract class CoroutineWorker extends ListenableWorker {

    /* renamed from: k, reason: collision with root package name */
    public final d0 f3277k;

    /* renamed from: l, reason: collision with root package name */
    public final c<ListenableWorker.a> f3278l;

    /* renamed from: m, reason: collision with root package name */
    public final l0 f3279m;

    /* compiled from: CoroutineWorker.kt */
    /* loaded from: classes.dex */
    public static final class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (CoroutineWorker.this.r().isCancelled()) {
                c2.a.a(CoroutineWorker.this.s(), null, 1, null);
            }
        }
    }

    /* compiled from: CoroutineWorker.kt */
    @f(c = "androidx.work.CoroutineWorker$startWork$1", f = "CoroutineWorker.kt", l = {69}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f3281f;

        public b(d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            l.f(dVar, "completion");
            return new b(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f3281f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    CoroutineWorker coroutineWorker = CoroutineWorker.this;
                    this.f3281f = 1;
                    obj = coroutineWorker.p(this);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                CoroutineWorker.this.r().p((ListenableWorker.a) obj);
            } catch (Throwable th) {
                CoroutineWorker.this.r().q(th);
            }
            return vb.p.f15031a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        d0 b10;
        l.f(context, "appContext");
        l.f(workerParameters, "params");
        b10 = h2.b(null, 1, null);
        this.f3277k = b10;
        c<ListenableWorker.a> t10 = c.t();
        l.e(t10, "SettableFuture.create()");
        this.f3278l = t10;
        a aVar = new a();
        p2.a g10 = g();
        l.e(g10, "taskExecutor");
        t10.g(aVar, g10.c());
        this.f3279m = g1.a();
    }

    @Override // androidx.work.ListenableWorker
    public final void l() {
        super.l();
        this.f3278l.cancel(false);
    }

    @Override // androidx.work.ListenableWorker
    public final w9.a<ListenableWorker.a> n() {
        rc.k.d(r0.a(q().plus(this.f3277k)), null, null, new b(null), 3, null);
        return this.f3278l;
    }

    public abstract Object p(d<? super ListenableWorker.a> dVar);

    public l0 q() {
        return this.f3279m;
    }

    public final c<ListenableWorker.a> r() {
        return this.f3278l;
    }

    public final d0 s() {
        return this.f3277k;
    }
}
