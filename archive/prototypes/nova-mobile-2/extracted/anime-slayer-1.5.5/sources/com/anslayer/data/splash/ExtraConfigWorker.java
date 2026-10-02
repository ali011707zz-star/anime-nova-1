package com.anslayer.data.splash;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.actions.SearchIntents;
import ja.f;
import ja.n;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.g;
import jc.l;
import jc.m;
import okhttp3.Response;
import okhttp3.ResponseBody;
import vb.e;

/* compiled from: ExtraConfigWorker.kt */
/* loaded from: classes.dex */
public final class ExtraConfigWorker extends Worker {

    /* renamed from: m, reason: collision with root package name */
    public static final a f4123m = new a(null);

    /* renamed from: l, reason: collision with root package name */
    public final e f4124l;

    /* compiled from: ExtraConfigWorker.kt */
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
    public static final class b extends oa.a<n> {
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<f> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f4125f = new c();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f> {
        }

        public c() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExtraConfigWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.f(context, "context");
        l.f(workerParameters, "workerParameters");
        this.f4124l = vb.f.a(c.f4125f);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a p() {
        Type b10;
        try {
            String str = null;
            Response execute = z3.b.f17284d.a().newCall(x4.e.b("http://ip-api.com/json", null, 2, null)).execute();
            if (!execute.isSuccessful()) {
                ListenableWorker.a b11 = ListenableWorker.a.b();
                l.e(b11, "retry()");
                return b11;
            }
            ResponseBody body = execute.body();
            if (body != null) {
                str = body.string();
            }
            if (str == null) {
                ListenableWorker.a b12 = ListenableWorker.a.b();
                l.e(b12, "retry()");
                return b12;
            }
            f q10 = q();
            Type type = new b().getType();
            l.b(type, "object : TypeToken<T>() {} .type");
            if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                b10 = ((ParameterizedType) type).getRawType();
                l.b(b10, "type.rawType");
            } else {
                b10 = com.github.salomonbrys.kotson.c.b(type);
            }
            Object l10 = q10.l(str, b10);
            l.b(l10, "fromJson(json, typeToken<T>())");
            n nVar = (n) l10;
            h4.a aVar = h4.a.f7265a;
            aVar.d(nVar.l(SearchIntents.EXTRA_QUERY).d());
            aVar.c(nVar.l("country").d());
            ListenableWorker.a c10 = ListenableWorker.a.c();
            l.e(c10, "success()");
            return c10;
        } catch (Exception unused) {
            ListenableWorker.a b13 = ListenableWorker.a.b();
            l.e(b13, "retry()");
            return b13;
        }
    }

    public final f q() {
        return (f) this.f4124l.getValue();
    }
}
