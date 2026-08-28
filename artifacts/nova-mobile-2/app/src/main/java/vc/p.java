package vc;

import ac.g;
import rc.f2;

/* compiled from: SafeCollector.kt */
/* loaded from: classes2.dex */
public final class p<T> extends cc.d implements uc.g<T> {

    /* renamed from: f, reason: collision with root package name */
    public final uc.g<T> f15086f;

    /* renamed from: g, reason: collision with root package name */
    public final ac.g f15087g;

    /* renamed from: h, reason: collision with root package name */
    public final int f15088h;

    /* renamed from: i, reason: collision with root package name */
    public ac.g f15089i;

    /* renamed from: j, reason: collision with root package name */
    public ac.d<? super vb.p> f15090j;

    /* compiled from: SafeCollector.kt */
    /* loaded from: classes2.dex */
    public static final class a extends jc.m implements ic.p<Integer, g.b, Integer> {

        /* renamed from: f, reason: collision with root package name */
        public static final a f15091f = new a();

        public a() {
            super(2);
        }

        public final Integer a(int i10, g.b bVar) {
            return Integer.valueOf(i10 + 1);
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ Integer invoke(Integer num, g.b bVar) {
            return a(num.intValue(), bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(uc.g<? super T> gVar, ac.g gVar2) {
        super(m.f15080f, ac.h.f543f);
        this.f15086f = gVar;
        this.f15087g = gVar2;
        this.f15088h = ((Number) gVar2.fold(0, a.f15091f)).intValue();
    }

    @Override // uc.g
    public Object a(T t10, ac.d<? super vb.p> dVar) {
        try {
            Object g10 = g(dVar, t10);
            if (g10 == bc.c.d()) {
                cc.h.c(dVar);
            }
            return g10 == bc.c.d() ? g10 : vb.p.f15031a;
        } catch (Throwable th) {
            this.f15089i = new i(th);
            throw th;
        }
    }

    public final void f(ac.g gVar, ac.g gVar2, T t10) {
        if (gVar2 instanceof i) {
            h((i) gVar2, t10);
        }
        r.a(this, gVar);
        this.f15089i = gVar;
    }

    public final Object g(ac.d<? super vb.p> dVar, T t10) {
        ac.g context = dVar.getContext();
        f2.h(context);
        ac.g gVar = this.f15089i;
        if (gVar != context) {
            f(context, gVar, t10);
        }
        this.f15090j = dVar;
        return q.a().i(this.f15086f, t10, this);
    }

    @Override // cc.a, cc.e
    public cc.e getCallerFrame() {
        ac.d<? super vb.p> dVar = this.f15090j;
        if (dVar instanceof cc.e) {
            return (cc.e) dVar;
        }
        return null;
    }

    @Override // cc.d, ac.d
    public ac.g getContext() {
        ac.d<? super vb.p> dVar = this.f15090j;
        ac.g context = dVar == null ? null : dVar.getContext();
        return context == null ? ac.h.f543f : context;
    }

    @Override // cc.a, cc.e
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final void h(i iVar, Object obj) {
        throw new IllegalStateException(qc.m.f("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + iVar.f15073f + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
    }

    @Override // cc.a
    public Object invokeSuspend(Object obj) {
        Throwable b10 = vb.j.b(obj);
        if (b10 != null) {
            this.f15089i = new i(b10);
        }
        ac.d<? super vb.p> dVar = this.f15090j;
        if (dVar != null) {
            dVar.resumeWith(obj);
        }
        return bc.c.d();
    }

    @Override // cc.d, cc.a
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }
}
