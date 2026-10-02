package l1;

import ic.p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import jc.j;
import jc.l;
import org.apache.http.HttpStatus;
import rc.a0;
import rc.q0;
import tc.x;
import vb.k;

/* compiled from: ChannelManager.kt */
/* loaded from: classes.dex */
public final class c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final c<T>.a f10190a;

    /* renamed from: b, reason: collision with root package name */
    public final q0 f10191b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10192c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f10193d;

    /* renamed from: e, reason: collision with root package name */
    public final p<T, ac.d<? super vb.p>, Object> f10194e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f10195f;

    /* renamed from: g, reason: collision with root package name */
    public final uc.f<T> f10196g;

    /* compiled from: ChannelManager.kt */
    /* loaded from: classes.dex */
    public final class a extends h<AbstractC0222c<T>> {

        /* renamed from: f, reason: collision with root package name */
        public final l1.a<T> f10197f;

        /* renamed from: g, reason: collision with root package name */
        public g<T> f10198g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f10199h;

        /* renamed from: i, reason: collision with root package name */
        public a0<vb.p> f10200i;

        /* renamed from: j, reason: collision with root package name */
        public final List<b<T>> f10201j;

        /* compiled from: ChannelManager.kt */
        @cc.f(c = "androidx.paging.multicast.ChannelManager$Actor", f = "ChannelManager.kt", l = {248}, m = "addEntry")
        /* renamed from: l1.c$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0220a extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f10203f;

            /* renamed from: g, reason: collision with root package name */
            public int f10204g;

            /* renamed from: i, reason: collision with root package name */
            public Object f10206i;

            /* renamed from: j, reason: collision with root package name */
            public Object f10207j;

            public C0220a(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f10203f = obj;
                this.f10204g |= Integer.MIN_VALUE;
                return a.this.i(null, this);
            }
        }

        /* compiled from: ChannelManager.kt */
        @cc.f(c = "androidx.paging.multicast.ChannelManager$Actor", f = "ChannelManager.kt", l = {216}, m = "doAdd")
        /* loaded from: classes.dex */
        public static final class b extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f10208f;

            /* renamed from: g, reason: collision with root package name */
            public int f10209g;

            /* renamed from: i, reason: collision with root package name */
            public Object f10211i;

            public b(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f10208f = obj;
                this.f10209g |= Integer.MIN_VALUE;
                return a.this.j(null, this);
            }
        }

        /* compiled from: ChannelManager.kt */
        @cc.f(c = "androidx.paging.multicast.ChannelManager$Actor", f = "ChannelManager.kt", l = {172, 181}, m = "doDispatchValue")
        /* renamed from: l1.c$a$c, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0221c extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f10212f;

            /* renamed from: g, reason: collision with root package name */
            public int f10213g;

            /* renamed from: i, reason: collision with root package name */
            public Object f10215i;

            /* renamed from: j, reason: collision with root package name */
            public Object f10216j;

            public C0221c(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f10212f = obj;
                this.f10213g |= Integer.MIN_VALUE;
                return a.this.l(null, this);
            }
        }

        /* compiled from: ChannelManager.kt */
        @cc.f(c = "androidx.paging.multicast.ChannelManager$Actor", f = "ChannelManager.kt", l = {HttpStatus.SC_PARTIAL_CONTENT}, m = "doRemove")
        /* loaded from: classes.dex */
        public static final class d extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f10217f;

            /* renamed from: g, reason: collision with root package name */
            public int f10218g;

            public d(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f10217f = obj;
                this.f10218g |= Integer.MIN_VALUE;
                return a.this.n(null, this);
            }
        }

        /* compiled from: ChannelManager.kt */
        @cc.f(c = "androidx.paging.multicast.ChannelManager$Actor", f = "ChannelManager.kt", l = {103, 104, 105}, m = "handle")
        /* loaded from: classes.dex */
        public static final class e extends cc.d {

            /* renamed from: f, reason: collision with root package name */
            public /* synthetic */ Object f10220f;

            /* renamed from: g, reason: collision with root package name */
            public int f10221g;

            public e(ac.d dVar) {
                super(dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                this.f10220f = obj;
                this.f10221g |= Integer.MIN_VALUE;
                return a.this.e(null, this);
            }
        }

        /* compiled from: ChannelManager.kt */
        /* loaded from: classes.dex */
        public static final /* synthetic */ class f extends j implements p<AbstractC0222c<T>, ac.d<? super vb.p>, Object> {
            public f(a aVar) {
                super(2, aVar, a.class, "send", "send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
            }

            @Override // ic.p
            /* renamed from: k, reason: merged with bridge method [inline-methods] */
            public final Object invoke(AbstractC0222c<T> abstractC0222c, ac.d<? super vb.p> dVar) {
                return ((a) this.f9173g).g(abstractC0222c, dVar);
            }
        }

        public a() {
            super(c.this.f10191b);
            this.f10197f = l1.d.b(c.this.f10192c);
            this.f10201j = new ArrayList();
        }

        @Override // l1.h
        public void f() {
            Iterator<T> it2 = this.f10201j.iterator();
            while (it2.hasNext()) {
                ((b) it2.next()).a();
            }
            this.f10201j.clear();
            g<T> gVar = this.f10198g;
            if (gVar != null) {
                gVar.d();
            }
        }

        public final void h() {
            if (this.f10198g == null) {
                g<T> p10 = p();
                this.f10198g = p10;
                this.f10199h = false;
                l.c(p10);
                p10.f();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final /* synthetic */ Object i(b<T> bVar, ac.d<? super vb.p> dVar) {
            C0220a c0220a;
            int i10;
            boolean z10;
            b bVar2;
            Iterator<T> it2;
            if (dVar instanceof C0220a) {
                c0220a = (C0220a) dVar;
                int i11 = c0220a.f10204g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    c0220a.f10204g = i11 - Integer.MIN_VALUE;
                    Object obj = c0220a.f10203f;
                    Object d10 = bc.c.d();
                    i10 = c0220a.f10204g;
                    if (i10 != 0) {
                        k.b(obj);
                        List<b<T>> list = this.f10201j;
                        if (!(list instanceof Collection) || !list.isEmpty()) {
                            Iterator<T> it3 = list.iterator();
                            while (it3.hasNext()) {
                                if (cc.b.a(((b) it3.next()).e(bVar)).booleanValue()) {
                                    z10 = false;
                                    break;
                                }
                            }
                        }
                        z10 = true;
                        if (z10) {
                            if (!bVar.d()) {
                                this.f10201j.add(bVar);
                                if (!this.f10197f.b().isEmpty()) {
                                    bVar2 = bVar;
                                    it2 = this.f10197f.b().iterator();
                                } else {
                                    a0<vb.p> a0Var = this.f10200i;
                                    if (a0Var != null) {
                                        cc.b.a(a0Var.N(vb.p.f15031a));
                                    }
                                    return vb.p.f15031a;
                                }
                            } else {
                                throw new IllegalStateException((bVar + " already received a value").toString());
                            }
                        } else {
                            throw new IllegalStateException((bVar + " is already in the list.").toString());
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        it2 = (Iterator) c0220a.f10207j;
                        b bVar3 = (b) c0220a.f10206i;
                        k.b(obj);
                        bVar2 = bVar3;
                    }
                    while (it2.hasNext()) {
                        AbstractC0222c.b.C0224c<T> c0224c = (AbstractC0222c.b.C0224c) it2.next();
                        c0220a.f10206i = bVar2;
                        c0220a.f10207j = it2;
                        c0220a.f10204g = 1;
                        if (bVar2.c(c0224c, c0220a) == d10) {
                            return d10;
                        }
                    }
                    return vb.p.f15031a;
                }
            }
            c0220a = new C0220a(dVar);
            Object obj2 = c0220a.f10203f;
            Object d102 = bc.c.d();
            i10 = c0220a.f10204g;
            if (i10 != 0) {
            }
            while (it2.hasNext()) {
            }
            return vb.p.f15031a;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final /* synthetic */ Object j(AbstractC0222c.a<T> aVar, ac.d<? super vb.p> dVar) {
            b bVar;
            int i10;
            a aVar2;
            if (dVar instanceof b) {
                bVar = (b) dVar;
                int i11 = bVar.f10209g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    bVar.f10209g = i11 - Integer.MIN_VALUE;
                    Object obj = bVar.f10208f;
                    Object d10 = bc.c.d();
                    i10 = bVar.f10209g;
                    if (i10 != 0) {
                        k.b(obj);
                        b<T> bVar2 = new b<>(aVar.a(), false, 2, null);
                        bVar.f10211i = this;
                        bVar.f10209g = 1;
                        if (i(bVar2, bVar) == d10) {
                            return d10;
                        }
                        aVar2 = this;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        aVar2 = (a) bVar.f10211i;
                        k.b(obj);
                    }
                    aVar2.h();
                    return vb.p.f15031a;
                }
            }
            bVar = new b(dVar);
            Object obj2 = bVar.f10208f;
            Object d102 = bc.c.d();
            i10 = bVar.f10209g;
            if (i10 != 0) {
            }
            aVar2.h();
            return vb.p.f15031a;
        }

        public final void k(AbstractC0222c.b.a<T> aVar) {
            this.f10199h = true;
            Iterator<T> it2 = this.f10201j.iterator();
            while (it2.hasNext()) {
                ((b) it2.next()).b(aVar.a());
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final /* synthetic */ Object l(AbstractC0222c.b.C0224c<T> c0224c, ac.d<? super vb.p> dVar) {
            C0221c c0221c;
            int i10;
            a aVar;
            AbstractC0222c.b.C0224c<T> c0224c2;
            Iterator<T> it2;
            if (dVar instanceof C0221c) {
                c0221c = (C0221c) dVar;
                int i11 = c0221c.f10213g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    c0221c.f10213g = i11 - Integer.MIN_VALUE;
                    Object obj = c0221c.f10212f;
                    Object d10 = bc.c.d();
                    i10 = c0221c.f10213g;
                    if (i10 != 0) {
                        k.b(obj);
                        p pVar = c.this.f10194e;
                        T b10 = c0224c.b();
                        c0221c.f10215i = this;
                        c0221c.f10216j = c0224c;
                        c0221c.f10213g = 1;
                        if (pVar.invoke(b10, c0221c) == d10) {
                            return d10;
                        }
                        aVar = this;
                    } else {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            it2 = (Iterator) c0221c.f10216j;
                            c0224c2 = (AbstractC0222c.b.C0224c) c0221c.f10215i;
                            k.b(obj);
                            while (it2.hasNext()) {
                                b bVar = (b) it2.next();
                                c0221c.f10215i = c0224c2;
                                c0221c.f10216j = it2;
                                c0221c.f10213g = 2;
                                if (bVar.c(c0224c2, c0221c) == d10) {
                                    return d10;
                                }
                            }
                            return vb.p.f15031a;
                        }
                        c0224c = (AbstractC0222c.b.C0224c) c0221c.f10216j;
                        aVar = (a) c0221c.f10215i;
                        k.b(obj);
                    }
                    aVar.f10197f.a(c0224c);
                    aVar.f10199h = true;
                    if (aVar.f10197f.isEmpty()) {
                        aVar.f10200i = c0224c.a();
                    }
                    Iterator<T> it3 = aVar.f10201j.iterator();
                    c0224c2 = c0224c;
                    it2 = it3;
                    while (it2.hasNext()) {
                    }
                    return vb.p.f15031a;
                }
            }
            c0221c = new C0221c(dVar);
            Object obj2 = c0221c.f10212f;
            Object d102 = bc.c.d();
            i10 = c0221c.f10213g;
            if (i10 != 0) {
            }
            aVar.f10197f.a(c0224c);
            aVar.f10199h = true;
            if (aVar.f10197f.isEmpty()) {
            }
            Iterator<T> it32 = aVar.f10201j.iterator();
            c0224c2 = c0224c;
            it2 = it32;
            while (it2.hasNext()) {
            }
            return vb.p.f15031a;
        }

        public final void m(g<T> gVar) {
            if (this.f10198g != gVar) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it2 = this.f10201j.iterator();
            while (it2.hasNext()) {
                b bVar = (b) it2.next();
                if (bVar.d()) {
                    if (!c.this.f10193d) {
                        bVar.a();
                    } else {
                        arrayList.add(bVar);
                    }
                } else if (!this.f10199h) {
                    if (!c.this.f10193d) {
                        bVar.a();
                    } else {
                        arrayList.add(bVar);
                    }
                } else {
                    arrayList2.add(bVar);
                }
            }
            this.f10201j.clear();
            this.f10201j.addAll(arrayList2);
            this.f10201j.addAll(arrayList);
            this.f10198g = null;
            if (!arrayList2.isEmpty()) {
                h();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final /* synthetic */ Object n(x<? super AbstractC0222c.b.C0224c<T>> xVar, ac.d<? super vb.p> dVar) {
            d dVar2;
            int i10;
            g<T> gVar;
            if (dVar instanceof d) {
                dVar2 = (d) dVar;
                int i11 = dVar2.f10218g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    dVar2.f10218g = i11 - Integer.MIN_VALUE;
                    Object obj = dVar2.f10217f;
                    Object d10 = bc.c.d();
                    i10 = dVar2.f10218g;
                    if (i10 != 0) {
                        k.b(obj);
                        int i12 = 0;
                        Iterator<b<T>> it2 = this.f10201j.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                i12 = -1;
                                break;
                            }
                            if (cc.b.a(it2.next().f(xVar)).booleanValue()) {
                                break;
                            }
                            i12++;
                        }
                        if (i12 >= 0) {
                            this.f10201j.remove(i12);
                            if (this.f10201j.isEmpty() && !c.this.f10195f && (gVar = this.f10198g) != null) {
                                dVar2.f10218g = 1;
                                if (gVar.e(dVar2) == d10) {
                                    return d10;
                                }
                            }
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        k.b(obj);
                    }
                    return vb.p.f15031a;
                }
            }
            dVar2 = new d(dVar);
            Object obj2 = dVar2.f10217f;
            Object d102 = bc.c.d();
            i10 = dVar2.f10218g;
            if (i10 != 0) {
            }
            return vb.p.f15031a;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
        @Override // l1.h
        /* renamed from: o, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object e(AbstractC0222c<T> abstractC0222c, ac.d<? super vb.p> dVar) {
            e eVar;
            int i10;
            if (dVar instanceof e) {
                eVar = (e) dVar;
                int i11 = eVar.f10221g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    eVar.f10221g = i11 - Integer.MIN_VALUE;
                    Object obj = eVar.f10220f;
                    Object d10 = bc.c.d();
                    i10 = eVar.f10221g;
                    if (i10 != 0) {
                        k.b(obj);
                        if (abstractC0222c instanceof AbstractC0222c.a) {
                            eVar.f10221g = 1;
                            if (j((AbstractC0222c.a) abstractC0222c, eVar) == d10) {
                                return d10;
                            }
                        } else if (abstractC0222c instanceof AbstractC0222c.C0225c) {
                            x<AbstractC0222c.b.C0224c<T>> a10 = ((AbstractC0222c.C0225c) abstractC0222c).a();
                            eVar.f10221g = 2;
                            if (n(a10, eVar) == d10) {
                                return d10;
                            }
                        } else if (abstractC0222c instanceof AbstractC0222c.b.C0224c) {
                            eVar.f10221g = 3;
                            if (l((AbstractC0222c.b.C0224c) abstractC0222c, eVar) == d10) {
                                return d10;
                            }
                        } else if (abstractC0222c instanceof AbstractC0222c.b.a) {
                            k((AbstractC0222c.b.a) abstractC0222c);
                        } else if (abstractC0222c instanceof AbstractC0222c.b.C0223b) {
                            m(((AbstractC0222c.b.C0223b) abstractC0222c).a());
                        }
                    } else {
                        if (i10 != 1 && i10 != 2 && i10 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        k.b(obj);
                    }
                    return vb.p.f15031a;
                }
            }
            eVar = new e(dVar);
            Object obj2 = eVar.f10220f;
            Object d102 = bc.c.d();
            i10 = eVar.f10221g;
            if (i10 != 0) {
            }
            return vb.p.f15031a;
        }

        public final g<T> p() {
            return new g<>(c.this.f10191b, c.this.f10196g, new f(this));
        }
    }

    /* compiled from: ChannelManager.kt */
    /* loaded from: classes.dex */
    public static final class b<T> {

        /* renamed from: a, reason: collision with root package name */
        public final x<AbstractC0222c.b.C0224c<T>> f10223a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f10224b;

        /* JADX WARN: Multi-variable type inference failed */
        public b(x<? super AbstractC0222c.b.C0224c<T>> xVar, boolean z10) {
            l.f(xVar, "channel");
            this.f10223a = xVar;
            this.f10224b = z10;
        }

        public final void a() {
            x.a.a(this.f10223a, null, 1, null);
        }

        public final void b(Throwable th) {
            l.f(th, "error");
            this.f10224b = true;
            this.f10223a.g(th);
        }

        public final Object c(AbstractC0222c.b.C0224c<T> c0224c, ac.d<? super vb.p> dVar) {
            this.f10224b = true;
            Object p10 = this.f10223a.p(c0224c, dVar);
            return p10 == bc.c.d() ? p10 : vb.p.f15031a;
        }

        public final boolean d() {
            return this.f10224b;
        }

        public final boolean e(b<T> bVar) {
            l.f(bVar, "entry");
            return this.f10223a == bVar.f10223a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return l.a(this.f10223a, bVar.f10223a) && this.f10224b == bVar.f10224b;
        }

        public final boolean f(x<? super AbstractC0222c.b.C0224c<T>> xVar) {
            l.f(xVar, "channel");
            return this.f10223a == xVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            x<AbstractC0222c.b.C0224c<T>> xVar = this.f10223a;
            int hashCode = (xVar != null ? xVar.hashCode() : 0) * 31;
            boolean z10 = this.f10224b;
            int i10 = z10;
            if (z10 != 0) {
                i10 = 1;
            }
            return hashCode + i10;
        }

        public String toString() {
            return "ChannelEntry(channel=" + this.f10223a + ", _receivedValue=" + this.f10224b + ")";
        }

        public /* synthetic */ b(x xVar, boolean z10, int i10, jc.g gVar) {
            this(xVar, (i10 & 2) != 0 ? false : z10);
        }
    }

    /* compiled from: ChannelManager.kt */
    /* renamed from: l1.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0222c<T> {

        /* compiled from: ChannelManager.kt */
        /* renamed from: l1.c$c$a */
        /* loaded from: classes.dex */
        public static final class a<T> extends AbstractC0222c<T> {

            /* renamed from: a, reason: collision with root package name */
            public final x<b.C0224c<T>> f10225a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(x<? super b.C0224c<T>> xVar) {
                super(null);
                l.f(xVar, "channel");
                this.f10225a = xVar;
            }

            public final x<b.C0224c<T>> a() {
                return this.f10225a;
            }
        }

        /* compiled from: ChannelManager.kt */
        /* renamed from: l1.c$c$b */
        /* loaded from: classes.dex */
        public static abstract class b<T> extends AbstractC0222c<T> {

            /* compiled from: ChannelManager.kt */
            /* renamed from: l1.c$c$b$a */
            /* loaded from: classes.dex */
            public static final class a<T> extends b<T> {

                /* renamed from: a, reason: collision with root package name */
                public final Throwable f10226a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public a(Throwable th) {
                    super(null);
                    l.f(th, "error");
                    this.f10226a = th;
                }

                public final Throwable a() {
                    return this.f10226a;
                }
            }

            /* compiled from: ChannelManager.kt */
            /* renamed from: l1.c$c$b$b, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0223b<T> extends b<T> {

                /* renamed from: a, reason: collision with root package name */
                public final g<T> f10227a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0223b(g<T> gVar) {
                    super(null);
                    l.f(gVar, "producer");
                    this.f10227a = gVar;
                }

                public final g<T> a() {
                    return this.f10227a;
                }
            }

            /* compiled from: ChannelManager.kt */
            /* renamed from: l1.c$c$b$c, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0224c<T> extends b<T> {

                /* renamed from: a, reason: collision with root package name */
                public final T f10228a;

                /* renamed from: b, reason: collision with root package name */
                public final a0<vb.p> f10229b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0224c(T t10, a0<vb.p> a0Var) {
                    super(null);
                    l.f(a0Var, "delivered");
                    this.f10228a = t10;
                    this.f10229b = a0Var;
                }

                public final a0<vb.p> a() {
                    return this.f10229b;
                }

                public final T b() {
                    return this.f10228a;
                }
            }

            public b() {
                super(null);
            }

            public /* synthetic */ b(jc.g gVar) {
                this();
            }
        }

        /* compiled from: ChannelManager.kt */
        /* renamed from: l1.c$c$c, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0225c<T> extends AbstractC0222c<T> {

            /* renamed from: a, reason: collision with root package name */
            public final x<b.C0224c<T>> f10230a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0225c(x<? super b.C0224c<T>> xVar) {
                super(null);
                l.f(xVar, "channel");
                this.f10230a = xVar;
            }

            public final x<b.C0224c<T>> a() {
                return this.f10230a;
            }
        }

        public AbstractC0222c() {
        }

        public /* synthetic */ AbstractC0222c(jc.g gVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(q0 q0Var, int i10, boolean z10, p<? super T, ? super ac.d<? super vb.p>, ? extends Object> pVar, boolean z11, uc.f<? extends T> fVar) {
        l.f(q0Var, "scope");
        l.f(pVar, "onEach");
        l.f(fVar, "upstream");
        this.f10191b = q0Var;
        this.f10192c = i10;
        this.f10193d = z10;
        this.f10194e = pVar;
        this.f10195f = z11;
        this.f10196g = fVar;
        this.f10190a = new a();
    }

    public final Object g(x<? super AbstractC0222c.b.C0224c<T>> xVar, ac.d<? super vb.p> dVar) {
        Object g10 = this.f10190a.g(new AbstractC0222c.a(xVar), dVar);
        return g10 == bc.c.d() ? g10 : vb.p.f15031a;
    }

    public final Object h(ac.d<? super vb.p> dVar) {
        Object c10 = this.f10190a.c(dVar);
        return c10 == bc.c.d() ? c10 : vb.p.f15031a;
    }

    public final Object i(x<? super AbstractC0222c.b.C0224c<T>> xVar, ac.d<? super vb.p> dVar) {
        Object g10 = this.f10190a.g(new AbstractC0222c.C0225c(xVar), dVar);
        return g10 == bc.c.d() ? g10 : vb.p.f15031a;
    }
}
