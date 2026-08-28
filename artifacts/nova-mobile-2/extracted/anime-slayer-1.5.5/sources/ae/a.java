package ae;

import ic.l;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import jc.m;
import kotlin.TypeCastException;
import uy.kohesive.injekt.api.InjektionException;
import vb.f;
import vb.i;
import wb.c0;
import zd.d;
import zd.g;

/* compiled from: DefaultRegistrar.kt */
/* loaded from: classes.dex */
public class a implements zd.d {

    /* renamed from: a, reason: collision with root package name */
    public final b f563a = new b();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap<C0018a, Object> f564b = new ConcurrentHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    public final e f565c = new e();

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap<Type, ic.a<Object>> f566d = new ConcurrentHashMap<>();

    /* renamed from: e, reason: collision with root package name */
    public final ConcurrentHashMap<Type, l<Object, Object>> f567e = new ConcurrentHashMap<>();

    /* renamed from: f, reason: collision with root package name */
    public final ConcurrentHashMap<String, Object> f568f = new ConcurrentHashMap<>();

    /* compiled from: DefaultRegistrar.kt */
    /* renamed from: ae.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0018a {

        /* renamed from: a, reason: collision with root package name */
        public final Type f569a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f570b;

        public C0018a(Type type, Object obj) {
            jc.l.g(type, "forWhatType");
            jc.l.g(obj, "forKey");
            this.f569a = type;
            this.f570b = obj;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0018a)) {
                return false;
            }
            C0018a c0018a = (C0018a) obj;
            return jc.l.a(this.f569a, c0018a.f569a) && jc.l.a(this.f570b, c0018a.f570b);
        }

        public int hashCode() {
            Type type = this.f569a;
            int hashCode = (type != null ? type.hashCode() : 0) * 31;
            Object obj = this.f570b;
            return hashCode + (obj != null ? obj.hashCode() : 0);
        }

        public String toString() {
            return "Instance(forWhatType=" + this.f569a + ", forKey=" + this.f570b + ")";
        }
    }

    /* compiled from: DefaultRegistrar.kt */
    /* loaded from: classes2.dex */
    public static final class b {
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: DefaultRegistrar.kt */
    /* loaded from: classes2.dex */
    public static final class c<T> extends m implements ic.a<T> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Object f571f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Object obj) {
            super(0);
            this.f571f = obj;
        }

        @Override // ic.a
        public final T invoke() {
            return (T) this.f571f;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* compiled from: DefaultRegistrar.kt */
    /* loaded from: classes2.dex */
    public static final class d<R> extends m implements ic.a<R> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ g f573g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ic.a f574h;

        /* compiled from: DefaultRegistrar.kt */
        /* renamed from: ae.a$d$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0019a extends m implements ic.a<R> {
            public C0019a() {
                super(0);
            }

            @Override // ic.a
            public final R invoke() {
                return (R) d.this.f574h.invoke();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(g gVar, ic.a aVar) {
            super(0);
            this.f573g = gVar;
            this.f574h = aVar;
        }

        @Override // ic.a
        public final R invoke() {
            Object putIfAbsent;
            ConcurrentHashMap concurrentHashMap = a.this.f564b;
            C0018a c0018a = new C0018a(this.f573g.getType(), a.this.f563a);
            Object obj = concurrentHashMap.get(c0018a);
            if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(c0018a, (obj = f.a(new C0019a())))) != null) {
                obj = putIfAbsent;
            }
            if (obj != null) {
                return (R) ((vb.e) obj).getValue();
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Lazy<R>");
        }
    }

    /* compiled from: DefaultRegistrar.kt */
    /* loaded from: classes2.dex */
    public static final class e extends ThreadLocal<HashMap<C0018a, Object>> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public HashMap<C0018a, Object> initialValue() {
            return c0.e(new i[0]);
        }
    }

    @Override // zd.b
    public <R> R a(Type type) {
        jc.l.g(type, "forType");
        ic.a aVar = (ic.a) g(this.f566d, type);
        if (aVar != null) {
            R r10 = (R) aVar.invoke();
            if (r10 != null) {
                return r10;
            }
            throw new TypeCastException("null cannot be cast to non-null type R");
        }
        throw new InjektionException("No registered instance or factory for type " + type);
    }

    @Override // zd.d
    public void b(zd.c cVar) {
        jc.l.g(cVar, "submodule");
        d.a.a(this, cVar);
    }

    @Override // zd.e
    public <R> void c(g<R> gVar, ic.a<? extends R> aVar) {
        jc.l.g(gVar, "forType");
        jc.l.g(aVar, "factoryCalledOnce");
        this.f566d.put(gVar.getType(), new d(gVar, aVar));
    }

    @Override // zd.e
    public <T> void d(g<T> gVar, T t10) {
        jc.l.g(gVar, "forType");
        jc.l.g(t10, "singleInstance");
        c(gVar, new c(t10));
        a(gVar.getType());
    }

    public final <K, V> V g(Map<K, ? extends V> map, K k10) {
        return map.get(k10);
    }
}
