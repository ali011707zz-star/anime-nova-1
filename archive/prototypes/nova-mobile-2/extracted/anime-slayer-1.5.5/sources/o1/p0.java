package o1;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Looper;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import r1.h;

/* compiled from: RoomDatabase.java */
/* loaded from: classes.dex */
public abstract class p0 {

    /* renamed from: a, reason: collision with root package name */
    @Deprecated
    public volatile r1.g f11554a;

    /* renamed from: b, reason: collision with root package name */
    public Executor f11555b;

    /* renamed from: c, reason: collision with root package name */
    public Executor f11556c;

    /* renamed from: d, reason: collision with root package name */
    public r1.h f11557d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f11559f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f11560g;

    /* renamed from: h, reason: collision with root package name */
    @Deprecated
    public List<b> f11561h;

    /* renamed from: k, reason: collision with root package name */
    public o1.a f11564k;

    /* renamed from: j, reason: collision with root package name */
    public final ReentrantReadWriteLock f11563j = new ReentrantReadWriteLock();

    /* renamed from: l, reason: collision with root package name */
    public final ThreadLocal<Integer> f11565l = new ThreadLocal<>();

    /* renamed from: m, reason: collision with root package name */
    public final Map<String, Object> f11566m = Collections.synchronizedMap(new HashMap());

    /* renamed from: e, reason: collision with root package name */
    public final androidx.room.c f11558e = g();

    /* renamed from: n, reason: collision with root package name */
    public final Map<Class<?>, Object> f11567n = new HashMap();

    /* renamed from: i, reason: collision with root package name */
    public Map<Class<? extends p1.a>, p1.a> f11562i = new HashMap();

    /* compiled from: RoomDatabase.java */
    /* loaded from: classes.dex */
    public static class a<T extends p0> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<T> f11568a;

        /* renamed from: b, reason: collision with root package name */
        public final String f11569b;

        /* renamed from: c, reason: collision with root package name */
        public final Context f11570c;

        /* renamed from: d, reason: collision with root package name */
        public ArrayList<b> f11571d;

        /* renamed from: e, reason: collision with root package name */
        public e f11572e;

        /* renamed from: f, reason: collision with root package name */
        public f f11573f;

        /* renamed from: g, reason: collision with root package name */
        public Executor f11574g;

        /* renamed from: h, reason: collision with root package name */
        public List<Object> f11575h;

        /* renamed from: i, reason: collision with root package name */
        public List<p1.a> f11576i;

        /* renamed from: j, reason: collision with root package name */
        public Executor f11577j;

        /* renamed from: k, reason: collision with root package name */
        public Executor f11578k;

        /* renamed from: l, reason: collision with root package name */
        public h.c f11579l;

        /* renamed from: m, reason: collision with root package name */
        public boolean f11580m;

        /* renamed from: o, reason: collision with root package name */
        public Intent f11582o;

        /* renamed from: q, reason: collision with root package name */
        public boolean f11584q;

        /* renamed from: s, reason: collision with root package name */
        public TimeUnit f11586s;

        /* renamed from: u, reason: collision with root package name */
        public Set<Integer> f11588u;

        /* renamed from: v, reason: collision with root package name */
        public Set<Integer> f11589v;

        /* renamed from: w, reason: collision with root package name */
        public String f11590w;

        /* renamed from: x, reason: collision with root package name */
        public File f11591x;

        /* renamed from: y, reason: collision with root package name */
        public Callable<InputStream> f11592y;

        /* renamed from: r, reason: collision with root package name */
        public long f11585r = -1;

        /* renamed from: n, reason: collision with root package name */
        public c f11581n = c.AUTOMATIC;

        /* renamed from: p, reason: collision with root package name */
        public boolean f11583p = true;

        /* renamed from: t, reason: collision with root package name */
        public final d f11587t = new d();

        public a(Context context, Class<T> cls, String str) {
            this.f11570c = context;
            this.f11568a = cls;
            this.f11569b = str;
        }

        public a<T> a(b bVar) {
            if (this.f11571d == null) {
                this.f11571d = new ArrayList<>();
            }
            this.f11571d.add(bVar);
            return this;
        }

        public a<T> b(p1.b... bVarArr) {
            if (this.f11589v == null) {
                this.f11589v = new HashSet();
            }
            for (p1.b bVar : bVarArr) {
                this.f11589v.add(Integer.valueOf(bVar.f11997a));
                this.f11589v.add(Integer.valueOf(bVar.f11998b));
            }
            this.f11587t.b(bVarArr);
            return this;
        }

        public a<T> c() {
            this.f11580m = true;
            return this;
        }

        @SuppressLint({"RestrictedApi"})
        public T d() {
            Executor executor;
            if (this.f11570c != null) {
                if (this.f11568a != null) {
                    Executor executor2 = this.f11577j;
                    if (executor2 == null && this.f11578k == null) {
                        Executor e10 = l.a.e();
                        this.f11578k = e10;
                        this.f11577j = e10;
                    } else if (executor2 != null && this.f11578k == null) {
                        this.f11578k = executor2;
                    } else if (executor2 == null && (executor = this.f11578k) != null) {
                        this.f11577j = executor;
                    }
                    Set<Integer> set = this.f11589v;
                    if (set != null && this.f11588u != null) {
                        for (Integer num : set) {
                            if (this.f11588u.contains(num)) {
                                throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                            }
                        }
                    }
                    h.c cVar = this.f11579l;
                    if (cVar == null) {
                        cVar = new s1.c();
                    }
                    long j10 = this.f11585r;
                    if (j10 > 0) {
                        if (this.f11569b != null) {
                            cVar = new m(cVar, new o1.a(j10, this.f11586s, this.f11578k));
                        } else {
                            throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.");
                        }
                    }
                    String str = this.f11590w;
                    if (str != null || this.f11591x != null || this.f11592y != null) {
                        if (this.f11569b != null) {
                            int i10 = str == null ? 0 : 1;
                            File file = this.f11591x;
                            int i11 = i10 + (file == null ? 0 : 1);
                            Callable<InputStream> callable = this.f11592y;
                            if (i11 + (callable != null ? 1 : 0) == 1) {
                                cVar = new u0(str, file, callable, cVar);
                            } else {
                                throw new IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                            }
                        } else {
                            throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                        }
                    }
                    f fVar = this.f11573f;
                    h.c h0Var = fVar != null ? new h0(cVar, fVar, this.f11574g) : cVar;
                    Context context = this.f11570c;
                    p pVar = new p(context, this.f11569b, h0Var, this.f11587t, this.f11571d, this.f11580m, this.f11581n.b(context), this.f11577j, this.f11578k, this.f11582o, this.f11583p, this.f11584q, this.f11588u, this.f11590w, this.f11591x, this.f11592y, this.f11572e, this.f11575h, this.f11576i);
                    T t10 = (T) m0.b(this.f11568a, "_Impl");
                    t10.t(pVar);
                    return t10;
                }
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }

        public a<T> e() {
            this.f11583p = false;
            this.f11584q = true;
            return this;
        }

        public a<T> f(h.c cVar) {
            this.f11579l = cVar;
            return this;
        }

        public a<T> g(Executor executor) {
            this.f11577j = executor;
            return this;
        }
    }

    /* compiled from: RoomDatabase.java */
    /* loaded from: classes.dex */
    public static abstract class b {
        public void a(r1.g gVar) {
        }

        public void b(r1.g gVar) {
        }

        public void c(r1.g gVar) {
        }
    }

    /* compiled from: RoomDatabase.java */
    /* loaded from: classes.dex */
    public enum c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        public static boolean a(ActivityManager activityManager) {
            if (Build.VERSION.SDK_INT >= 19) {
                return r1.c.b(activityManager);
            }
            return false;
        }

        public c b(Context context) {
            ActivityManager activityManager;
            if (this != AUTOMATIC) {
                return this;
            }
            if (Build.VERSION.SDK_INT >= 16 && (activityManager = (ActivityManager) context.getSystemService("activity")) != null && !a(activityManager)) {
                return WRITE_AHEAD_LOGGING;
            }
            return TRUNCATE;
        }
    }

    /* compiled from: RoomDatabase.java */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public HashMap<Integer, TreeMap<Integer, p1.b>> f11597a = new HashMap<>();

        public final void a(p1.b bVar) {
            int i10 = bVar.f11997a;
            int i11 = bVar.f11998b;
            TreeMap<Integer, p1.b> treeMap = this.f11597a.get(Integer.valueOf(i10));
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                this.f11597a.put(Integer.valueOf(i10), treeMap);
            }
            p1.b bVar2 = treeMap.get(Integer.valueOf(i11));
            if (bVar2 != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Overriding migration ");
                sb2.append(bVar2);
                sb2.append(" with ");
                sb2.append(bVar);
            }
            treeMap.put(Integer.valueOf(i11), bVar);
        }

        public void b(p1.b... bVarArr) {
            for (p1.b bVar : bVarArr) {
                a(bVar);
            }
        }

        public List<p1.b> c(int i10, int i11) {
            if (i10 == i11) {
                return Collections.emptyList();
            }
            return d(new ArrayList(), i11 > i10, i10, i11);
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x0016 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:5:0x0017  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final List<p1.b> d(List<p1.b> list, boolean z10, int i10, int i11) {
            TreeMap<Integer, p1.b> treeMap;
            Set<Integer> keySet;
            boolean z11;
            do {
                if (z10) {
                    if (i10 >= i11) {
                        return list;
                    }
                    treeMap = this.f11597a.get(Integer.valueOf(i10));
                    if (treeMap == null) {
                        if (z10) {
                            keySet = treeMap.descendingKeySet();
                        } else {
                            keySet = treeMap.keySet();
                        }
                        Iterator<Integer> it2 = keySet.iterator();
                        while (true) {
                            z11 = true;
                            boolean z12 = false;
                            if (!it2.hasNext()) {
                                z11 = false;
                                break;
                            }
                            int intValue = it2.next().intValue();
                            if (!z10 ? !(intValue < i11 || intValue >= i10) : !(intValue > i11 || intValue <= i10)) {
                                z12 = true;
                            }
                            if (z12) {
                                list.add(treeMap.get(Integer.valueOf(intValue)));
                                i10 = intValue;
                                break;
                            }
                        }
                    } else {
                        return null;
                    }
                } else {
                    if (i10 <= i11) {
                        return list;
                    }
                    treeMap = this.f11597a.get(Integer.valueOf(i10));
                    if (treeMap == null) {
                    }
                }
            } while (z11);
            return null;
        }

        public Map<Integer, Map<Integer, p1.b>> e() {
            return Collections.unmodifiableMap(this.f11597a);
        }
    }

    /* compiled from: RoomDatabase.java */
    /* loaded from: classes.dex */
    public static abstract class e {
    }

    /* compiled from: RoomDatabase.java */
    /* loaded from: classes.dex */
    public interface f {
        void a(String str, List<Object> list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object A(r1.g gVar) {
        v();
        return null;
    }

    public static boolean x() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object z(r1.g gVar) {
        u();
        return null;
    }

    public Cursor B(r1.j jVar) {
        return C(jVar, null);
    }

    public Cursor C(r1.j jVar, CancellationSignal cancellationSignal) {
        c();
        d();
        if (cancellationSignal != null && Build.VERSION.SDK_INT >= 16) {
            return this.f11557d.v0().n(jVar, cancellationSignal);
        }
        return this.f11557d.v0().i0(jVar);
    }

    @Deprecated
    public void D() {
        this.f11557d.v0().g0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T E(Class<T> cls, r1.h hVar) {
        if (cls.isInstance(hVar)) {
            return hVar;
        }
        if (hVar instanceof q) {
            return (T) E(cls, ((q) hVar).b());
        }
        return null;
    }

    public void c() {
        if (!this.f11559f && x()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void d() {
        if (!s() && this.f11565l.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    public void e() {
        c();
        o1.a aVar = this.f11564k;
        if (aVar == null) {
            u();
        } else {
            aVar.c(new n.a() { // from class: o1.n0
                @Override // n.a
                public final Object apply(Object obj) {
                    Object z10;
                    z10 = p0.this.z((r1.g) obj);
                    return z10;
                }
            });
        }
    }

    public r1.k f(String str) {
        c();
        d();
        return this.f11557d.v0().C(str);
    }

    public abstract androidx.room.c g();

    public abstract r1.h h(p pVar);

    @Deprecated
    public void i() {
        o1.a aVar = this.f11564k;
        if (aVar == null) {
            v();
        } else {
            aVar.c(new n.a() { // from class: o1.o0
                @Override // n.a
                public final Object apply(Object obj) {
                    Object A;
                    A = p0.this.A((r1.g) obj);
                    return A;
                }
            });
        }
    }

    public List<p1.b> j(Map<Class<? extends p1.a>, p1.a> map) {
        return Collections.emptyList();
    }

    public Map<String, Object> k() {
        return this.f11566m;
    }

    public Lock l() {
        return this.f11563j.readLock();
    }

    public androidx.room.c m() {
        return this.f11558e;
    }

    public r1.h n() {
        return this.f11557d;
    }

    public Executor o() {
        return this.f11555b;
    }

    public Set<Class<? extends p1.a>> p() {
        return Collections.emptySet();
    }

    public Map<Class<?>, List<Class<?>>> q() {
        return Collections.emptyMap();
    }

    public Executor r() {
        return this.f11556c;
    }

    public boolean s() {
        return this.f11557d.v0().Q();
    }

    public void t(p pVar) {
        boolean z10;
        this.f11557d = h(pVar);
        Set<Class<? extends p1.a>> p10 = p();
        BitSet bitSet = new BitSet();
        Iterator<Class<? extends p1.a>> it2 = p10.iterator();
        while (true) {
            int i10 = -1;
            if (it2.hasNext()) {
                Class<? extends p1.a> next = it2.next();
                int size = pVar.f11541h.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    if (next.isAssignableFrom(pVar.f11541h.get(size).getClass())) {
                        bitSet.set(size);
                        i10 = size;
                        break;
                    }
                    size--;
                }
                if (i10 >= 0) {
                    this.f11562i.put(next, pVar.f11541h.get(i10));
                } else {
                    throw new IllegalArgumentException("A required auto migration spec (" + next.getCanonicalName() + ") is missing in the database configuration.");
                }
            } else {
                for (int size2 = pVar.f11541h.size() - 1; size2 >= 0; size2--) {
                    if (!bitSet.get(size2)) {
                        throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                    }
                }
                Iterator<p1.b> it3 = j(this.f11562i).iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    p1.b next2 = it3.next();
                    if (!pVar.f11537d.e().containsKey(Integer.valueOf(next2.f11997a))) {
                        pVar.f11537d.b(next2);
                    }
                }
                t0 t0Var = (t0) E(t0.class, this.f11557d);
                if (t0Var != null) {
                    t0Var.k(pVar);
                }
                i iVar = (i) E(i.class, this.f11557d);
                if (iVar != null) {
                    o1.a d10 = iVar.d();
                    this.f11564k = d10;
                    this.f11558e.m(d10);
                }
                if (Build.VERSION.SDK_INT >= 16) {
                    z10 = pVar.f11543j == c.WRITE_AHEAD_LOGGING;
                    this.f11557d.setWriteAheadLoggingEnabled(z10);
                }
                this.f11561h = pVar.f11538e;
                this.f11555b = pVar.f11544k;
                this.f11556c = new x0(pVar.f11545l);
                this.f11559f = pVar.f11542i;
                this.f11560g = z10;
                Intent intent = pVar.f11547n;
                if (intent != null) {
                    this.f11558e.n(pVar.f11535b, pVar.f11536c, intent);
                }
                Map<Class<?>, List<Class<?>>> q10 = q();
                BitSet bitSet2 = new BitSet();
                for (Map.Entry<Class<?>, List<Class<?>>> entry : q10.entrySet()) {
                    Class<?> key = entry.getKey();
                    for (Class<?> cls : entry.getValue()) {
                        int size3 = pVar.f11540g.size() - 1;
                        while (true) {
                            if (size3 < 0) {
                                size3 = -1;
                                break;
                            } else {
                                if (cls.isAssignableFrom(pVar.f11540g.get(size3).getClass())) {
                                    bitSet2.set(size3);
                                    break;
                                }
                                size3--;
                            }
                        }
                        if (size3 >= 0) {
                            this.f11567n.put(cls, pVar.f11540g.get(size3));
                        } else {
                            throw new IllegalArgumentException("A required type converter (" + cls + ") for " + key.getCanonicalName() + " is missing in the database configuration.");
                        }
                    }
                }
                for (int size4 = pVar.f11540g.size() - 1; size4 >= 0; size4--) {
                    if (!bitSet2.get(size4)) {
                        throw new IllegalArgumentException("Unexpected type converter " + pVar.f11540g.get(size4) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                    }
                }
                return;
            }
        }
    }

    public final void u() {
        c();
        r1.g v02 = this.f11557d.v0();
        this.f11558e.r(v02);
        if (Build.VERSION.SDK_INT >= 16 && v02.b0()) {
            v02.l0();
        } else {
            v02.g();
        }
    }

    public final void v() {
        this.f11557d.v0().f();
        if (s()) {
            return;
        }
        this.f11558e.j();
    }

    public void w(r1.g gVar) {
        this.f11558e.g(gVar);
    }

    public boolean y() {
        o1.a aVar = this.f11564k;
        if (aVar != null) {
            return aVar.g();
        }
        r1.g gVar = this.f11554a;
        return gVar != null && gVar.isOpen();
    }
}
