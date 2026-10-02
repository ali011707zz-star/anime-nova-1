package k1;

import java.util.List;
import k1.i;
import k1.t0;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: LegacyPagingSource.kt */
/* loaded from: classes.dex */
public final class s<Key, Value> extends t0<Key, Value> {

    /* renamed from: f, reason: collision with root package name */
    public static final a f9764f = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public int f9765c;

    /* renamed from: d, reason: collision with root package name */
    public final rc.l0 f9766d;

    /* renamed from: e, reason: collision with root package name */
    public final i<Key, Value> f9767e;

    /* compiled from: LegacyPagingSource.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: LegacyPagingSource.kt */
    @cc.f(c = "androidx.paging.LegacyPagingSource$load$2", f = "LegacyPagingSource.kt", l = {116}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.p<rc.q0, ac.d<? super t0.b.C0202b<Key, Value>>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f9768f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ jc.x f9770h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ t0.a f9771i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(jc.x xVar, t0.a aVar, ac.d dVar) {
            super(2, dVar);
            this.f9770h = xVar;
            this.f9771i = aVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new b(this.f9770h, this.f9771i, dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, Object obj) {
            return ((b) create(q0Var, (ac.d) obj)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            int i10 = this.f9768f;
            if (i10 == 0) {
                vb.k.b(obj);
                s.this.i();
                this.f9768f = 1;
                throw null;
            }
            if (i10 == 1) {
                vb.k.b(obj);
                i.a aVar = (i.a) obj;
                List<Value> list = aVar.f9502a;
                return new t0.b.C0202b(list, (list.isEmpty() && (this.f9771i instanceof t0.a.c)) ? null : aVar.d(), (aVar.f9502a.isEmpty() && (this.f9771i instanceof t0.a.C0201a)) ? null : aVar.c(), aVar.b(), aVar.a());
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // k1.t0
    public boolean b() {
        throw null;
    }

    @Override // k1.t0
    public Key d(v0<Key, Value> v0Var) {
        jc.l.f(v0Var, "state");
        throw null;
    }

    /* JADX WARN: Type inference failed for: r7v0, types: [k1.i$b, T] */
    @Override // k1.t0
    public Object f(t0.a<Key> aVar, ac.d<? super t0.b<Key, Value>> dVar) {
        y yVar;
        if (aVar instanceof t0.a.d) {
            yVar = y.REFRESH;
        } else if (aVar instanceof t0.a.C0201a) {
            yVar = y.APPEND;
        } else {
            if (!(aVar instanceof t0.a.c)) {
                throw new NoWhenBranchMatchedException();
            }
            yVar = y.PREPEND;
        }
        y yVar2 = yVar;
        if (this.f9765c == Integer.MIN_VALUE) {
            System.out.println((Object) "WARNING: pageSize on the LegacyPagingSource is not set.\nWhen using legacy DataSource / DataSourceFactory with Paging3, page size\nshould've been set by the paging library but it is not set yet.\n\nIf you are seeing this message in tests where you are testing DataSource\nin isolation (without a Pager), it is expected and page size will be estimated\nbased on parameters.\n\nIf you are seeing this message despite using a Pager, please file a bug:\nhttps://issuetracker.google.com/issues/new?component=413106");
            this.f9765c = j(aVar);
        }
        jc.x xVar = new jc.x();
        xVar.f9194f = new i.b(yVar2, aVar.a(), aVar.b(), aVar.c(), this.f9765c);
        return rc.i.g(this.f9766d, new b(xVar, aVar, null), dVar);
    }

    public final i<Key, Value> i() {
        return this.f9767e;
    }

    public final int j(t0.a<Key> aVar) {
        if ((aVar instanceof t0.a.d) && aVar.b() % 3 == 0) {
            return aVar.b() / 3;
        }
        return aVar.b();
    }

    public final void k(int i10) {
        int i11 = this.f9765c;
        if (i11 == Integer.MIN_VALUE || i10 == i11) {
            this.f9765c = i10;
            return;
        }
        throw new IllegalStateException(("Page size is already set to " + this.f9765c + '.').toString());
    }
}
