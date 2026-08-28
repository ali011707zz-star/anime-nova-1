package k1;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: PagingSource.kt */
/* loaded from: classes.dex */
public abstract class t0<Key, Value> {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList<ic.a<vb.p>> f9797a = new CopyOnWriteArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f9798b = new AtomicBoolean(false);

    /* compiled from: PagingSource.kt */
    /* loaded from: classes.dex */
    public static abstract class a<Key> {

        /* renamed from: c, reason: collision with root package name */
        public static final b f9799c = new b(null);

        /* renamed from: a, reason: collision with root package name */
        public final int f9800a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f9801b;

        /* compiled from: PagingSource.kt */
        /* renamed from: k1.t0$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0201a<Key> extends a<Key> {

            /* renamed from: d, reason: collision with root package name */
            public final Key f9802d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0201a(Key key, int i10, boolean z10) {
                super(i10, z10, null);
                jc.l.f(key, "key");
                this.f9802d = key;
            }

            @Override // k1.t0.a
            public Key a() {
                return this.f9802d;
            }
        }

        /* compiled from: PagingSource.kt */
        /* loaded from: classes.dex */
        public static final class b {
            public b() {
            }

            public final <Key> a<Key> a(y yVar, Key key, int i10, boolean z10) {
                jc.l.f(yVar, "loadType");
                int i11 = u0.f9819a[yVar.ordinal()];
                if (i11 == 1) {
                    return new d(key, i10, z10);
                }
                if (i11 == 2) {
                    if (key != null) {
                        return new c(key, i10, z10);
                    }
                    throw new IllegalArgumentException("key cannot be null for prepend".toString());
                }
                if (i11 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                if (key != null) {
                    return new C0201a(key, i10, z10);
                }
                throw new IllegalArgumentException("key cannot be null for append".toString());
            }

            public /* synthetic */ b(jc.g gVar) {
                this();
            }
        }

        /* compiled from: PagingSource.kt */
        /* loaded from: classes.dex */
        public static final class c<Key> extends a<Key> {

            /* renamed from: d, reason: collision with root package name */
            public final Key f9803d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Key key, int i10, boolean z10) {
                super(i10, z10, null);
                jc.l.f(key, "key");
                this.f9803d = key;
            }

            @Override // k1.t0.a
            public Key a() {
                return this.f9803d;
            }
        }

        /* compiled from: PagingSource.kt */
        /* loaded from: classes.dex */
        public static final class d<Key> extends a<Key> {

            /* renamed from: d, reason: collision with root package name */
            public final Key f9804d;

            public d(Key key, int i10, boolean z10) {
                super(i10, z10, null);
                this.f9804d = key;
            }

            @Override // k1.t0.a
            public Key a() {
                return this.f9804d;
            }
        }

        public a(int i10, boolean z10) {
            this.f9800a = i10;
            this.f9801b = z10;
        }

        public abstract Key a();

        public final int b() {
            return this.f9800a;
        }

        public final boolean c() {
            return this.f9801b;
        }

        public /* synthetic */ a(int i10, boolean z10, jc.g gVar) {
            this(i10, z10);
        }
    }

    /* compiled from: PagingSource.kt */
    /* loaded from: classes.dex */
    public static abstract class b<Key, Value> {

        /* compiled from: PagingSource.kt */
        /* loaded from: classes.dex */
        public static final class a<Key, Value> extends b<Key, Value> {

            /* renamed from: a, reason: collision with root package name */
            public final Throwable f9805a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Throwable th) {
                super(null);
                jc.l.f(th, "throwable");
                this.f9805a = th;
            }

            public final Throwable a() {
                return this.f9805a;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof a) && jc.l.a(this.f9805a, ((a) obj).f9805a);
                }
                return true;
            }

            public int hashCode() {
                Throwable th = this.f9805a;
                if (th != null) {
                    return th.hashCode();
                }
                return 0;
            }

            public String toString() {
                return "Error(throwable=" + this.f9805a + ")";
            }
        }

        public b() {
        }

        public /* synthetic */ b(jc.g gVar) {
            this();
        }

        /* compiled from: PagingSource.kt */
        /* renamed from: k1.t0$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0202b<Key, Value> extends b<Key, Value> {

            /* renamed from: a, reason: collision with root package name */
            public final List<Value> f9808a;

            /* renamed from: b, reason: collision with root package name */
            public final Key f9809b;

            /* renamed from: c, reason: collision with root package name */
            public final Key f9810c;

            /* renamed from: d, reason: collision with root package name */
            public final int f9811d;

            /* renamed from: e, reason: collision with root package name */
            public final int f9812e;

            /* renamed from: g, reason: collision with root package name */
            public static final a f9807g = new a(null);

            /* renamed from: f, reason: collision with root package name */
            public static final C0202b f9806f = new C0202b(wb.l.i(), null, null, 0, 0);

            /* compiled from: PagingSource.kt */
            /* renamed from: k1.t0$b$b$a */
            /* loaded from: classes.dex */
            public static final class a {
                public a() {
                }

                public /* synthetic */ a(jc.g gVar) {
                    this();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0202b(List<? extends Value> list, Key key, Key key2, int i10, int i11) {
                super(null);
                jc.l.f(list, "data");
                this.f9808a = list;
                this.f9809b = key;
                this.f9810c = key2;
                this.f9811d = i10;
                this.f9812e = i11;
                if (!(i10 == Integer.MIN_VALUE || i10 >= 0)) {
                    throw new IllegalArgumentException("itemsBefore cannot be negative".toString());
                }
                if (!(i11 == Integer.MIN_VALUE || i11 >= 0)) {
                    throw new IllegalArgumentException("itemsAfter cannot be negative".toString());
                }
            }

            public final List<Value> a() {
                return this.f9808a;
            }

            public final int b() {
                return this.f9812e;
            }

            public final int c() {
                return this.f9811d;
            }

            public final Key d() {
                return this.f9810c;
            }

            public final Key e() {
                return this.f9809b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0202b)) {
                    return false;
                }
                C0202b c0202b = (C0202b) obj;
                return jc.l.a(this.f9808a, c0202b.f9808a) && jc.l.a(this.f9809b, c0202b.f9809b) && jc.l.a(this.f9810c, c0202b.f9810c) && this.f9811d == c0202b.f9811d && this.f9812e == c0202b.f9812e;
            }

            public int hashCode() {
                List<Value> list = this.f9808a;
                int hashCode = (list != null ? list.hashCode() : 0) * 31;
                Key key = this.f9809b;
                int hashCode2 = (hashCode + (key != null ? key.hashCode() : 0)) * 31;
                Key key2 = this.f9810c;
                return ((((hashCode2 + (key2 != null ? key2.hashCode() : 0)) * 31) + this.f9811d) * 31) + this.f9812e;
            }

            public String toString() {
                return "Page(data=" + this.f9808a + ", prevKey=" + this.f9809b + ", nextKey=" + this.f9810c + ", itemsBefore=" + this.f9811d + ", itemsAfter=" + this.f9812e + ")";
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public C0202b(List<? extends Value> list, Key key, Key key2) {
                this(list, key, key2, Integer.MIN_VALUE, Integer.MIN_VALUE);
                jc.l.f(list, "data");
            }
        }
    }

    public final boolean a() {
        return this.f9798b.get();
    }

    public boolean b() {
        return false;
    }

    public boolean c() {
        return false;
    }

    public abstract Key d(v0<Key, Value> v0Var);

    public final void e() {
        if (this.f9798b.compareAndSet(false, true)) {
            Iterator<T> it2 = this.f9797a.iterator();
            while (it2.hasNext()) {
                ((ic.a) it2.next()).invoke();
            }
        }
    }

    public abstract Object f(a<Key> aVar, ac.d<? super b<Key, Value>> dVar);

    public final void g(ic.a<vb.p> aVar) {
        jc.l.f(aVar, "onInvalidatedCallback");
        this.f9797a.add(aVar);
    }

    public final void h(ic.a<vb.p> aVar) {
        jc.l.f(aVar, "onInvalidatedCallback");
        this.f9797a.remove(aVar);
    }
}
