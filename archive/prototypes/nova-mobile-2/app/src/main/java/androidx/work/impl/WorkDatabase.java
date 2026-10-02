package androidx.work.impl;

import android.content.Context;
import androidx.work.impl.a;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import m2.e;
import m2.k;
import m2.n;
import m2.q;
import m2.t;
import o1.m0;
import o1.p0;
import r1.g;
import r1.h;
import s1.c;

/* loaded from: classes.dex */
public abstract class WorkDatabase extends p0 {

    /* renamed from: o, reason: collision with root package name */
    public static final long f3309o = TimeUnit.DAYS.toMillis(1);

    /* loaded from: classes.dex */
    public class a implements h.c {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f3310a;

        public a(Context context) {
            this.f3310a = context;
        }

        @Override // r1.h.c
        public h a(h.b bVar) {
            h.b.a a10 = h.b.a(this.f3310a);
            a10.c(bVar.f12795b).b(bVar.f12796c).d(true);
            return new c().a(a10.a());
        }
    }

    /* loaded from: classes.dex */
    public class b extends p0.b {
        @Override // o1.p0.b
        public void c(g gVar) {
            super.c(gVar);
            gVar.g();
            try {
                gVar.s(WorkDatabase.J());
                gVar.g0();
            } finally {
                gVar.f();
            }
        }
    }

    public static WorkDatabase F(Context context, Executor executor, boolean z10) {
        p0.a a10;
        if (z10) {
            a10 = m0.c(context, WorkDatabase.class).c();
        } else {
            a10 = m0.a(context, WorkDatabase.class, e2.h.d());
            a10.f(new a(context));
        }
        return (WorkDatabase) a10.g(executor).a(H()).b(androidx.work.impl.a.f3319a).b(new a.g(context, 2, 3)).b(androidx.work.impl.a.f3320b).b(androidx.work.impl.a.f3321c).b(new a.g(context, 5, 6)).b(androidx.work.impl.a.f3322d).b(androidx.work.impl.a.f3323e).b(androidx.work.impl.a.f3324f).b(new a.h(context)).b(new a.g(context, 10, 11)).e().d();
    }

    public static p0.b H() {
        return new b();
    }

    public static long I() {
        return System.currentTimeMillis() - f3309o;
    }

    public static String J() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + I() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    public abstract m2.b G();

    public abstract e K();

    public abstract m2.h L();

    public abstract k M();

    public abstract n N();

    public abstract q O();

    public abstract t P();
}
