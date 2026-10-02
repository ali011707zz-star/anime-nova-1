package com.anslayer.ui.servers.resolver.resolver;

import cc.d;
import cc.f;
import com.anslayer.ui.servers.resolver.resolver.ServersResolver;

/* compiled from: ServersResolver.kt */
@f(c = "com.anslayer.ui.servers.resolver.resolver.ServersResolver$Companion", f = "ServersResolver.kt", l = {122}, m = "getServer")
/* loaded from: classes.dex */
public final class ServersResolver$Companion$getServer$1 extends d {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ServersResolver.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServersResolver$Companion$getServer$1(ServersResolver.Companion companion, ac.d<? super ServersResolver$Companion$getServer$1> dVar) {
        super(dVar);
        this.this$0 = companion;
    }

    @Override // cc.a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getServer(null, null, null, null, null, this);
    }
}
