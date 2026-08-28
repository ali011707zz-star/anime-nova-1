package k1;

import java.util.List;

/* compiled from: DataSource.kt */
/* loaded from: classes.dex */
public abstract class i<Key, Value> {

    /* compiled from: DataSource.kt */
    /* loaded from: classes.dex */
    public static final class a<Value> {

        /* renamed from: f, reason: collision with root package name */
        public static final C0189a f9501f = new C0189a(null);

        /* renamed from: a, reason: collision with root package name */
        public final List<Value> f9502a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f9503b;

        /* renamed from: c, reason: collision with root package name */
        public final Object f9504c;

        /* renamed from: d, reason: collision with root package name */
        public final int f9505d;

        /* renamed from: e, reason: collision with root package name */
        public final int f9506e;

        /* compiled from: DataSource.kt */
        /* renamed from: k1.i$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0189a {
            public C0189a() {
            }

            public /* synthetic */ C0189a(jc.g gVar) {
                this();
            }
        }

        public final int a() {
            return this.f9506e;
        }

        public final int b() {
            return this.f9505d;
        }

        public final Object c() {
            return this.f9504c;
        }

        public final Object d() {
            return this.f9503b;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return jc.l.a(this.f9502a, aVar.f9502a) && jc.l.a(this.f9503b, aVar.f9503b) && jc.l.a(this.f9504c, aVar.f9504c) && this.f9505d == aVar.f9505d && this.f9506e == aVar.f9506e;
        }
    }

    /* compiled from: DataSource.kt */
    /* loaded from: classes.dex */
    public static final class b<K> {

        /* renamed from: a, reason: collision with root package name */
        public final y f9507a;

        /* renamed from: b, reason: collision with root package name */
        public final K f9508b;

        /* renamed from: c, reason: collision with root package name */
        public final int f9509c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f9510d;

        /* renamed from: e, reason: collision with root package name */
        public final int f9511e;

        public b(y yVar, K k10, int i10, boolean z10, int i11) {
            jc.l.f(yVar, "type");
            this.f9507a = yVar;
            this.f9508b = k10;
            this.f9509c = i10;
            this.f9510d = z10;
            this.f9511e = i11;
            if (yVar != y.REFRESH && k10 == null) {
                throw new IllegalArgumentException("Key must be non-null for prepend/append");
            }
        }
    }
}
