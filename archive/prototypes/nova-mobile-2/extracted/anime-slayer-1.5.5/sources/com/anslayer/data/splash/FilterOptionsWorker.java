package com.anslayer.data.splash;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.anslayer.api.endpoint.SeriesEndpoint;
import io.wax911.support.extension.RetroErrorExtKt;
import io.wax911.support.util.SupportAnalyticUtil;
import ja.f;
import java.util.List;
import jc.g;
import jc.l;
import jc.m;
import o4.h;
import rd.q;
import vb.e;
import z3.b;

/* compiled from: FilterOptionsWorker.kt */
/* loaded from: classes.dex */
public final class FilterOptionsWorker extends Worker {

    /* renamed from: o, reason: collision with root package name */
    public static final a f4126o = new a(null);

    /* renamed from: l, reason: collision with root package name */
    public final e f4127l;

    /* renamed from: m, reason: collision with root package name */
    public final e f4128m;

    /* renamed from: n, reason: collision with root package name */
    public final e f4129n;

    /* compiled from: FilterOptionsWorker.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: FilterOptionsWorker.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<z3.b> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final z3.b invoke() {
            b.a aVar = z3.b.f17284d;
            Context a10 = FilterOptionsWorker.this.a();
            l.e(a10, "applicationContext");
            return aVar.getInstance(a10);
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f4131f = new c();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public c() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<f> {

        /* renamed from: f, reason: collision with root package name */
        public static final d f4132f = new d();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f> {
        }

        public d() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilterOptionsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.f(context, "context");
        l.f(workerParameters, "workerParameters");
        this.f4127l = vb.f.a(new b());
        this.f4128m = vb.f.a(c.f4131f);
        this.f4129n = vb.f.a(d.f4132f);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005f A[Catch: Exception -> 0x007c, TryCatch #0 {Exception -> 0x007c, blocks: (B:2:0x0000, B:6:0x0068, B:12:0x0007, B:15:0x001f, B:18:0x0039, B:21:0x0053, B:24:0x0063, B:25:0x005f, B:26:0x0046, B:29:0x004d, B:30:0x002c, B:33:0x0033, B:34:0x0012, B:37:0x0019), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0046 A[Catch: Exception -> 0x007c, TryCatch #0 {Exception -> 0x007c, blocks: (B:2:0x0000, B:6:0x0068, B:12:0x0007, B:15:0x001f, B:18:0x0039, B:21:0x0053, B:24:0x0063, B:25:0x005f, B:26:0x0046, B:29:0x004d, B:30:0x002c, B:33:0x0033, B:34:0x0012, B:37:0x0019), top: B:1:0x0000 }] */
    @Override // androidx.work.Worker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ListenableWorker.a p() {
        n4.d<List<o4.d>> a10;
        List<o4.d> b10;
        o4.c a11;
        n4.d<List<h>> b11;
        List<h> b12;
        o4.c a12;
        n4.d<List<o4.g>> c10;
        List<o4.g> b13;
        o4.c a13;
        try {
            n4.c<o4.c> x10 = x();
            if (x10 != null) {
                o4.c a14 = x10.a();
                o4.f fVar = null;
                if (a14 != null && (a10 = a14.a()) != null) {
                    b10 = a10.b();
                    t(b10);
                    a11 = x10.a();
                    if (a11 != null && (b11 = a11.b()) != null) {
                        b12 = b11.b();
                        w(b12);
                        a12 = x10.a();
                        if (a12 != null && (c10 = a12.c()) != null) {
                            b13 = c10.b();
                            v(b13);
                            a13 = x10.a();
                            if (a13 == null) {
                                fVar = a13.d();
                            }
                            u(fVar);
                        }
                        b13 = null;
                        v(b13);
                        a13 = x10.a();
                        if (a13 == null) {
                        }
                        u(fVar);
                    }
                    b12 = null;
                    w(b12);
                    a12 = x10.a();
                    if (a12 != null) {
                        b13 = c10.b();
                        v(b13);
                        a13 = x10.a();
                        if (a13 == null) {
                        }
                        u(fVar);
                    }
                    b13 = null;
                    v(b13);
                    a13 = x10.a();
                    if (a13 == null) {
                    }
                    u(fVar);
                }
                b10 = null;
                t(b10);
                a11 = x10.a();
                if (a11 != null) {
                    b12 = b11.b();
                    w(b12);
                    a12 = x10.a();
                    if (a12 != null) {
                    }
                    b13 = null;
                    v(b13);
                    a13 = x10.a();
                    if (a13 == null) {
                    }
                    u(fVar);
                }
                b12 = null;
                w(b12);
                a12 = x10.a();
                if (a12 != null) {
                }
                b13 = null;
                v(b13);
                a13 = x10.a();
                if (a13 == null) {
                }
                u(fVar);
            }
            if (x10 != null) {
                ListenableWorker.a c11 = ListenableWorker.a.c();
                l.e(c11, "success()");
                return c11;
            }
            ListenableWorker.a a15 = ListenableWorker.a.a();
            l.e(a15, "failure()");
            return a15;
        } catch (Exception e10) {
            e10.printStackTrace();
            SupportAnalyticUtil d10 = k7.b.d(a());
            if (d10 != null) {
                d10.log(toString(), e10.getLocalizedMessage());
            }
            ListenableWorker.a b14 = ListenableWorker.a.b();
            l.e(b14, "retry()");
            return b14;
        }
    }

    public final f q() {
        return (f) this.f4129n.getValue();
    }

    public final f4.d r() {
        return (f4.d) this.f4128m.getValue();
    }

    public final z3.b s() {
        return (z3.b) this.f4127l.getValue();
    }

    public final void t(List<o4.d> list) {
        if (list == null) {
            return;
        }
        r().e().set(list);
    }

    public final void u(o4.f fVar) {
        if (fVar != null) {
            r().P(q().t(fVar));
        }
    }

    public final void v(List<o4.g> list) {
        if (list == null) {
            return;
        }
        r().f().set(list);
    }

    public final void w(List<h> list) {
        if (list == null) {
            return;
        }
        r().g().set(list);
    }

    public final n4.c<o4.c> x() {
        q<n4.c<o4.c>> execute = ((SeriesEndpoint) s().b(SeriesEndpoint.class)).seriesFilters().execute();
        if (!execute.f()) {
            RetroErrorExtKt.logError(execute.d());
        }
        return execute.a();
    }
}
