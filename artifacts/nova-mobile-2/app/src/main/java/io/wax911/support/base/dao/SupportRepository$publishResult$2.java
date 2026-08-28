package io.wax911.support.base.dao;

import ac.d;
import bc.c;
import cc.f;
import cc.k;
import ic.p;
import rc.q0;

/* compiled from: SupportRepository.kt */
@f(c = "io.wax911.support.base.dao.SupportRepository$publishResult$2", f = "SupportRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SupportRepository$publishResult$2 extends k implements p<q0, d<? super vb.p>, Object> {
    public final /* synthetic */ V $results;
    public int label;
    public final /* synthetic */ SupportRepository<K, V> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportRepository$publishResult$2(SupportRepository<K, V> supportRepository, V v10, d<? super SupportRepository$publishResult$2> dVar) {
        super(2, dVar);
        this.this$0 = supportRepository;
        this.$results = v10;
    }

    @Override // cc.a
    public final d<vb.p> create(Object obj, d<?> dVar) {
        return new SupportRepository$publishResult$2(this.this$0, this.$results, dVar);
    }

    @Override // ic.p
    public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
        return ((SupportRepository$publishResult$2) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
    }

    @Override // cc.a
    public final Object invokeSuspend(Object obj) {
        c.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        vb.k.b(obj);
        this.this$0.getLiveData().o(this.$results);
        return vb.p.f15031a;
    }
}
