package com.anslayer.data.updater;

import ac.d;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import cc.f;
import cc.k;
import com.anslayer.R;
import d2.c;
import d2.e;
import d2.m;
import d2.p;
import d2.v;
import e0.j;
import i4.h;
import java.util.concurrent.TimeUnit;
import jc.g;
import jc.l;
import rc.q0;

/* compiled from: UpdaterWorker.kt */
/* loaded from: classes.dex */
public final class UpdaterWorker extends Worker {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4151l = new a(null);

    /* compiled from: UpdaterWorker.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final void a(Context context) {
            l.f(context, "context");
            c a10 = new c.a().b(m.CONNECTED).a();
            l.e(a10, "Builder()\n              …\n                .build()");
            TimeUnit timeUnit = TimeUnit.HOURS;
            p b10 = new p.a(UpdaterWorker.class, 24L, timeUnit, 12L, timeUnit).f(a10).a("UpdateChecker").b();
            l.e(b10, "Builder(\n               …\n                .build()");
            v.i(context).f("UpdateChecker", e.REPLACE, b10);
        }
    }

    /* compiled from: UpdaterWorker.kt */
    @f(c = "com.anslayer.data.updater.UpdaterWorker$doWork$1", f = "UpdaterWorker.kt", l = {19}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements ic.p<q0, d<? super ListenableWorker.a>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4152f;

        /* compiled from: UpdaterWorker.kt */
        /* loaded from: classes.dex */
        public static final class a extends jc.m implements ic.l<j.e, vb.p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ UpdaterWorker f4154f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ Intent f4155g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(UpdaterWorker updaterWorker, Intent intent) {
                super(1);
                this.f4154f = updaterWorker;
                this.f4155g = intent;
            }

            public final void a(j.e eVar) {
                l.f(eVar, "$this$update");
                eVar.k(this.f4154f.a().getString(R.string.app_name));
                eVar.j(this.f4154f.a().getString(R.string.update_check_notification_update_available));
                eVar.x(android.R.drawable.stat_sys_download_done);
                eVar.a(android.R.drawable.stat_sys_download_done, this.f4154f.a().getString(R.string.action_download), PendingIntent.getService(this.f4154f.a(), 0, this.f4155g, 134217728));
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ vb.p invoke(j.e eVar) {
                a(eVar);
                return vb.p.f15031a;
            }
        }

        public b(d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            return new b(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super ListenableWorker.a> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f4152f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    Context a10 = UpdaterWorker.this.a();
                    l.e(a10, "applicationContext");
                    i4.b bVar = new i4.b(a10);
                    this.f4152f = 1;
                    obj = bVar.a(this);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                h hVar = (h) obj;
                if (hVar instanceof h.a) {
                    String a11 = ((h.a) hVar).a().a();
                    Intent intent = new Intent(UpdaterWorker.this.a(), (Class<?>) UpdaterService.class);
                    intent.putExtra("com.anslayer.UpdaterService.DOWNLOAD_URL", a11);
                    UpdaterWorker updaterWorker = UpdaterWorker.this;
                    updaterWorker.q(new j.e(updaterWorker.a(), "common_channel"), new a(UpdaterWorker.this, intent));
                }
                return ListenableWorker.a.c();
            } catch (Exception unused) {
                return ListenableWorker.a.a();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdaterWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.f(context, "context");
        l.f(workerParameters, "workerParameters");
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a p() {
        Object b10;
        b10 = rc.j.b(null, new b(null), 1, null);
        l.e(b10, "override fun doWork(): R…      }\n\n        }\n\n    }");
        return (ListenableWorker.a) b10;
    }

    public final void q(j.e eVar, ic.l<? super j.e, vb.p> lVar) {
        l.f(eVar, "<this>");
        l.f(lVar, "block");
        lVar.invoke(eVar);
        Context a10 = a();
        l.e(a10, "applicationContext");
        e4.a.a(a10).notify(1, eVar.b());
    }
}
