package sc;

import ac.g;
import android.os.Handler;
import android.os.Looper;
import ic.l;
import java.util.concurrent.CancellationException;
import jc.m;
import rc.f2;
import rc.g1;
import rc.i1;
import rc.o;
import rc.p2;
import vb.p;

/* compiled from: HandlerDispatcher.kt */
/* loaded from: classes2.dex */
public final class a extends sc.b {
    private volatile a _immediate;

    /* renamed from: g, reason: collision with root package name */
    public final Handler f13882g;

    /* renamed from: h, reason: collision with root package name */
    public final String f13883h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f13884i;

    /* renamed from: j, reason: collision with root package name */
    public final a f13885j;

    /* compiled from: Job.kt */
    /* renamed from: sc.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0343a implements i1 {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Runnable f13887g;

        public C0343a(Runnable runnable) {
            this.f13887g = runnable;
        }

        @Override // rc.i1
        public void e() {
            a.this.f13882g.removeCallbacks(this.f13887g);
        }
    }

    /* compiled from: Runnable.kt */
    /* loaded from: classes2.dex */
    public static final class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ o f13888f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ a f13889g;

        public b(o oVar, a aVar) {
            this.f13888f = oVar;
            this.f13889g = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f13888f.l(this.f13889g, p.f15031a);
        }
    }

    /* compiled from: HandlerDispatcher.kt */
    /* loaded from: classes2.dex */
    public static final class c extends m implements l<Throwable, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Runnable f13891g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Runnable runnable) {
            super(1);
            this.f13891g = runnable;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(Throwable th) {
            invoke2(th);
            return p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            a.this.f13882g.removeCallbacks(this.f13891g);
        }
    }

    public a(Handler handler, String str, boolean z10) {
        super(null);
        this.f13882g = handler;
        this.f13883h = str;
        this.f13884i = z10;
        this._immediate = z10 ? this : null;
        a aVar = this._immediate;
        if (aVar == null) {
            aVar = new a(handler, str, true);
            this._immediate = aVar;
            p pVar = p.f15031a;
        }
        this.f13885j = aVar;
    }

    @Override // rc.l0
    public void H0(g gVar, Runnable runnable) {
        if (this.f13882g.post(runnable)) {
            return;
        }
        N0(gVar, runnable);
    }

    @Override // rc.l0
    public boolean J0(g gVar) {
        return (this.f13884i && jc.l.a(Looper.myLooper(), this.f13882g.getLooper())) ? false : true;
    }

    @Override // rc.a1
    public void L(long j10, o<? super p> oVar) {
        b bVar = new b(oVar, this);
        if (this.f13882g.postDelayed(bVar, nc.g.d(j10, 4611686018427387903L))) {
            oVar.n(new c(bVar));
        } else {
            N0(oVar.getContext(), bVar);
        }
    }

    public final void N0(g gVar, Runnable runnable) {
        f2.c(gVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        g1.b().H0(gVar, runnable);
    }

    @Override // rc.n2
    /* renamed from: O0, reason: merged with bridge method [inline-methods] */
    public a K0() {
        return this.f13885j;
    }

    public boolean equals(Object obj) {
        return (obj instanceof a) && ((a) obj).f13882g == this.f13882g;
    }

    public int hashCode() {
        return System.identityHashCode(this.f13882g);
    }

    @Override // rc.n2, rc.l0
    public String toString() {
        String L0 = L0();
        if (L0 != null) {
            return L0;
        }
        String str = this.f13883h;
        if (str == null) {
            str = this.f13882g.toString();
        }
        return this.f13884i ? jc.l.m(str, ".immediate") : str;
    }

    @Override // sc.b, rc.a1
    public i1 w0(long j10, Runnable runnable, g gVar) {
        if (this.f13882g.postDelayed(runnable, nc.g.d(j10, 4611686018427387903L))) {
            return new C0343a(runnable);
        }
        N0(gVar, runnable);
        return p2.f13320f;
    }

    public /* synthetic */ a(Handler handler, String str, int i10, jc.g gVar) {
        this(handler, (i10 & 2) != 0 ? null : str);
    }

    public a(Handler handler, String str) {
        this(handler, str, false);
    }
}
