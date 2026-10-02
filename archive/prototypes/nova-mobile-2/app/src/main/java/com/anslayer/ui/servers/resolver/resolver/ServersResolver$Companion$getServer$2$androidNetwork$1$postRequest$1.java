package com.anslayer.ui.servers.resolver.resolver;

import ac.d;
import bc.c;
import cc.f;
import cc.k;
import com.anslayer.ui.servers.resolver.resolver.ServersResolver;
import ic.p;
import java.util.HashMap;
import jc.x;
import rc.q0;
import v4.b;
import x4.e;

/* compiled from: ServersResolver.kt */
@f(c = "com.anslayer.ui.servers.resolver.resolver.ServersResolver$Companion$getServer$2$androidNetwork$1$postRequest$1", f = "ServersResolver.kt", l = {91}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ServersResolver$Companion$getServer$2$androidNetwork$1$postRequest$1 extends k implements p<q0, d<? super vb.p>, Object> {
    public final /* synthetic */ ServersResolver.OkCallback $okRussiaCallback;
    public final /* synthetic */ x<String> $responseString;
    public final /* synthetic */ b $serversModel;
    public final /* synthetic */ String $url;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServersResolver$Companion$getServer$2$androidNetwork$1$postRequest$1(String str, b bVar, ServersResolver.OkCallback okCallback, x<String> xVar, d<? super ServersResolver$Companion$getServer$2$androidNetwork$1$postRequest$1> dVar) {
        super(2, dVar);
        this.$url = str;
        this.$serversModel = bVar;
        this.$okRussiaCallback = okCallback;
        this.$responseString = xVar;
    }

    @Override // cc.a
    public final d<vb.p> create(Object obj, d<?> dVar) {
        return new ServersResolver$Companion$getServer$2$androidNetwork$1$postRequest$1(this.$url, this.$serversModel, this.$okRussiaCallback, this.$responseString, dVar);
    }

    @Override // ic.p
    public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
        return ((ServersResolver$Companion$getServer$2$androidNetwork$1$postRequest$1) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
    }

    /* JADX WARN: Type inference failed for: r8v2, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v9, types: [T, java.lang.String] */
    @Override // cc.a
    public final Object invokeSuspend(Object obj) {
        Object d10 = c.d();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                vb.k.b(obj);
                String str = this.$url;
                HashMap<String, String> c10 = this.$serversModel.c();
                this.label = 1;
                obj = e.j(str, c10, null, this, 4, null);
                if (obj == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            this.$responseString.f9194f = this.$okRussiaCallback.onSuccess(this.$url, (String) obj);
        } catch (Exception unused) {
            this.$responseString.f9194f = this.$okRussiaCallback.onError(this.$url);
        }
        return vb.p.f15031a;
    }
}
