package k1;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import k1.f0;
import k1.h1;
import k1.t0;
import k1.u;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: PageFetcherSnapshotState.kt */
/* loaded from: classes.dex */
public final class k0<Key, Value> {

    /* renamed from: a */
    public final List<t0.b.C0202b<Key, Value>> f9638a;

    /* renamed from: b */
    public final List<t0.b.C0202b<Key, Value>> f9639b;

    /* renamed from: c */
    public int f9640c;

    /* renamed from: d */
    public int f9641d;

    /* renamed from: e */
    public int f9642e;

    /* renamed from: f */
    public int f9643f;

    /* renamed from: g */
    public int f9644g;

    /* renamed from: h */
    public final tc.f<Integer> f9645h;

    /* renamed from: i */
    public final tc.f<Integer> f9646i;

    /* renamed from: j */
    public final Map<y, h1> f9647j;

    /* renamed from: k */
    public w f9648k;

    /* renamed from: l */
    public final p0 f9649l;

    /* compiled from: PageFetcherSnapshotState.kt */
    /* loaded from: classes.dex */
    public static final class a<Key, Value> {

        /* renamed from: a */
        public final ad.b f9650a;

        /* renamed from: b */
        public final k0<Key, Value> f9651b;

        /* renamed from: c */
        public final p0 f9652c;

        public a(p0 p0Var) {
            jc.l.f(p0Var, "config");
            this.f9652c = p0Var;
            this.f9650a = ad.e.b(false, 1, null);
            this.f9651b = new k0<>(p0Var, null);
        }

        public static final /* synthetic */ ad.b a(a aVar) {
            return aVar.f9650a;
        }

        public static final /* synthetic */ k0 b(a aVar) {
            return aVar.f9651b;
        }
    }

    /* compiled from: PageFetcherSnapshotState.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1", f = "PageFetcherSnapshotState.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.p<uc.g<? super Integer>, ac.d<? super vb.p>, Object> {

        /* renamed from: f */
        public int f9653f;

        public b(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new b(dVar);
        }

        @Override // ic.p
        public final Object invoke(uc.g<? super Integer> gVar, ac.d<? super vb.p> dVar) {
            return ((b) create(gVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f9653f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            k0.this.f9646i.f(cc.b.b(k0.this.f9644g));
            return vb.p.f15031a;
        }
    }

    /* compiled from: PageFetcherSnapshotState.kt */
    @cc.f(c = "androidx.paging.PageFetcherSnapshotState$consumePrependGenerationIdAsFlow$1", f = "PageFetcherSnapshotState.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<uc.g<? super Integer>, ac.d<? super vb.p>, Object> {

        /* renamed from: f */
        public int f9655f;

        public c(ac.d dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            jc.l.f(dVar, "completion");
            return new c(dVar);
        }

        @Override // ic.p
        public final Object invoke(uc.g<? super Integer> gVar, ac.d<? super vb.p> dVar) {
            return ((c) create(gVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f9655f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            k0.this.f9645h.f(cc.b.b(k0.this.f9643f));
            return vb.p.f15031a;
        }
    }

    public k0(p0 p0Var) {
        this.f9649l = p0Var;
        ArrayList arrayList = new ArrayList();
        this.f9638a = arrayList;
        this.f9639b = arrayList;
        this.f9645h = tc.i.b(-1, null, null, 6, null);
        this.f9646i = tc.i.b(-1, null, null, 6, null);
        this.f9647j = new LinkedHashMap();
        this.f9648k = w.f9826e.a();
    }

    public final uc.f<Integer> e() {
        return uc.h.x(uc.h.i(this.f9646i), new b(null));
    }

    public final uc.f<Integer> f() {
        return uc.h.x(uc.h.i(this.f9645h), new c(null));
    }

    public final v0<Key, Value> g(h1.a aVar) {
        Integer num;
        int size;
        List P = wb.t.P(this.f9639b);
        if (aVar != null) {
            int o10 = o();
            int i10 = -this.f9640c;
            int k10 = wb.l.k(this.f9639b) - this.f9640c;
            int f10 = aVar.f();
            for (int i11 = i10; i11 < f10; i11++) {
                if (i11 > k10) {
                    size = this.f9649l.f9740a;
                } else {
                    size = this.f9639b.get(this.f9640c + i11).a().size();
                }
                o10 += size;
            }
            int e10 = o10 + aVar.e();
            if (aVar.f() < i10) {
                e10 -= this.f9649l.f9740a;
            }
            num = Integer.valueOf(e10);
        } else {
            num = null;
        }
        return new v0<>(P, num, this.f9649l, o());
    }

    public final void h(f0.a<Value> aVar) {
        jc.l.f(aVar, "event");
        if (aVar.d() <= this.f9639b.size()) {
            this.f9647j.remove(aVar.a());
            this.f9648k = this.f9648k.h(aVar.a(), u.c.f9818d.b());
            int i10 = l0.f9662e[aVar.a().ordinal()];
            if (i10 == 1) {
                int d10 = aVar.d();
                for (int i11 = 0; i11 < d10; i11++) {
                    this.f9638a.remove(0);
                }
                this.f9640c -= aVar.d();
                t(aVar.e());
                int i12 = this.f9643f + 1;
                this.f9643f = i12;
                this.f9645h.f(Integer.valueOf(i12));
                return;
            }
            if (i10 == 2) {
                int d11 = aVar.d();
                for (int i13 = 0; i13 < d11; i13++) {
                    this.f9638a.remove(this.f9639b.size() - 1);
                }
                s(aVar.e());
                int i14 = this.f9644g + 1;
                this.f9644g = i14;
                this.f9646i.f(Integer.valueOf(i14));
                return;
            }
            throw new IllegalArgumentException("cannot drop " + aVar.a());
        }
        throw new IllegalStateException(("invalid drop count. have " + this.f9639b.size() + " but wanted to drop " + aVar.d()).toString());
    }

    public final f0.a<Value> i(y yVar, h1 h1Var) {
        int i10;
        int i11;
        int i12;
        int size;
        int d10;
        jc.l.f(yVar, "loadType");
        jc.l.f(h1Var, "hint");
        f0.a<Value> aVar = null;
        if (this.f9649l.f9744e == Integer.MAX_VALUE || this.f9639b.size() <= 2 || q() <= this.f9649l.f9744e) {
            return null;
        }
        int i13 = 0;
        if (yVar != y.REFRESH) {
            int i14 = 0;
            int i15 = 0;
            while (i14 < this.f9639b.size() && q() - i15 > this.f9649l.f9744e) {
                if (l0.f9663f[yVar.ordinal()] != 1) {
                    List<t0.b.C0202b<Key, Value>> list = this.f9639b;
                    size = list.get(wb.l.k(list) - i14).a().size();
                } else {
                    size = this.f9639b.get(i14).a().size();
                }
                if (l0.f9664g[yVar.ordinal()] != 1) {
                    d10 = h1Var.c();
                } else {
                    d10 = h1Var.d();
                }
                if ((d10 - i15) - size < this.f9649l.f9741b) {
                    break;
                }
                i15 += size;
                i14++;
            }
            if (i14 != 0) {
                if (l0.f9665h[yVar.ordinal()] != 1) {
                    i10 = (wb.l.k(this.f9639b) - this.f9640c) - (i14 - 1);
                } else {
                    i10 = -this.f9640c;
                }
                if (l0.f9666i[yVar.ordinal()] != 1) {
                    i11 = wb.l.k(this.f9639b);
                    i12 = this.f9640c;
                } else {
                    i11 = i14 - 1;
                    i12 = this.f9640c;
                }
                int i16 = i11 - i12;
                if (this.f9649l.f9742c) {
                    i13 = (yVar == y.PREPEND ? o() : n()) + i15;
                }
                aVar = new f0.a<>(yVar, i10, i16, i13);
            }
            return aVar;
        }
        throw new IllegalArgumentException(("Drop LoadType must be PREPEND or APPEND, but got " + yVar).toString());
    }

    public final int j(y yVar) {
        jc.l.f(yVar, "loadType");
        int i10 = l0.f9658a[yVar.ordinal()];
        if (i10 == 1) {
            throw new IllegalArgumentException("Cannot get loadId for loadType: REFRESH");
        }
        if (i10 == 2) {
            return this.f9643f;
        }
        if (i10 == 3) {
            return this.f9644g;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Map<y, h1> k() {
        return this.f9647j;
    }

    public final int l() {
        return this.f9640c;
    }

    public final List<t0.b.C0202b<Key, Value>> m() {
        return this.f9639b;
    }

    public final int n() {
        if (this.f9649l.f9742c) {
            return this.f9642e;
        }
        return 0;
    }

    public final int o() {
        if (this.f9649l.f9742c) {
            return this.f9641d;
        }
        return 0;
    }

    public final w p() {
        return this.f9648k;
    }

    public final int q() {
        Iterator<T> it2 = this.f9639b.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            i10 += ((t0.b.C0202b) it2.next()).a().size();
        }
        return i10;
    }

    public final boolean r(int i10, y yVar, t0.b.C0202b<Key, Value> c0202b) {
        int c10;
        int b10;
        jc.l.f(yVar, "loadType");
        jc.l.f(c0202b, "page");
        int i11 = l0.f9661d[yVar.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 == 3) {
                    if (!this.f9639b.isEmpty()) {
                        if (i10 != this.f9644g) {
                            return false;
                        }
                        this.f9638a.add(c0202b);
                        if (c0202b.b() == Integer.MIN_VALUE) {
                            b10 = nc.g.a(n() - c0202b.a().size(), 0);
                        } else {
                            b10 = c0202b.b();
                        }
                        s(b10);
                        this.f9647j.remove(y.APPEND);
                    } else {
                        throw new IllegalStateException("should've received an init before append".toString());
                    }
                }
            } else if (!this.f9639b.isEmpty()) {
                if (i10 != this.f9643f) {
                    return false;
                }
                this.f9638a.add(0, c0202b);
                this.f9640c++;
                if (c0202b.c() == Integer.MIN_VALUE) {
                    c10 = nc.g.a(o() - c0202b.a().size(), 0);
                } else {
                    c10 = c0202b.c();
                }
                t(c10);
                this.f9647j.remove(y.PREPEND);
            } else {
                throw new IllegalStateException("should've received an init before prepend".toString());
            }
        } else {
            if (!this.f9639b.isEmpty()) {
                throw new IllegalStateException("cannot receive multiple init calls".toString());
            }
            if (i10 == 0) {
                this.f9638a.add(c0202b);
                this.f9640c = 0;
                s(c0202b.b());
                t(c0202b.c());
            } else {
                throw new IllegalStateException("init loadId must be the initial value, 0".toString());
            }
        }
        return true;
    }

    public final void s(int i10) {
        if (i10 == Integer.MIN_VALUE) {
            i10 = 0;
        }
        this.f9642e = i10;
    }

    public final void t(int i10) {
        if (i10 == Integer.MIN_VALUE) {
            i10 = 0;
        }
        this.f9641d = i10;
    }

    public final boolean u(y yVar, u uVar) {
        jc.l.f(yVar, "type");
        jc.l.f(uVar, "newState");
        if (jc.l.a(this.f9648k.d(yVar), uVar)) {
            return false;
        }
        this.f9648k = this.f9648k.h(yVar, uVar);
        return true;
    }

    public final f0<Value> v(t0.b.C0202b<Key, Value> c0202b, y yVar) {
        jc.l.f(c0202b, "$this$toPageEvent");
        jc.l.f(yVar, "loadType");
        int i10 = l0.f9659b[yVar.ordinal()];
        int i11 = 0;
        if (i10 != 1) {
            if (i10 == 2) {
                i11 = 0 - this.f9640c;
            } else {
                if (i10 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                i11 = (this.f9639b.size() - this.f9640c) - 1;
            }
        }
        List d10 = wb.k.d(new f1(i11, c0202b.a()));
        int i12 = l0.f9660c[yVar.ordinal()];
        if (i12 == 1) {
            return f0.b.f9398g.c(d10, o(), n(), new g(this.f9648k.g(), this.f9648k.f(), this.f9648k.e(), this.f9648k, null));
        }
        if (i12 == 2) {
            return f0.b.f9398g.b(d10, o(), new g(this.f9648k.g(), this.f9648k.f(), this.f9648k.e(), this.f9648k, null));
        }
        if (i12 == 3) {
            return f0.b.f9398g.a(d10, n(), new g(this.f9648k.g(), this.f9648k.f(), this.f9648k.e(), this.f9648k, null));
        }
        throw new NoWhenBranchMatchedException();
    }

    public /* synthetic */ k0(p0 p0Var, jc.g gVar) {
        this(p0Var);
    }
}
