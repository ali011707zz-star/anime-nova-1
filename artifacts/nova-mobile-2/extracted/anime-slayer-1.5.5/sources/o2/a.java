package o2;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: AbstractFuture.java */
/* loaded from: classes.dex */
public abstract class a<V> implements w9.a<V> {

    /* renamed from: i, reason: collision with root package name */
    public static final boolean f11646i = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: j, reason: collision with root package name */
    public static final Logger f11647j = Logger.getLogger(a.class.getName());

    /* renamed from: k, reason: collision with root package name */
    public static final b f11648k;

    /* renamed from: l, reason: collision with root package name */
    public static final Object f11649l;

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f11650f;

    /* renamed from: g, reason: collision with root package name */
    public volatile e f11651g;

    /* renamed from: h, reason: collision with root package name */
    public volatile i f11652h;

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static abstract class b {
        public b() {
        }

        public abstract boolean a(a<?> aVar, e eVar, e eVar2);

        public abstract boolean b(a<?> aVar, Object obj, Object obj2);

        public abstract boolean c(a<?> aVar, i iVar, i iVar2);

        public abstract void d(i iVar, i iVar2);

        public abstract void e(i iVar, Thread thread);
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: c, reason: collision with root package name */
        public static final c f11653c;

        /* renamed from: d, reason: collision with root package name */
        public static final c f11654d;

        /* renamed from: a, reason: collision with root package name */
        public final boolean f11655a;

        /* renamed from: b, reason: collision with root package name */
        public final Throwable f11656b;

        static {
            if (a.f11646i) {
                f11654d = null;
                f11653c = null;
            } else {
                f11654d = new c(false, null);
                f11653c = new c(true, null);
            }
        }

        public c(boolean z10, Throwable th) {
            this.f11655a = z10;
            this.f11656b = th;
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: b, reason: collision with root package name */
        public static final d f11657b = new d(new C0288a("Failure occurred while trying to finish a future."));

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f11658a;

        /* compiled from: AbstractFuture.java */
        /* renamed from: o2.a$d$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0288a extends Throwable {
            public C0288a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        public d(Throwable th) {
            this.f11658a = (Throwable) a.d(th);
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: d, reason: collision with root package name */
        public static final e f11659d = new e(null, null);

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f11660a;

        /* renamed from: b, reason: collision with root package name */
        public final Executor f11661b;

        /* renamed from: c, reason: collision with root package name */
        public e f11662c;

        public e(Runnable runnable, Executor executor) {
            this.f11660a = runnable;
            this.f11661b = executor;
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class f extends b {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<i, Thread> f11663a;

        /* renamed from: b, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<i, i> f11664b;

        /* renamed from: c, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<a, i> f11665c;

        /* renamed from: d, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<a, e> f11666d;

        /* renamed from: e, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater<a, Object> f11667e;

        public f(AtomicReferenceFieldUpdater<i, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<i, i> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<a, i> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<a, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f11663a = atomicReferenceFieldUpdater;
            this.f11664b = atomicReferenceFieldUpdater2;
            this.f11665c = atomicReferenceFieldUpdater3;
            this.f11666d = atomicReferenceFieldUpdater4;
            this.f11667e = atomicReferenceFieldUpdater5;
        }

        @Override // o2.a.b
        public boolean a(a<?> aVar, e eVar, e eVar2) {
            return ad.c.a(this.f11666d, aVar, eVar, eVar2);
        }

        @Override // o2.a.b
        public boolean b(a<?> aVar, Object obj, Object obj2) {
            return ad.c.a(this.f11667e, aVar, obj, obj2);
        }

        @Override // o2.a.b
        public boolean c(a<?> aVar, i iVar, i iVar2) {
            return ad.c.a(this.f11665c, aVar, iVar, iVar2);
        }

        @Override // o2.a.b
        public void d(i iVar, i iVar2) {
            this.f11664b.lazySet(iVar, iVar2);
        }

        @Override // o2.a.b
        public void e(i iVar, Thread thread) {
            this.f11663a.lazySet(iVar, thread);
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class g<V> implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final a<V> f11668f;

        /* renamed from: g, reason: collision with root package name */
        public final w9.a<? extends V> f11669g;

        public g(a<V> aVar, w9.a<? extends V> aVar2) {
            this.f11668f = aVar;
            this.f11669g = aVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f11668f.f11650f != this) {
                return;
            }
            if (a.f11648k.b(this.f11668f, this, a.j(this.f11669g))) {
                a.f(this.f11668f);
            }
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class h extends b {
        public h() {
            super();
        }

        @Override // o2.a.b
        public boolean a(a<?> aVar, e eVar, e eVar2) {
            synchronized (aVar) {
                if (aVar.f11651g != eVar) {
                    return false;
                }
                aVar.f11651g = eVar2;
                return true;
            }
        }

        @Override // o2.a.b
        public boolean b(a<?> aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                if (aVar.f11650f != obj) {
                    return false;
                }
                aVar.f11650f = obj2;
                return true;
            }
        }

        @Override // o2.a.b
        public boolean c(a<?> aVar, i iVar, i iVar2) {
            synchronized (aVar) {
                if (aVar.f11652h != iVar) {
                    return false;
                }
                aVar.f11652h = iVar2;
                return true;
            }
        }

        @Override // o2.a.b
        public void d(i iVar, i iVar2) {
            iVar.f11672b = iVar2;
        }

        @Override // o2.a.b
        public void e(i iVar, Thread thread) {
            iVar.f11671a = thread;
        }
    }

    /* compiled from: AbstractFuture.java */
    /* loaded from: classes.dex */
    public static final class i {

        /* renamed from: c, reason: collision with root package name */
        public static final i f11670c = new i(false);

        /* renamed from: a, reason: collision with root package name */
        public volatile Thread f11671a;

        /* renamed from: b, reason: collision with root package name */
        public volatile i f11672b;

        public i(boolean z10) {
        }

        public void a(i iVar) {
            a.f11648k.d(this, iVar);
        }

        public void b() {
            Thread thread = this.f11671a;
            if (thread != null) {
                this.f11671a = null;
                LockSupport.unpark(thread);
            }
        }

        public i() {
            a.f11648k.e(this, Thread.currentThread());
        }
    }

    static {
        b hVar;
        try {
            hVar = new f(AtomicReferenceFieldUpdater.newUpdater(i.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(i.class, i.class, "b"), AtomicReferenceFieldUpdater.newUpdater(a.class, i.class, "h"), AtomicReferenceFieldUpdater.newUpdater(a.class, e.class, "g"), AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "f"));
            th = null;
        } catch (Throwable th) {
            th = th;
            hVar = new h();
        }
        f11648k = hVar;
        if (th != null) {
            f11647j.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f11649l = new Object();
    }

    public static CancellationException c(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    public static <T> T d(T t10) {
        t10.getClass();
        return t10;
    }

    public static void f(a<?> aVar) {
        e eVar = null;
        while (true) {
            aVar.n();
            aVar.b();
            e e10 = aVar.e(eVar);
            while (e10 != null) {
                eVar = e10.f11662c;
                Runnable runnable = e10.f11660a;
                if (runnable instanceof g) {
                    g gVar = (g) runnable;
                    aVar = gVar.f11668f;
                    if (aVar.f11650f == gVar) {
                        if (f11648k.b(aVar, gVar, j(gVar.f11669g))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    h(runnable, e10.f11661b);
                }
                e10 = eVar;
            }
            return;
        }
    }

    public static void h(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            f11647j.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e10);
        }
    }

    public static Object j(w9.a<?> aVar) {
        if (aVar instanceof a) {
            Object obj = ((a) aVar).f11650f;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            return cVar.f11655a ? cVar.f11656b != null ? new c(false, cVar.f11656b) : c.f11654d : obj;
        }
        boolean isCancelled = aVar.isCancelled();
        if ((!f11646i) & isCancelled) {
            return c.f11654d;
        }
        try {
            Object k10 = k(aVar);
            return k10 == null ? f11649l : k10;
        } catch (CancellationException e10) {
            if (!isCancelled) {
                return new d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + aVar, e10));
            }
            return new c(false, e10);
        } catch (ExecutionException e11) {
            return new d(e11.getCause());
        } catch (Throwable th) {
            return new d(th);
        }
    }

    public static <V> V k(Future<V> future) throws ExecutionException {
        V v10;
        boolean z10 = false;
        while (true) {
            try {
                v10 = future.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return v10;
    }

    public final void a(StringBuilder sb2) {
        try {
            Object k10 = k(this);
            sb2.append("SUCCESS, result=[");
            sb2.append(s(k10));
            sb2.append("]");
        } catch (CancellationException unused) {
            sb2.append("CANCELLED");
        } catch (RuntimeException e10) {
            sb2.append("UNKNOWN, cause=[");
            sb2.append(e10.getClass());
            sb2.append(" thrown from get()]");
        } catch (ExecutionException e11) {
            sb2.append("FAILURE, cause=[");
            sb2.append(e11.getCause());
            sb2.append("]");
        }
    }

    public void b() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        c cVar;
        Object obj = this.f11650f;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        if (f11646i) {
            cVar = new c(z10, new CancellationException("Future.cancel() was called."));
        } else if (z10) {
            cVar = c.f11653c;
        } else {
            cVar = c.f11654d;
        }
        boolean z11 = false;
        a<V> aVar = this;
        while (true) {
            if (f11648k.b(aVar, obj, cVar)) {
                if (z10) {
                    aVar.l();
                }
                f(aVar);
                if (!(obj instanceof g)) {
                    return true;
                }
                w9.a<? extends V> aVar2 = ((g) obj).f11669g;
                if (aVar2 instanceof a) {
                    aVar = (a) aVar2;
                    obj = aVar.f11650f;
                    if (!(obj == null) && !(obj instanceof g)) {
                        return true;
                    }
                    z11 = true;
                } else {
                    aVar2.cancel(z10);
                    return true;
                }
            } else {
                obj = aVar.f11650f;
                if (!(obj instanceof g)) {
                    return z11;
                }
            }
        }
    }

    public final e e(e eVar) {
        e eVar2;
        do {
            eVar2 = this.f11651g;
        } while (!f11648k.a(this, eVar2, e.f11659d));
        e eVar3 = eVar;
        e eVar4 = eVar2;
        while (eVar4 != null) {
            e eVar5 = eVar4.f11662c;
            eVar4.f11662c = eVar3;
            eVar3 = eVar4;
            eVar4 = eVar5;
        }
        return eVar3;
    }

    @Override // w9.a
    public final void g(Runnable runnable, Executor executor) {
        d(runnable);
        d(executor);
        e eVar = this.f11651g;
        if (eVar != e.f11659d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.f11662c = eVar;
                if (f11648k.a(this, eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.f11651g;
                }
            } while (eVar != e.f11659d);
        }
        h(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final V get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        long nanos = timeUnit.toNanos(j10);
        if (!Thread.interrupted()) {
            Object obj = this.f11650f;
            if ((obj != null) & (!(obj instanceof g))) {
                return i(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                i iVar = this.f11652h;
                if (iVar != i.f11670c) {
                    i iVar2 = new i();
                    do {
                        iVar2.a(iVar);
                        if (f11648k.c(this, iVar, iVar2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f11650f;
                                    if ((obj2 != null) & (!(obj2 instanceof g))) {
                                        return i(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    o(iVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            o(iVar2);
                        } else {
                            iVar = this.f11652h;
                        }
                    } while (iVar != i.f11670c);
                }
                return i(this.f11650f);
            }
            while (nanos > 0) {
                Object obj3 = this.f11650f;
                if ((obj3 != null) & (!(obj3 instanceof g))) {
                    return i(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String aVar = toString();
            String timeUnit2 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = timeUnit2.toLowerCase(locale);
            String str = "Waited " + j10 + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String str2 = str + " (plus ";
                long j11 = -nanos;
                long convert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
                long nanos2 = j11 - timeUnit.toNanos(convert);
                boolean z10 = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String str3 = str2 + convert + " " + lowerCase;
                    if (z10) {
                        str3 = str3 + ",";
                    }
                    str2 = str3 + " ";
                }
                if (z10) {
                    str2 = str2 + nanos2 + " nanoseconds ";
                }
                str = str2 + "delay)";
            }
            if (isDone()) {
                throw new TimeoutException(str + " but future completed as timeout expired");
            }
            throw new TimeoutException(str + " for " + aVar);
        }
        throw new InterruptedException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V i(Object obj) throws ExecutionException {
        if (!(obj instanceof c)) {
            if (!(obj instanceof d)) {
                if (obj == f11649l) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((d) obj).f11658a);
        }
        throw c("Task was cancelled.", ((c) obj).f11656b);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f11650f instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof g)) & (this.f11650f != null);
    }

    public void l() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String m() {
        Object obj = this.f11650f;
        if (obj instanceof g) {
            return "setFuture=[" + s(((g) obj).f11669g) + "]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public final void n() {
        i iVar;
        do {
            iVar = this.f11652h;
        } while (!f11648k.c(this, iVar, i.f11670c));
        while (iVar != null) {
            iVar.b();
            iVar = iVar.f11672b;
        }
    }

    public final void o(i iVar) {
        iVar.f11671a = null;
        while (true) {
            i iVar2 = this.f11652h;
            if (iVar2 == i.f11670c) {
                return;
            }
            i iVar3 = null;
            while (iVar2 != null) {
                i iVar4 = iVar2.f11672b;
                if (iVar2.f11671a != null) {
                    iVar3 = iVar2;
                } else if (iVar3 != null) {
                    iVar3.f11672b = iVar4;
                    if (iVar3.f11671a == null) {
                        break;
                    }
                } else if (!f11648k.c(this, iVar2, iVar4)) {
                    break;
                }
                iVar2 = iVar4;
            }
            return;
        }
    }

    public boolean p(V v10) {
        if (v10 == null) {
            v10 = (V) f11649l;
        }
        if (!f11648k.b(this, null, v10)) {
            return false;
        }
        f(this);
        return true;
    }

    public boolean q(Throwable th) {
        if (!f11648k.b(this, null, new d((Throwable) d(th)))) {
            return false;
        }
        f(this);
        return true;
    }

    public boolean r(w9.a<? extends V> aVar) {
        d dVar;
        d(aVar);
        Object obj = this.f11650f;
        if (obj == null) {
            if (aVar.isDone()) {
                if (!f11648k.b(this, null, j(aVar))) {
                    return false;
                }
                f(this);
                return true;
            }
            g gVar = new g(this, aVar);
            if (f11648k.b(this, null, gVar)) {
                try {
                    aVar.g(gVar, o2.b.INSTANCE);
                } catch (Throwable th) {
                    try {
                        dVar = new d(th);
                    } catch (Throwable unused) {
                        dVar = d.f11657b;
                    }
                    f11648k.b(this, gVar, dVar);
                }
                return true;
            }
            obj = this.f11650f;
        }
        if (obj instanceof c) {
            aVar.cancel(((c) obj).f11655a);
        }
        return false;
    }

    public final String s(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("[status=");
        if (isCancelled()) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            a(sb2);
        } else {
            try {
                str = m();
            } catch (RuntimeException e10) {
                str = "Exception thrown from implementation: " + e10.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb2.append("PENDING, info=[");
                sb2.append(str);
                sb2.append("]");
            } else if (isDone()) {
                a(sb2);
            } else {
                sb2.append("PENDING");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f11650f;
            if ((obj2 != null) & (!(obj2 instanceof g))) {
                return i(obj2);
            }
            i iVar = this.f11652h;
            if (iVar != i.f11670c) {
                i iVar2 = new i();
                do {
                    iVar2.a(iVar);
                    if (f11648k.c(this, iVar, iVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f11650f;
                            } else {
                                o(iVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return i(obj);
                    }
                    iVar = this.f11652h;
                } while (iVar != i.f11670c);
            }
            return i(this.f11650f);
        }
        throw new InterruptedException();
    }
}
