package io.wax911.support.base.dao;

import ac.d;
import bc.c;
import cc.f;
import cc.k;
import ic.p;
import rc.q0;

/* compiled from: SupportRepository.kt */
@f(c = "io.wax911.support.base.dao.SupportRepository$requestFromNetwork$1$2$1$1", f = "SupportRepository.kt", l = {82}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SupportRepository$requestFromNetwork$1$2$1$1 extends k implements p<q0, d<? super vb.p>, Object> {
    public int label;
    public final /* synthetic */ SupportRepository<K, V> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportRepository$requestFromNetwork$1$2$1$1(SupportRepository<K, V> supportRepository, d<? super SupportRepository$requestFromNetwork$1$2$1$1> dVar) {
        super(2, dVar);
        this.this$0 = supportRepository;
    }

    @Override // cc.a
    public final d<vb.p> create(Object obj, d<?> dVar) {
        return new SupportRepository$requestFromNetwork$1$2$1$1(this.this$0, dVar);
    }

    @Override // ic.p
    public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
        return ((SupportRepository$requestFromNetwork$1$2$1$1) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
    }

    @Override // cc.a
    public final Object invokeSuspend(Object obj) {
        Object d10 = c.d();
        int i10 = this.label;
        if (i10 == 0) {
            vb.k.b(obj);
            SupportRepository<K, V> supportRepository = this.this$0;
            this.label = 1;
            if (supportRepository.publishResult(null, this) == d10) {
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
