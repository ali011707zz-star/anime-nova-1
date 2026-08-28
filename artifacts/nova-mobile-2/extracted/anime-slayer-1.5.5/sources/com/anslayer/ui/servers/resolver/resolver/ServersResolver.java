package com.anslayer.ui.servers.resolver.resolver;

import ac.d;
import android.content.Context;
import android.os.Build;
import bc.c;
import com.google.android.gms.common.internal.ImagesContract;
import com.squareup.duktape.Duktape;
import ja.f;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.g;
import jc.l;
import jc.x;
import rc.c2;
import v4.a;
import v4.b;
import vb.k;

/* compiled from: ServersResolver.kt */
/* loaded from: classes.dex */
public final class ServersResolver {
    public static final Companion Companion = new Companion(null);

    /* compiled from: ServersResolver.kt */
    /* loaded from: classes.dex */
    public interface AndroidNetwork {
        void getRequest(String str);

        void postRequest(String str);

        void webViewRequest(String str);
    }

    /* compiled from: ServersResolver.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:29:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object getServer(final Context context, String str, String str2, final b bVar, f fVar, d<? super a> dVar) {
            ServersResolver$Companion$getServer$1 serversResolver$Companion$getServer$1;
            int i10;
            Closeable closeable;
            final x xVar;
            Throwable th;
            f fVar2 = fVar;
            if (dVar instanceof ServersResolver$Companion$getServer$1) {
                serversResolver$Companion$getServer$1 = (ServersResolver$Companion$getServer$1) dVar;
                int i11 = serversResolver$Companion$getServer$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    serversResolver$Companion$getServer$1.label = i11 - Integer.MIN_VALUE;
                    Object obj = serversResolver$Companion$getServer$1.result;
                    Object d10 = c.d();
                    i10 = serversResolver$Companion$getServer$1.label;
                    if (i10 != 0) {
                        k.b(obj);
                        Duktape h10 = Duktape.h();
                        try {
                            h10.k(str2);
                            Object x10 = h10.x("Decoder", OdDecoder.class);
                            l.e(x10, "duktape[\"Decoder\", OdDecoder::class.java]");
                            OdDecoder odDecoder = (OdDecoder) x10;
                            if (odDecoder.isEnabled()) {
                                Object x11 = h10.x("OkCallback", OkCallback.class);
                                l.e(x11, "duktape[\"OkCallback\", OkCallback::class.java]");
                                final OkCallback okCallback = (OkCallback) x11;
                                xVar = new x();
                                xVar.f9194f = "";
                                final x xVar2 = new x();
                                h10.z("AndroidNetwork", AndroidNetwork.class, new AndroidNetwork() { // from class: com.anslayer.ui.servers.resolver.resolver.ServersResolver$Companion$getServer$2$androidNetwork$1
                                    /* JADX WARN: Type inference failed for: r9v1, types: [T, rc.c2] */
                                    @Override // com.anslayer.ui.servers.resolver.resolver.ServersResolver.AndroidNetwork
                                    public void getRequest(String str3) {
                                        l.f(str3, ImagesContract.URL);
                                        xVar2.f9194f = e7.b.b(new ServersResolver$Companion$getServer$2$androidNetwork$1$getRequest$1(str3, bVar, okCallback, xVar, null));
                                    }

                                    /* JADX WARN: Type inference failed for: r9v1, types: [T, rc.c2] */
                                    @Override // com.anslayer.ui.servers.resolver.resolver.ServersResolver.AndroidNetwork
                                    public void postRequest(String str3) {
                                        l.f(str3, ImagesContract.URL);
                                        xVar2.f9194f = e7.b.b(new ServersResolver$Companion$getServer$2$androidNetwork$1$postRequest$1(str3, bVar, okCallback, xVar, null));
                                    }

                                    /* JADX WARN: Type inference failed for: r10v1, types: [T, rc.c2] */
                                    @Override // com.anslayer.ui.servers.resolver.resolver.ServersResolver.AndroidNetwork
                                    public void webViewRequest(String str3) {
                                        l.f(str3, ImagesContract.URL);
                                        xVar2.f9194f = e7.b.b(new ServersResolver$Companion$getServer$2$androidNetwork$1$webViewRequest$1(okCallback, str3, xVar, context, bVar, null));
                                    }
                                });
                                String t10 = fVar2.t(bVar);
                                l.e(t10, "gson.toJson(serversModel)");
                                odDecoder.request(str, t10);
                                c2 c2Var = (c2) xVar2.f9194f;
                                if (c2Var != null) {
                                    serversResolver$Companion$getServer$1.L$0 = fVar2;
                                    serversResolver$Companion$getServer$1.L$1 = h10;
                                    serversResolver$Companion$getServer$1.L$2 = xVar;
                                    serversResolver$Companion$getServer$1.label = 1;
                                    if (c2Var.U(serversResolver$Companion$getServer$1) == d10) {
                                        return d10;
                                    }
                                }
                                closeable = h10;
                            } else {
                                throw new Exception("server is not enabled");
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            closeable = h10;
                            th = th;
                            throw th;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        x xVar3 = (x) serversResolver$Companion$getServer$1.L$2;
                        closeable = (Closeable) serversResolver$Companion$getServer$1.L$1;
                        f fVar3 = (f) serversResolver$Companion$getServer$1.L$0;
                        try {
                            k.b(obj);
                            xVar = xVar3;
                            fVar2 = fVar3;
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            try {
                                throw th;
                            } catch (Throwable th4) {
                                gc.b.a(closeable, th);
                                throw th4;
                            }
                        }
                    }
                    Object k10 = fVar2.k((String) xVar.f9194f, a.class);
                    l.e(k10, "gson.fromJson(responseSt… ServerModel::class.java)");
                    gc.b.a(closeable, null);
                    return k10;
                }
            }
            serversResolver$Companion$getServer$1 = new ServersResolver$Companion$getServer$1(this, dVar);
            Object obj2 = serversResolver$Companion$getServer$1.result;
            Object d102 = c.d();
            i10 = serversResolver$Companion$getServer$1.label;
            if (i10 != 0) {
            }
            Object k102 = fVar2.k((String) xVar.f9194f, a.class);
            l.e(k102, "gson.fromJson(responseSt… ServerModel::class.java)");
            gc.b.a(closeable, null);
            return k102;
        }

        public final List<b> getServers(String str) {
            Type b10;
            l.f(str, "ol6");
            Duktape h10 = Duktape.h();
            try {
                h10.k(str);
                Object x10 = h10.x("DeServers", SDecoder.class);
                l.e(x10, "duktape[\"DeServers\", SDecoder::class.java]");
                String deServers = ((SDecoder) x10).deServers();
                f fVar = new f();
                Type type = new oa.a<List<? extends b>>() { // from class: com.anslayer.ui.servers.resolver.resolver.ServersResolver$Companion$getServers$lambda-2$$inlined$fromJson$1
                }.getType();
                l.b(type, "object : TypeToken<T>() {} .type");
                if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = fVar.l(deServers, b10);
                l.b(l10, "fromJson(json, typeToken<T>())");
                ArrayList arrayList = new ArrayList();
                Iterator it2 = ((List) l10).iterator();
                while (true) {
                    boolean z10 = true;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    if (41 < ((b) next).i()) {
                        z10 = false;
                    }
                    if (z10) {
                        arrayList.add(next);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (Build.VERSION.SDK_INT >= ((b) obj).e()) {
                        arrayList2.add(obj);
                    }
                }
                gc.b.a(h10, null);
                return arrayList2;
            } finally {
            }
        }
    }

    /* compiled from: ServersResolver.kt */
    /* loaded from: classes.dex */
    public interface OdDecoder {
        String decode(String str, String str2);

        boolean isEnabled();

        void request(String str, String str2);
    }

    /* compiled from: ServersResolver.kt */
    /* loaded from: classes.dex */
    public interface OkCallback {
        String onError(String str);

        String onSuccess(String str, String str2);
    }

    /* compiled from: ServersResolver.kt */
    /* loaded from: classes.dex */
    public interface SDecoder {
        String deServers();
    }
}
