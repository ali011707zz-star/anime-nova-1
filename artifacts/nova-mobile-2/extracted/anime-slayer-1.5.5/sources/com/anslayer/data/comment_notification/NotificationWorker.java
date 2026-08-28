package com.anslayer.data.comment_notification;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.a;
import com.anslayer.api.endpoint.UserEndpoint;
import d2.c;
import d2.m;
import d2.p;
import d2.v;
import f4.d;
import java.util.List;
import java.util.concurrent.TimeUnit;
import jc.g;
import jc.l;
import jc.y;
import rd.q;
import vb.e;
import vb.f;
import z3.b;

/* compiled from: NotificationWorker.kt */
/* loaded from: classes.dex */
public final class NotificationWorker extends Worker {

    /* renamed from: s, reason: collision with root package name */
    public static final a f4072s = new a(null);

    /* renamed from: l, reason: collision with root package name */
    public String f4073l;

    /* renamed from: m, reason: collision with root package name */
    public Long f4074m;

    /* renamed from: n, reason: collision with root package name */
    public String f4075n;

    /* renamed from: o, reason: collision with root package name */
    public String f4076o;

    /* renamed from: p, reason: collision with root package name */
    public final e f4077p;

    /* renamed from: q, reason: collision with root package name */
    public final e f4078q;

    /* renamed from: r, reason: collision with root package name */
    public final e f4079r;

    /* compiled from: NotificationWorker.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final void a(Context context) {
            l.f(context, "context");
            v.i(context).c("ListManagementWorker#Notification0001");
        }

        public final void b(Context context) {
            l.f(context, "context");
            d2.c a10 = new c.a().b(m.CONNECTED).a();
            l.e(a10, "Builder()\n              …\n                .build()");
            androidx.work.a a11 = new a.C0058a().g("arg_request_type", "GET_USER_NOTIFICATION").a();
            l.e(a11, "Builder()\n              …\n                .build()");
            TimeUnit timeUnit = TimeUnit.HOURS;
            p b10 = new p.a(NotificationWorker.class, 6L, timeUnit, 3L, timeUnit).f(a10).a("ListManagementWorker#Notification0001").g(a11).b();
            l.e(b10, "Builder(\n               …\n                .build()");
            v.i(context).f("ListManagementWorker#Notification0001", d2.e.KEEP, b10);
        }
    }

    /* compiled from: NotificationWorker.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<e7.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f4080f = new b();

        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e7.d invoke() {
            return new e7.d();
        }
    }

    /* compiled from: NotificationWorker.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<z3.b> {
        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final z3.b invoke() {
            b.a aVar = z3.b.f17284d;
            Context a10 = NotificationWorker.this.a();
            l.e(a10, "applicationContext");
            return aVar.getInstance(a10);
        }
    }

    /* compiled from: NotificationWorker.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.a<f4.d> {
        public d() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final f4.d invoke() {
            d.a aVar = f4.d.f6409r;
            Context a10 = NotificationWorker.this.a();
            l.e(a10, "applicationContext");
            return aVar.newInstance(a10);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.f(context, "context");
        l.f(workerParameters, "workerParameters");
        androidx.work.a c10 = workerParameters.c();
        this.f4074m = Long.valueOf(c10.j("notification_id", -1L));
        this.f4075n = c10.k("unread");
        this.f4076o = c10.k("all");
        this.f4073l = c10.k("arg_request_type");
        this.f4077p = f.a(new c());
        this.f4078q = f.a(b.f4080f);
        this.f4079r = f.a(new d());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a p() {
        if (t(y.b(UserEndpoint.class))) {
            ListenableWorker.a c10 = ListenableWorker.a.c();
            l.e(c10, "success()");
            return c10;
        }
        ListenableWorker.a a10 = ListenableWorker.a.a();
        l.e(a10, "failure()");
        return a10;
    }

    public final e7.d q() {
        return (e7.d) this.f4078q.getValue();
    }

    public final z3.b r() {
        return (z3.b) this.f4077p.getValue();
    }

    public final f4.d s() {
        return (f4.d) this.f4079r.getValue();
    }

    public final boolean t(oc.b<UserEndpoint> bVar) {
        n4.d<List<w4.b>> a10;
        UserEndpoint userEndpoint = (UserEndpoint) r().b(hc.a.a(bVar));
        try {
            if (l.a(this.f4073l, "GET_USER_NOTIFICATION")) {
                e7.d q10 = q();
                q10.d().put("count_only", Boolean.TRUE);
                q<n4.c<n4.d<List<w4.b>>>> execute = userEndpoint.getUserNotifications(q10.b()).execute();
                if (execute.f()) {
                    n4.c<n4.d<List<w4.b>>> a11 = execute.a();
                    Long l10 = null;
                    if (a11 != null && (a10 = a11.a()) != null) {
                        l10 = a10.a();
                    }
                    if (l10 != null) {
                        s().b0((int) l10.longValue());
                    }
                }
                return execute.f();
            }
            toString();
            l.m("Request type not defined, current type -> ", this.f4073l);
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
