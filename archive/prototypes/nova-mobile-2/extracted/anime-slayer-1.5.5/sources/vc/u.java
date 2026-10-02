package vc;

import wc.e0;

/* compiled from: ChannelFlow.kt */
/* loaded from: classes2.dex */
public final class u<T> implements uc.g<T> {

    /* renamed from: f, reason: collision with root package name */
    public final ac.g f15098f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f15099g;

    /* renamed from: h, reason: collision with root package name */
    public final ic.p<T, ac.d<? super vb.p>, Object> f15100h;

    /* compiled from: ChannelFlow.kt */
    @cc.f(c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1", f = "ChannelFlow.kt", l = {212}, m = "invokeSuspend")
    /* loaded from: classes2.dex */
    public static final class a extends cc.k implements ic.p<T, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15101f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f15102g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ uc.g<T> f15103h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(uc.g<? super T> gVar, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f15103h = gVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            a aVar = new a(this.f15103h, dVar);
            aVar.f15102g = obj;
            return aVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(T t10, ac.d<? super vb.p> dVar) {
            return ((a) create(t10, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f15101f;
            if (i10 == 0) {
                vb.k.b(obj);
                Object obj2 = this.f15102g;
                uc.g<T> gVar = this.f15103h;
                this.f15101f = 1;
                if (gVar.a(obj2, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    public u(uc.g<? super T> gVar, ac.g gVar2) {
        this.f15098f = gVar2;
        this.f15099g = e0.b(gVar2);
        this.f15100h = new a(gVar, null);
    }

    @Override // uc.g
    public Object a(T t10, ac.d<? super vb.p> dVar) {
        Object b10 = e.b(this.f15098f, t10, this.f15099g, this.f15100h, dVar);
        return b10 == bc.c.d() ? b10 : vb.p.f15031a;
    }
}
