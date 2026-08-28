package k1;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* compiled from: CachedPageEventFlow.kt */
/* loaded from: classes.dex */
public final class m<T> {

    /* renamed from: a, reason: collision with root package name */
    public final o<T> f9667a = new o<>();

    /* renamed from: b, reason: collision with root package name */
    public List<e1<T>> f9668b = wb.l.i();

    /* renamed from: c, reason: collision with root package name */
    public final ad.b f9669c = ad.e.b(false, 1, null);

    /* compiled from: CachedPageEventFlow.kt */
    @cc.f(c = "androidx.paging.FlattenedPageController", f = "CachedPageEventFlow.kt", l = {310, 188}, m = "createTemporaryDownstream")
    /* loaded from: classes.dex */
    public static final class a extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9670f;

        /* renamed from: g, reason: collision with root package name */
        public int f9671g;

        /* renamed from: i, reason: collision with root package name */
        public Object f9673i;

        /* renamed from: j, reason: collision with root package name */
        public Object f9674j;

        /* renamed from: k, reason: collision with root package name */
        public Object f9675k;

        /* renamed from: l, reason: collision with root package name */
        public Object f9676l;

        /* renamed from: m, reason: collision with root package name */
        public int f9677m;

        public a(ac.d dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9670f = obj;
            this.f9671g |= Integer.MIN_VALUE;
            return m.this.a(this);
        }
    }

    /* compiled from: CachedPageEventFlow.kt */
    @cc.f(c = "androidx.paging.FlattenedPageController", f = "CachedPageEventFlow.kt", l = {297, 174}, m = "record")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9678f;

        /* renamed from: g, reason: collision with root package name */
        public int f9679g;

        /* renamed from: i, reason: collision with root package name */
        public Object f9681i;

        /* renamed from: j, reason: collision with root package name */
        public Object f9682j;

        /* renamed from: k, reason: collision with root package name */
        public Object f9683k;

        /* renamed from: l, reason: collision with root package name */
        public Object f9684l;

        /* renamed from: m, reason: collision with root package name */
        public Object f9685m;

        /* renamed from: n, reason: collision with root package name */
        public Object f9686n;

        public b(ac.d dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9678f = obj;
            this.f9679g |= Integer.MIN_VALUE;
            return m.this.b(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0086 A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:12:0x003b, B:15:0x0080, B:17:0x0086, B:19:0x008e, B:20:0x0091, B:33:0x006c), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(ac.d<? super e1<T>> dVar) {
        a aVar;
        int i10;
        m<T> mVar;
        ad.b bVar;
        e1 e1Var;
        e1 e1Var2;
        Iterator<T> it2;
        int i11;
        try {
            if (dVar instanceof a) {
                aVar = (a) dVar;
                int i12 = aVar.f9671g;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    aVar.f9671g = i12 - Integer.MIN_VALUE;
                    Object obj = aVar.f9670f;
                    Object d10 = bc.c.d();
                    i10 = aVar.f9671g;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        ad.b bVar2 = this.f9669c;
                        aVar.f9673i = this;
                        aVar.f9674j = bVar2;
                        aVar.f9671g = 1;
                        if (bVar2.b(null, aVar) == d10) {
                            return d10;
                        }
                        mVar = this;
                        bVar = bVar2;
                    } else {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            int i13 = aVar.f9677m;
                            it2 = (Iterator) aVar.f9676l;
                            e1Var = (e1) aVar.f9675k;
                            e1Var2 = (e1) aVar.f9674j;
                            bVar = (ad.b) aVar.f9673i;
                            vb.k.b(obj);
                            i11 = i13;
                            while (it2.hasNext()) {
                                T next = it2.next();
                                int i14 = i11 + 1;
                                if (i11 < 0) {
                                    wb.l.p();
                                }
                                wb.y<? extends f0<T>> yVar = new wb.y<>(cc.b.b(i11).intValue() - Integer.MIN_VALUE, (f0) next);
                                aVar.f9673i = bVar;
                                aVar.f9674j = e1Var2;
                                aVar.f9675k = e1Var;
                                aVar.f9676l = it2;
                                aVar.f9677m = i14;
                                aVar.f9671g = 2;
                                if (e1Var.c(yVar, aVar) == d10) {
                                    return d10;
                                }
                                i11 = i14;
                            }
                            return e1Var2;
                        }
                        ad.b bVar3 = (ad.b) aVar.f9674j;
                        mVar = (m) aVar.f9673i;
                        vb.k.b(obj);
                        bVar = bVar3;
                    }
                    e1Var = new e1();
                    e1Var2 = e1Var;
                    it2 = mVar.f9667a.b().iterator();
                    i11 = 0;
                    while (it2.hasNext()) {
                    }
                    return e1Var2;
                }
            }
            if (i10 != 0) {
            }
            e1Var = new e1();
            e1Var2 = e1Var;
            it2 = mVar.f9667a.b().iterator();
            i11 = 0;
            while (it2.hasNext()) {
            }
            return e1Var2;
        } finally {
            bVar.a(null);
        }
        aVar = new a(dVar);
        Object obj2 = aVar.f9670f;
        Object d102 = bc.c.d();
        i10 = aVar.f9671g;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0097 A[Catch: all -> 0x0044, TryCatch #0 {all -> 0x0044, blocks: (B:12:0x003f, B:13:0x00b3, B:15:0x0091, B:17:0x0097, B:21:0x00c7, B:25:0x00c3, B:29:0x0077), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c7 A[Catch: all -> 0x0044, TRY_LEAVE, TryCatch #0 {all -> 0x0044, blocks: (B:12:0x003f, B:13:0x00b3, B:15:0x0091, B:17:0x0097, B:21:0x00c7, B:25:0x00c3, B:29:0x0077), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c3 A[Catch: all -> 0x0044, TryCatch #0 {all -> 0x0044, blocks: (B:12:0x003f, B:13:0x00b3, B:15:0x0091, B:17:0x0097, B:21:0x00c7, B:25:0x00c3, B:29:0x0077), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00b0 -> B:13:0x00b3). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(wb.y<? extends f0<T>> yVar, ac.d<? super vb.p> dVar) {
        b bVar;
        int i10;
        m<T> mVar;
        ad.b bVar2;
        wb.y<? extends f0<T>> yVar2;
        m<T> mVar2;
        Collection arrayList;
        Iterator<T> it2;
        try {
            if (dVar instanceof b) {
                bVar = (b) dVar;
                int i11 = bVar.f9679g;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    bVar.f9679g = i11 - Integer.MIN_VALUE;
                    Object obj = bVar.f9678f;
                    Object d10 = bc.c.d();
                    i10 = bVar.f9679g;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        ad.b bVar3 = this.f9669c;
                        bVar.f9681i = this;
                        bVar.f9682j = yVar;
                        bVar.f9683k = bVar3;
                        bVar.f9679g = 1;
                        if (bVar3.b(null, bVar) == d10) {
                            return d10;
                        }
                        mVar = this;
                        bVar2 = bVar3;
                    } else if (i10 == 1) {
                        ad.b bVar4 = (ad.b) bVar.f9683k;
                        wb.y<? extends f0<T>> yVar3 = (wb.y) bVar.f9682j;
                        mVar = (m) bVar.f9681i;
                        vb.k.b(obj);
                        bVar2 = bVar4;
                        yVar = yVar3;
                    } else {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        T next = (T) bVar.f9686n;
                        it2 = (Iterator) bVar.f9685m;
                        arrayList = (Collection) bVar.f9684l;
                        mVar2 = (m) bVar.f9683k;
                        bVar2 = (ad.b) bVar.f9682j;
                        yVar2 = (wb.y) bVar.f9681i;
                        vb.k.b(obj);
                        if (cc.b.a(((Boolean) obj).booleanValue()).booleanValue()) {
                            arrayList.add(next);
                        }
                        if (!it2.hasNext()) {
                            next = it2.next();
                            bVar.f9681i = yVar2;
                            bVar.f9682j = bVar2;
                            bVar.f9683k = mVar2;
                            bVar.f9684l = arrayList;
                            bVar.f9685m = it2;
                            bVar.f9686n = next;
                            bVar.f9679g = 2;
                            obj = ((e1) next).c(yVar2, bVar);
                            if (obj == d10) {
                                return d10;
                            }
                            if (cc.b.a(((Boolean) obj).booleanValue()).booleanValue()) {
                            }
                            if (!it2.hasNext()) {
                                mVar2.f9668b = (List) arrayList;
                                return vb.p.f15031a;
                            }
                        }
                    }
                    mVar.f9667a.a(yVar.b());
                    List<e1<T>> list = mVar.f9668b;
                    yVar2 = yVar;
                    mVar2 = mVar;
                    arrayList = new ArrayList();
                    it2 = list.iterator();
                    if (!it2.hasNext()) {
                    }
                }
            }
            if (i10 != 0) {
            }
            mVar.f9667a.a(yVar.b());
            List<e1<T>> list2 = mVar.f9668b;
            yVar2 = yVar;
            mVar2 = mVar;
            arrayList = new ArrayList();
            it2 = list2.iterator();
            if (!it2.hasNext()) {
            }
        } finally {
            bVar2.a(null);
        }
        bVar = new b(dVar);
        Object obj2 = bVar.f9678f;
        Object d102 = bc.c.d();
        i10 = bVar.f9679g;
    }
}
