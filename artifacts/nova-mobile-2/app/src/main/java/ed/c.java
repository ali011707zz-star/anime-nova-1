package ed;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import org.greenrobot.eventbus.EventBusException;
import org.greenrobot.eventbus.ThreadMode;

/* compiled from: EventBus.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: s, reason: collision with root package name */
    public static volatile c f6295s;

    /* renamed from: t, reason: collision with root package name */
    public static final d f6296t = new d();

    /* renamed from: u, reason: collision with root package name */
    public static final Map<Class<?>, List<Class<?>>> f6297u = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, CopyOnWriteArrayList<p>> f6298a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<Object, List<Class<?>>> f6299b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<Class<?>, Object> f6300c;

    /* renamed from: d, reason: collision with root package name */
    public final ThreadLocal<C0115c> f6301d;

    /* renamed from: e, reason: collision with root package name */
    public final g f6302e;

    /* renamed from: f, reason: collision with root package name */
    public final k f6303f;

    /* renamed from: g, reason: collision with root package name */
    public final ed.b f6304g;

    /* renamed from: h, reason: collision with root package name */
    public final ed.a f6305h;

    /* renamed from: i, reason: collision with root package name */
    public final o f6306i;

    /* renamed from: j, reason: collision with root package name */
    public final ExecutorService f6307j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f6308k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f6309l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f6310m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f6311n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f6312o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f6313p;

    /* renamed from: q, reason: collision with root package name */
    public final int f6314q;

    /* renamed from: r, reason: collision with root package name */
    public final f f6315r;

    /* compiled from: EventBus.java */
    /* loaded from: classes.dex */
    public class a extends ThreadLocal<C0115c> {
        public a() {
        }

        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0115c initialValue() {
            return new C0115c();
        }
    }

    /* compiled from: EventBus.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6317a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f6317a = iArr;
            try {
                iArr[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6317a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6317a[ThreadMode.MAIN_ORDERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6317a[ThreadMode.BACKGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6317a[ThreadMode.ASYNC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* compiled from: EventBus.java */
    /* renamed from: ed.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0115c {

        /* renamed from: a, reason: collision with root package name */
        public final List<Object> f6318a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        public boolean f6319b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f6320c;

        /* renamed from: d, reason: collision with root package name */
        public p f6321d;

        /* renamed from: e, reason: collision with root package name */
        public Object f6322e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f6323f;
    }

    public c() {
        this(f6296t);
    }

    public static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    public static d b() {
        return new d();
    }

    public static c d() {
        c cVar = f6295s;
        if (cVar == null) {
            synchronized (c.class) {
                cVar = f6295s;
                if (cVar == null) {
                    cVar = new c();
                    f6295s = cVar;
                }
            }
        }
        return cVar;
    }

    public static List<Class<?>> l(Class<?> cls) {
        List<Class<?>> list;
        Map<Class<?>, List<Class<?>>> map = f6297u;
        synchronized (map) {
            list = map.get(cls);
            if (list == null) {
                list = new ArrayList<>();
                for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                    list.add(cls2);
                    a(list, cls2.getInterfaces());
                }
                f6297u.put(cls, list);
            }
        }
        return list;
    }

    public final void c(p pVar, Object obj) {
        if (obj != null) {
            q(pVar, obj, j());
        }
    }

    public ExecutorService e() {
        return this.f6307j;
    }

    public f f() {
        return this.f6315r;
    }

    public final void g(p pVar, Object obj, Throwable th) {
        if (obj instanceof m) {
            if (this.f6309l) {
                f fVar = this.f6315r;
                Level level = Level.SEVERE;
                fVar.b(level, "SubscriberExceptionEvent subscriber " + pVar.f6373a.getClass() + " threw an exception", th);
                m mVar = (m) obj;
                this.f6315r.b(level, "Initial event " + mVar.f6352c + " caused exception in " + mVar.f6353d, mVar.f6351b);
                return;
            }
            return;
        }
        if (!this.f6308k) {
            if (this.f6309l) {
                this.f6315r.b(Level.SEVERE, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + pVar.f6373a.getClass(), th);
            }
            if (this.f6311n) {
                m(new m(this, th, obj, pVar.f6373a));
                return;
            }
            return;
        }
        throw new EventBusException("Invoking subscriber failed", th);
    }

    public void h(i iVar) {
        Object obj = iVar.f6345a;
        p pVar = iVar.f6346b;
        i.b(iVar);
        if (pVar.f6375c) {
            i(pVar, obj);
        }
    }

    public void i(p pVar, Object obj) {
        try {
            pVar.f6374b.f6354a.invoke(pVar.f6373a, obj);
        } catch (IllegalAccessException e10) {
            throw new IllegalStateException("Unexpected exception", e10);
        } catch (InvocationTargetException e11) {
            g(pVar, obj, e11.getCause());
        }
    }

    public final boolean j() {
        g gVar = this.f6302e;
        return gVar == null || gVar.b();
    }

    public synchronized boolean k(Object obj) {
        return this.f6299b.containsKey(obj);
    }

    public void m(Object obj) {
        C0115c c0115c = this.f6301d.get();
        List<Object> list = c0115c.f6318a;
        list.add(obj);
        if (c0115c.f6319b) {
            return;
        }
        c0115c.f6320c = j();
        c0115c.f6319b = true;
        if (c0115c.f6323f) {
            throw new EventBusException("Internal error. Abort state was not reset");
        }
        while (true) {
            try {
                if (list.isEmpty()) {
                    return;
                } else {
                    n(list.remove(0), c0115c);
                }
            } finally {
                c0115c.f6319b = false;
                c0115c.f6320c = false;
            }
        }
    }

    public final void n(Object obj, C0115c c0115c) throws Error {
        boolean o10;
        Class<?> cls = obj.getClass();
        if (this.f6313p) {
            List<Class<?>> l10 = l(cls);
            int size = l10.size();
            o10 = false;
            for (int i10 = 0; i10 < size; i10++) {
                o10 |= o(obj, c0115c, l10.get(i10));
            }
        } else {
            o10 = o(obj, c0115c, cls);
        }
        if (o10) {
            return;
        }
        if (this.f6310m) {
            this.f6315r.a(Level.FINE, "No subscribers registered for event " + cls);
        }
        if (!this.f6312o || cls == h.class || cls == m.class) {
            return;
        }
        m(new h(this, obj));
    }

    public final boolean o(Object obj, C0115c c0115c, Class<?> cls) {
        CopyOnWriteArrayList<p> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f6298a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator<p> it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            p next = it2.next();
            c0115c.f6322e = obj;
            c0115c.f6321d = next;
            try {
                q(next, obj, c0115c.f6320c);
                if (c0115c.f6323f) {
                    return true;
                }
            } finally {
                c0115c.f6322e = null;
                c0115c.f6321d = null;
                c0115c.f6323f = false;
            }
        }
        return true;
    }

    public void p(Object obj) {
        synchronized (this.f6300c) {
            this.f6300c.put(obj.getClass(), obj);
        }
        m(obj);
    }

    public final void q(p pVar, Object obj, boolean z10) {
        int i10 = b.f6317a[pVar.f6374b.f6355b.ordinal()];
        if (i10 == 1) {
            i(pVar, obj);
            return;
        }
        if (i10 == 2) {
            if (z10) {
                i(pVar, obj);
                return;
            } else {
                this.f6303f.a(pVar, obj);
                return;
            }
        }
        if (i10 == 3) {
            k kVar = this.f6303f;
            if (kVar != null) {
                kVar.a(pVar, obj);
                return;
            } else {
                i(pVar, obj);
                return;
            }
        }
        if (i10 == 4) {
            if (z10) {
                this.f6304g.a(pVar, obj);
                return;
            } else {
                i(pVar, obj);
                return;
            }
        }
        if (i10 == 5) {
            this.f6305h.a(pVar, obj);
            return;
        }
        throw new IllegalStateException("Unknown thread mode: " + pVar.f6374b.f6355b);
    }

    public void r(Object obj) {
        List<n> a10 = this.f6306i.a(obj.getClass());
        synchronized (this) {
            Iterator<n> it2 = a10.iterator();
            while (it2.hasNext()) {
                s(obj, it2.next());
            }
        }
    }

    public final void s(Object obj, n nVar) {
        Class<?> cls = nVar.f6356c;
        p pVar = new p(obj, nVar);
        CopyOnWriteArrayList<p> copyOnWriteArrayList = this.f6298a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f6298a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(pVar)) {
            throw new EventBusException("Subscriber " + obj.getClass() + " already registered to event " + cls);
        }
        int size = copyOnWriteArrayList.size();
        for (int i10 = 0; i10 <= size; i10++) {
            if (i10 == size || nVar.f6357d > copyOnWriteArrayList.get(i10).f6374b.f6357d) {
                copyOnWriteArrayList.add(i10, pVar);
                break;
            }
        }
        List<Class<?>> list = this.f6299b.get(obj);
        if (list == null) {
            list = new ArrayList<>();
            this.f6299b.put(obj, list);
        }
        list.add(cls);
        if (nVar.f6358e) {
            if (this.f6313p) {
                for (Map.Entry<Class<?>, Object> entry : this.f6300c.entrySet()) {
                    if (cls.isAssignableFrom(entry.getKey())) {
                        c(pVar, entry.getValue());
                    }
                }
                return;
            }
            c(pVar, this.f6300c.get(cls));
        }
    }

    public synchronized void t(Object obj) {
        List<Class<?>> list = this.f6299b.get(obj);
        if (list != null) {
            Iterator<Class<?>> it2 = list.iterator();
            while (it2.hasNext()) {
                u(obj, it2.next());
            }
            this.f6299b.remove(obj);
        } else {
            this.f6315r.a(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public String toString() {
        return "EventBus[indexCount=" + this.f6314q + ", eventInheritance=" + this.f6313p + "]";
    }

    public final void u(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<p> copyOnWriteArrayList = this.f6298a.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i10 = 0;
            while (i10 < size) {
                p pVar = copyOnWriteArrayList.get(i10);
                if (pVar.f6373a == obj) {
                    pVar.f6375c = false;
                    copyOnWriteArrayList.remove(i10);
                    i10--;
                    size--;
                }
                i10++;
            }
        }
    }

    public c(d dVar) {
        this.f6301d = new a();
        this.f6315r = dVar.c();
        this.f6298a = new HashMap();
        this.f6299b = new HashMap();
        this.f6300c = new ConcurrentHashMap();
        g d10 = dVar.d();
        this.f6302e = d10;
        this.f6303f = d10 != null ? d10.a(this) : null;
        this.f6304g = new ed.b(this);
        this.f6305h = new ed.a(this);
        List<gd.b> list = dVar.f6334j;
        this.f6314q = list != null ? list.size() : 0;
        this.f6306i = new o(dVar.f6334j, dVar.f6332h, dVar.f6331g);
        this.f6309l = dVar.f6325a;
        this.f6310m = dVar.f6326b;
        this.f6311n = dVar.f6327c;
        this.f6312o = dVar.f6328d;
        this.f6308k = dVar.f6329e;
        this.f6313p = dVar.f6330f;
        this.f6307j = dVar.f6333i;
    }
}
