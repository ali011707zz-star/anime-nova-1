package com.anslayer.data.splash;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.anslayer.api.endpoint.ConfigurationEndpoint;
import io.wax911.support.extension.RetroErrorExtKt;
import io.wax911.support.util.SupportAnalyticUtil;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.g;
import jc.l;
import jc.m;
import rd.q;
import vb.e;
import vb.f;
import z3.b;

/* compiled from: AppConfigWorker.kt */
/* loaded from: classes.dex */
public final class AppConfigWorker extends Worker {

    /* renamed from: n, reason: collision with root package name */
    public static final a f4118n = new a(null);

    /* renamed from: l, reason: collision with root package name */
    public final e f4119l;

    /* renamed from: m, reason: collision with root package name */
    public final e f4120m;

    /* compiled from: AppConfigWorker.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class b extends oa.a<r4.b> {
    }

    /* compiled from: AppConfigWorker.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<z3.b> {
        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final z3.b invoke() {
            b.a aVar = z3.b.f17284d;
            Context a10 = AppConfigWorker.this.a();
            l.e(a10, "applicationContext");
            return aVar.getInstance(a10);
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final d f4122f = new d();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public d() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.f(context, "context");
        l.f(workerParameters, "workerParameters");
        this.f4119l = f.a(new c());
        this.f4120m = f.a(d.f4122f);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a p() {
        try {
            n4.c<r4.b> t10 = t();
            if (t10 != null) {
                s(t10.a());
            }
            if (t10 != null) {
                ListenableWorker.a c10 = ListenableWorker.a.c();
                l.e(c10, "success()");
                return c10;
            }
            ListenableWorker.a a10 = ListenableWorker.a.a();
            l.e(a10, "failure()");
            return a10;
        } catch (Exception e10) {
            e10.printStackTrace();
            SupportAnalyticUtil d10 = k7.b.d(a());
            if (d10 != null) {
                d10.log(toString(), e10.getLocalizedMessage());
            }
            ListenableWorker.a b10 = ListenableWorker.a.b();
            l.e(b10, "retry()");
            return b10;
        }
    }

    public final f4.d q() {
        return (f4.d) this.f4120m.getValue();
    }

    public final z3.b r() {
        return (z3.b) this.f4119l.getValue();
    }

    public final void s(r4.b bVar) {
        r4.b bVar2;
        Type b10;
        if (bVar != null) {
            ja.f fVar = new ja.f();
            try {
                String n10 = q().n();
                l.c(n10);
                Type type = new b().getType();
                l.b(type, "object : TypeToken<T>() {} .type");
                if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = fVar.l(n10, b10);
                l.b(l10, "fromJson(json, typeToken<T>())");
                bVar2 = (r4.b) l10;
            } catch (Exception unused) {
                bVar2 = null;
            }
            String t10 = fVar.t(bVar);
            if (bVar2 != null && bVar2.t() != bVar.t()) {
                q().M().set(0L);
            }
            f4.d q10 = q();
            l.e(t10, "jsAdd");
            q10.O(t10);
            q().i(bVar);
        }
    }

    public final n4.c<r4.b> t() {
        q<n4.c<r4.b>> execute = ((ConfigurationEndpoint) r().b(ConfigurationEndpoint.class)).getApplicationConfiguration().execute();
        if (!execute.f()) {
            RetroErrorExtKt.logError(execute.d());
        }
        return execute.a();
    }
}
