package io.wax911.support.base.dao;

import ac.d;
import android.content.Context;
import bc.c;
import cc.f;
import cc.k;
import ic.p;
import io.wax911.support.SupportExtentionKt;
import rc.q0;
import rc.y0;

/* compiled from: SupportRepository.kt */
@f(c = "io.wax911.support.base.dao.SupportRepository$requestFromNetwork$1$1", f = "SupportRepository.kt", l = {74, 75}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SupportRepository$requestFromNetwork$1$1 extends k implements p<q0, d<? super vb.p>, Object> {
    public final /* synthetic */ K $bundle;
    public final /* synthetic */ Context $it;
    public int label;
    public final /* synthetic */ SupportRepository<K, V> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportRepository$requestFromNetwork$1$1(Context context, SupportRepository<K, V> supportRepository, K k10, d<? super SupportRepository$requestFromNetwork$1$1> dVar) {
        super(2, dVar);
        this.$it = context;
        this.this$0 = supportRepository;
        this.$bundle = k10;
    }

    @Override // cc.a
    public final d<vb.p> create(Object obj, d<?> dVar) {
        return new SupportRepository$requestFromNetwork$1$1(this.$it, this.this$0, this.$bundle, dVar);
    }

    @Override // ic.p
    public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
        return ((SupportRepository$requestFromNetwork$1$1) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
    }

    @Override // cc.a
    public final Object invokeSuspend(Object obj) {
        Object d10 = c.d();
        int i10 = this.label;
        if (i10 == 0) {
            vb.k.b(obj);
            boolean isConnectedToNetwork = SupportExtentionKt.isConnectedToNetwork(this.$it);
            if (isConnectedToNetwork) {
                y0<vb.p> createNetworkClientRequest = this.this$0.createNetworkClientRequest(this.$bundle, this.$it);
                this.label = 1;
                if (createNetworkClientRequest.k0(this) == d10) {
                    return d10;
                }
            } else if (!isConnectedToNetwork) {
                y0<vb.p> requestFromCache = this.this$0.requestFromCache(this.$bundle, this.$it);
                this.label = 2;
                if (requestFromCache.k0(this) == d10) {
                    return d10;
                }
            }
        } else {
            if (i10 != 1 && i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
        }
        return vb.p.f15031a;
    }
}
