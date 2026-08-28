package com.anslayer.ui.servers.resolver.resolver;

import ac.d;
import android.content.Context;
import android.webkit.WebView;
import bc.c;
import cc.f;
import cc.k;
import com.anslayer.ui.servers.resolver.resolver.ServersResolver;
import ic.p;
import java.util.concurrent.TimeUnit;
import jc.x;
import rc.d3;
import rc.q0;
import v4.b;
import x4.e;

/* compiled from: ServersResolver.kt */
@f(c = "com.anslayer.ui.servers.resolver.resolver.ServersResolver$Companion$getServer$2$androidNetwork$1$webViewRequest$1", f = "ServersResolver.kt", l = {104}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ServersResolver$Companion$getServer$2$androidNetwork$1$webViewRequest$1 extends k implements p<q0, d<? super vb.p>, Object> {
    public final /* synthetic */ Context $context;
    public final /* synthetic */ ServersResolver.OkCallback $okRussiaCallback;
    public final /* synthetic */ x<String> $responseString;
    public final /* synthetic */ b $serversModel;
    public final /* synthetic */ String $url;
    public int label;

    /* compiled from: ServersResolver.kt */
    @f(c = "com.anslayer.ui.servers.resolver.resolver.ServersResolver$Companion$getServer$2$androidNetwork$1$webViewRequest$1$1", f = "ServersResolver.kt", l = {106}, m = "invokeSuspend")
    /* renamed from: com.anslayer.ui.servers.resolver.resolver.ServersResolver$Companion$getServer$2$androidNetwork$1$webViewRequest$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends k implements p<q0, d<? super vb.p>, Object> {
        public final /* synthetic */ Context $context;
        public final /* synthetic */ ServersResolver.OkCallback $okRussiaCallback;
        public final /* synthetic */ x<String> $responseString;
        public final /* synthetic */ b $serversModel;
        public final /* synthetic */ String $url;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, String str, b bVar, ServersResolver.OkCallback okCallback, x<String> xVar, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$context = context;
            this.$url = str;
            this.$serversModel = bVar;
            this.$okRussiaCallback = okCallback;
            this.$responseString = xVar;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            return new AnonymousClass1(this.$context, this.$url, this.$serversModel, this.$okRussiaCallback, this.$responseString, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
            return ((AnonymousClass1) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Type inference failed for: r5v5, types: [T, java.lang.String] */
        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = c.d();
            int i10 = this.label;
            if (i10 == 0) {
                vb.k.b(obj);
                WebView webView = new WebView(this.$context);
                String str = this.$url;
                int j10 = this.$serversModel.j();
                this.label = 1;
                obj = e.f(webView, str, j10, this);
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
            return vb.p.f15031a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServersResolver$Companion$getServer$2$androidNetwork$1$webViewRequest$1(ServersResolver.OkCallback okCallback, String str, x<String> xVar, Context context, b bVar, d<? super ServersResolver$Companion$getServer$2$androidNetwork$1$webViewRequest$1> dVar) {
        super(2, dVar);
        this.$okRussiaCallback = okCallback;
        this.$url = str;
        this.$responseString = xVar;
        this.$context = context;
        this.$serversModel = bVar;
    }

    @Override // cc.a
    public final d<vb.p> create(Object obj, d<?> dVar) {
        return new ServersResolver$Companion$getServer$2$androidNetwork$1$webViewRequest$1(this.$okRussiaCallback, this.$url, this.$responseString, this.$context, this.$serversModel, dVar);
    }

    @Override // ic.p
    public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
        return ((ServersResolver$Companion$getServer$2$androidNetwork$1$webViewRequest$1) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
    }

    /* JADX WARN: Type inference failed for: r13v2, types: [T, java.lang.String] */
    @Override // cc.a
    public final Object invokeSuspend(Object obj) {
        Object d10 = c.d();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                vb.k.b(obj);
                long millis = TimeUnit.SECONDS.toMillis(30L);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$context, this.$url, this.$serversModel, this.$okRussiaCallback, this.$responseString, null);
                this.label = 1;
                if (d3.c(millis, anonymousClass1, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
        } catch (Exception unused) {
            this.$responseString.f9194f = this.$okRussiaCallback.onError(this.$url);
        }
        return vb.p.f15031a;
    }
}
