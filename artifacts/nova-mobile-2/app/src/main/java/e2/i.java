package e2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.lifecycle.LiveData;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.ForceStopRunnable;
import d2.b;
import d2.l;
import d2.n;
import d2.o;
import d2.r;
import d2.t;
import d2.u;
import d2.v;
import d2.w;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import m2.p;

/* compiled from: WorkManagerImpl.java */
/* loaded from: classes.dex */
public class i extends v {

    /* renamed from: k, reason: collision with root package name */
    public static final String f5958k = l.f("WorkManagerImpl");

    /* renamed from: l, reason: collision with root package name */
    public static i f5959l = null;

    /* renamed from: m, reason: collision with root package name */
    public static i f5960m = null;

    /* renamed from: n, reason: collision with root package name */
    public static final Object f5961n = new Object();

    /* renamed from: a, reason: collision with root package name */
    public Context f5962a;

    /* renamed from: b, reason: collision with root package name */
    public d2.b f5963b;

    /* renamed from: c, reason: collision with root package name */
    public WorkDatabase f5964c;

    /* renamed from: d, reason: collision with root package name */
    public p2.a f5965d;

    /* renamed from: e, reason: collision with root package name */
    public List<e> f5966e;

    /* renamed from: f, reason: collision with root package name */
    public d f5967f;

    /* renamed from: g, reason: collision with root package name */
    public n2.f f5968g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f5969h;

    /* renamed from: i, reason: collision with root package name */
    public BroadcastReceiver.PendingResult f5970i;

    /* renamed from: j, reason: collision with root package name */
    public volatile q2.a f5971j;

    /* compiled from: WorkManagerImpl.java */
    /* loaded from: classes.dex */
    public class a implements n.a<List<p.c>, u> {
        public a() {
        }

        @Override // n.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public u apply(List<p.c> list) {
            if (list == null || list.size() <= 0) {
                return null;
            }
            return list.get(0).a();
        }
    }

    public i(Context context, d2.b bVar, p2.a aVar) {
        this(context, bVar, aVar, context.getResources().getBoolean(r.f5588a));
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0016, code lost:
    
        r4 = r4.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001c, code lost:
    
        if (e2.i.f5960m != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001e, code lost:
    
        e2.i.f5960m = new e2.i(r4, r5, new p2.b(r5.k()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
    
        e2.i.f5959l = e2.i.f5960m;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void k(Context context, d2.b bVar) {
        synchronized (f5961n) {
            i iVar = f5959l;
            if (iVar != null && f5960m != null) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
            }
        }
    }

    @Deprecated
    public static i q() {
        synchronized (f5961n) {
            i iVar = f5959l;
            if (iVar != null) {
                return iVar;
            }
            return f5960m;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static i r(Context context) {
        i q10;
        synchronized (f5961n) {
            q10 = q();
            if (q10 == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext instanceof b.InterfaceC0097b) {
                    k(applicationContext, ((b.InterfaceC0097b) applicationContext).a());
                    q10 = r(applicationContext);
                } else {
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
            }
        }
        return q10;
    }

    public void A() {
        if (Build.VERSION.SDK_INT >= 23) {
            h2.b.a(o());
        }
        w().O().v();
        f.b(p(), w(), v());
    }

    public void B(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (f5961n) {
            this.f5970i = pendingResult;
            if (this.f5969h) {
                pendingResult.finish();
                this.f5970i = null;
            }
        }
    }

    public void C(String str) {
        D(str, null);
    }

    public void D(String str, WorkerParameters.a aVar) {
        this.f5965d.b(new n2.i(this, str, aVar));
    }

    public void E(String str) {
        this.f5965d.b(new n2.j(this, str, true));
    }

    public void F(String str) {
        this.f5965d.b(new n2.j(this, str, false));
    }

    public final void G() {
        try {
            this.f5971j = (q2.a) Class.forName("androidx.work.multiprocess.RemoteWorkManagerClient").getConstructor(Context.class, i.class).newInstance(this.f5962a, this);
        } catch (Throwable th) {
            l.c().a(f5958k, "Unable to initialize multi-process support", th);
        }
    }

    @Override // d2.v
    public t b(List<n> list) {
        if (!list.isEmpty()) {
            return new g(this, list);
        }
        throw new IllegalArgumentException("beginWith needs at least one OneTimeWorkRequest.");
    }

    @Override // d2.v
    public o c(String str) {
        n2.a d10 = n2.a.d(str, this);
        this.f5965d.b(d10);
        return d10.e();
    }

    @Override // d2.v
    public o e(List<? extends w> list) {
        if (!list.isEmpty()) {
            return new g(this, list).a();
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    @Override // d2.v
    public o f(String str, d2.e eVar, d2.p pVar) {
        return n(str, eVar, pVar).a();
    }

    @Override // d2.v
    public o h(String str, d2.f fVar, List<n> list) {
        return new g(this, str, fVar, list).a();
    }

    @Override // d2.v
    public LiveData<u> j(UUID uuid) {
        return n2.d.a(this.f5964c.O().n(Collections.singletonList(uuid.toString())), new a(), this.f5965d);
    }

    public o l(UUID uuid) {
        n2.a b10 = n2.a.b(uuid, this);
        this.f5965d.b(b10);
        return b10.e();
    }

    public List<e> m(Context context, d2.b bVar, p2.a aVar) {
        return Arrays.asList(f.a(context, this), new f2.b(context, bVar, aVar, this));
    }

    public g n(String str, d2.e eVar, d2.p pVar) {
        d2.f fVar;
        if (eVar == d2.e.KEEP) {
            fVar = d2.f.KEEP;
        } else {
            fVar = d2.f.REPLACE;
        }
        return new g(this, str, fVar, Collections.singletonList(pVar));
    }

    public Context o() {
        return this.f5962a;
    }

    public d2.b p() {
        return this.f5963b;
    }

    public n2.f s() {
        return this.f5968g;
    }

    public d t() {
        return this.f5967f;
    }

    public q2.a u() {
        if (this.f5971j == null) {
            synchronized (f5961n) {
                if (this.f5971j == null) {
                    G();
                    if (this.f5971j == null && !TextUtils.isEmpty(this.f5963b.b())) {
                        throw new IllegalStateException("Invalid multiprocess configuration. Define an `implementation` dependency on :work:work-multiprocess library");
                    }
                }
            }
        }
        return this.f5971j;
    }

    public List<e> v() {
        return this.f5966e;
    }

    public WorkDatabase w() {
        return this.f5964c;
    }

    public p2.a x() {
        return this.f5965d;
    }

    public final void y(Context context, d2.b bVar, p2.a aVar, WorkDatabase workDatabase, List<e> list, d dVar) {
        Context applicationContext = context.getApplicationContext();
        this.f5962a = applicationContext;
        this.f5963b = bVar;
        this.f5965d = aVar;
        this.f5964c = workDatabase;
        this.f5966e = list;
        this.f5967f = dVar;
        this.f5968g = new n2.f(workDatabase);
        this.f5969h = false;
        if (Build.VERSION.SDK_INT >= 24 && applicationContext.isDeviceProtectedStorage()) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        this.f5965d.b(new ForceStopRunnable(applicationContext, this));
    }

    public void z() {
        synchronized (f5961n) {
            this.f5969h = true;
            BroadcastReceiver.PendingResult pendingResult = this.f5970i;
            if (pendingResult != null) {
                pendingResult.finish();
                this.f5970i = null;
            }
        }
    }

    public i(Context context, d2.b bVar, p2.a aVar, boolean z10) {
        this(context, bVar, aVar, WorkDatabase.F(context.getApplicationContext(), aVar.c(), z10));
    }

    public i(Context context, d2.b bVar, p2.a aVar, WorkDatabase workDatabase) {
        Context applicationContext = context.getApplicationContext();
        l.e(new l.a(bVar.i()));
        List<e> m10 = m(applicationContext, bVar, aVar);
        y(context, bVar, aVar, workDatabase, m10, new d(context, bVar, aVar, workDatabase, m10));
    }
}
