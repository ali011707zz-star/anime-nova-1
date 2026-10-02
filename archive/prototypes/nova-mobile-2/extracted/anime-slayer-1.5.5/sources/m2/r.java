package m2;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import d2.u;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import m2.p;
import o1.p0;
import o1.s0;
import o1.v0;

/* compiled from: WorkSpecDao_Impl.java */
/* loaded from: classes.dex */
public final class r implements q {

    /* renamed from: a, reason: collision with root package name */
    public final p0 f10852a;

    /* renamed from: b, reason: collision with root package name */
    public final o1.s<p> f10853b;

    /* renamed from: c, reason: collision with root package name */
    public final v0 f10854c;

    /* renamed from: d, reason: collision with root package name */
    public final v0 f10855d;

    /* renamed from: e, reason: collision with root package name */
    public final v0 f10856e;

    /* renamed from: f, reason: collision with root package name */
    public final v0 f10857f;

    /* renamed from: g, reason: collision with root package name */
    public final v0 f10858g;

    /* renamed from: h, reason: collision with root package name */
    public final v0 f10859h;

    /* renamed from: i, reason: collision with root package name */
    public final v0 f10860i;

    /* renamed from: j, reason: collision with root package name */
    public final v0 f10861j;

    /* compiled from: WorkSpecDao_Impl.java */
    /* loaded from: classes.dex */
    public class a implements Callable<List<p.c>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ s0 f10862a;

        public a(s0 s0Var) {
            this.f10862a = s0Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<p.c> call() throws Exception {
            r.this.f10852a.e();
            try {
                Cursor b10 = q1.c.b(r.this.f10852a, this.f10862a, true, null);
                try {
                    int e10 = q1.b.e(b10, "id");
                    int e11 = q1.b.e(b10, "state");
                    int e12 = q1.b.e(b10, "output");
                    int e13 = q1.b.e(b10, "run_attempt_count");
                    s.a aVar = new s.a();
                    s.a aVar2 = new s.a();
                    while (b10.moveToNext()) {
                        if (!b10.isNull(e10)) {
                            String string = b10.getString(e10);
                            if (((ArrayList) aVar.get(string)) == null) {
                                aVar.put(string, new ArrayList());
                            }
                        }
                        if (!b10.isNull(e10)) {
                            String string2 = b10.getString(e10);
                            if (((ArrayList) aVar2.get(string2)) == null) {
                                aVar2.put(string2, new ArrayList());
                            }
                        }
                    }
                    b10.moveToPosition(-1);
                    r.this.x(aVar);
                    r.this.w(aVar2);
                    ArrayList arrayList = new ArrayList(b10.getCount());
                    while (b10.moveToNext()) {
                        ArrayList arrayList2 = !b10.isNull(e10) ? (ArrayList) aVar.get(b10.getString(e10)) : null;
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = !b10.isNull(e10) ? (ArrayList) aVar2.get(b10.getString(e10)) : null;
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList();
                        }
                        p.c cVar = new p.c();
                        cVar.f10846a = b10.getString(e10);
                        cVar.f10847b = v.f(b10.getInt(e11));
                        cVar.f10848c = androidx.work.a.g(b10.getBlob(e12));
                        cVar.f10849d = b10.getInt(e13);
                        cVar.f10850e = arrayList2;
                        cVar.f10851f = arrayList3;
                        arrayList.add(cVar);
                    }
                    r.this.f10852a.D();
                    return arrayList;
                } finally {
                    b10.close();
                }
            } finally {
                r.this.f10852a.i();
            }
        }

        public void finalize() {
            this.f10862a.release();
        }
    }

    /* compiled from: WorkSpecDao_Impl.java */
    /* loaded from: classes.dex */
    public class b extends o1.s<p> {
        public b(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // o1.s
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void g(r1.k kVar, p pVar) {
            String str = pVar.f10827a;
            if (str == null) {
                kVar.H(1);
            } else {
                kVar.u(1, str);
            }
            kVar.f0(2, v.h(pVar.f10828b));
            String str2 = pVar.f10829c;
            if (str2 == null) {
                kVar.H(3);
            } else {
                kVar.u(3, str2);
            }
            String str3 = pVar.f10830d;
            if (str3 == null) {
                kVar.H(4);
            } else {
                kVar.u(4, str3);
            }
            byte[] m10 = androidx.work.a.m(pVar.f10831e);
            if (m10 == null) {
                kVar.H(5);
            } else {
                kVar.n0(5, m10);
            }
            byte[] m11 = androidx.work.a.m(pVar.f10832f);
            if (m11 == null) {
                kVar.H(6);
            } else {
                kVar.n0(6, m11);
            }
            kVar.f0(7, pVar.f10833g);
            kVar.f0(8, pVar.f10834h);
            kVar.f0(9, pVar.f10835i);
            kVar.f0(10, pVar.f10837k);
            kVar.f0(11, v.a(pVar.f10838l));
            kVar.f0(12, pVar.f10839m);
            kVar.f0(13, pVar.f10840n);
            kVar.f0(14, pVar.f10841o);
            kVar.f0(15, pVar.f10842p);
            kVar.f0(16, pVar.f10843q ? 1L : 0L);
            d2.c cVar = pVar.f10836j;
            if (cVar != null) {
                kVar.f0(17, v.g(cVar.b()));
                kVar.f0(18, cVar.g() ? 1L : 0L);
                kVar.f0(19, cVar.h() ? 1L : 0L);
                kVar.f0(20, cVar.f() ? 1L : 0L);
                kVar.f0(21, cVar.i() ? 1L : 0L);
                kVar.f0(22, cVar.c());
                kVar.f0(23, cVar.d());
                byte[] c10 = v.c(cVar.a());
                if (c10 == null) {
                    kVar.H(24);
                    return;
                } else {
                    kVar.n0(24, c10);
                    return;
                }
            }
            kVar.H(17);
            kVar.H(18);
            kVar.H(19);
            kVar.H(20);
            kVar.H(21);
            kVar.H(22);
            kVar.H(23);
            kVar.H(24);
        }
    }

    /* compiled from: WorkSpecDao_Impl.java */
    /* loaded from: classes.dex */
    public class c extends v0 {
        public c(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* compiled from: WorkSpecDao_Impl.java */
    /* loaded from: classes.dex */
    public class d extends v0 {
        public d(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* compiled from: WorkSpecDao_Impl.java */
    /* loaded from: classes.dex */
    public class e extends v0 {
        public e(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "UPDATE workspec SET period_start_time=? WHERE id=?";
        }
    }

    /* compiled from: WorkSpecDao_Impl.java */
    /* loaded from: classes.dex */
    public class f extends v0 {
        public f(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    /* compiled from: WorkSpecDao_Impl.java */
    /* loaded from: classes.dex */
    public class g extends v0 {
        public g(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* compiled from: WorkSpecDao_Impl.java */
    /* loaded from: classes.dex */
    public class h extends v0 {
        public h(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* compiled from: WorkSpecDao_Impl.java */
    /* loaded from: classes.dex */
    public class i extends v0 {
        public i(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    /* compiled from: WorkSpecDao_Impl.java */
    /* loaded from: classes.dex */
    public class j extends v0 {
        public j(p0 p0Var) {
            super(p0Var);
        }

        @Override // o1.v0
        public String d() {
            return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
        }
    }

    public r(p0 p0Var) {
        this.f10852a = p0Var;
        this.f10853b = new b(p0Var);
        this.f10854c = new c(p0Var);
        this.f10855d = new d(p0Var);
        this.f10856e = new e(p0Var);
        this.f10857f = new f(p0Var);
        this.f10858g = new g(p0Var);
        this.f10859h = new h(p0Var);
        this.f10860i = new i(p0Var);
        this.f10861j = new j(p0Var);
    }

    @Override // m2.q
    public void a(String str) {
        this.f10852a.d();
        r1.k a10 = this.f10854c.a();
        if (str == null) {
            a10.H(1);
        } else {
            a10.u(1, str);
        }
        this.f10852a.e();
        try {
            a10.A();
            this.f10852a.D();
        } finally {
            this.f10852a.i();
            this.f10854c.f(a10);
        }
    }

    @Override // m2.q
    public int b(u.a aVar, String... strArr) {
        this.f10852a.d();
        StringBuilder b10 = q1.f.b();
        b10.append("UPDATE workspec SET state=");
        b10.append("?");
        b10.append(" WHERE id IN (");
        q1.f.a(b10, strArr.length);
        b10.append(")");
        r1.k f10 = this.f10852a.f(b10.toString());
        f10.f0(1, v.h(aVar));
        int i10 = 2;
        for (String str : strArr) {
            if (str == null) {
                f10.H(i10);
            } else {
                f10.u(i10, str);
            }
            i10++;
        }
        this.f10852a.e();
        try {
            int A = f10.A();
            this.f10852a.D();
            return A;
        } finally {
            this.f10852a.i();
        }
    }

    @Override // m2.q
    public List<p> c() {
        s0 s0Var;
        int e10;
        int e11;
        int e12;
        int e13;
        int e14;
        int e15;
        int e16;
        int e17;
        int e18;
        int e19;
        int e20;
        int e21;
        int e22;
        int e23;
        s0 h10 = s0.h("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=1", 0);
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            e10 = q1.b.e(b10, "required_network_type");
            e11 = q1.b.e(b10, "requires_charging");
            e12 = q1.b.e(b10, "requires_device_idle");
            e13 = q1.b.e(b10, "requires_battery_not_low");
            e14 = q1.b.e(b10, "requires_storage_not_low");
            e15 = q1.b.e(b10, "trigger_content_update_delay");
            e16 = q1.b.e(b10, "trigger_max_content_delay");
            e17 = q1.b.e(b10, "content_uri_triggers");
            e18 = q1.b.e(b10, "id");
            e19 = q1.b.e(b10, "state");
            e20 = q1.b.e(b10, "worker_class_name");
            e21 = q1.b.e(b10, "input_merger_class_name");
            e22 = q1.b.e(b10, "input");
            e23 = q1.b.e(b10, "output");
            s0Var = h10;
        } catch (Throwable th) {
            th = th;
            s0Var = h10;
        }
        try {
            int e24 = q1.b.e(b10, "initial_delay");
            int e25 = q1.b.e(b10, "interval_duration");
            int e26 = q1.b.e(b10, "flex_duration");
            int e27 = q1.b.e(b10, "run_attempt_count");
            int e28 = q1.b.e(b10, "backoff_policy");
            int e29 = q1.b.e(b10, "backoff_delay_duration");
            int e30 = q1.b.e(b10, "period_start_time");
            int e31 = q1.b.e(b10, "minimum_retention_duration");
            int e32 = q1.b.e(b10, "schedule_requested_at");
            int e33 = q1.b.e(b10, "run_in_foreground");
            int i10 = e23;
            ArrayList arrayList = new ArrayList(b10.getCount());
            while (b10.moveToNext()) {
                String string = b10.getString(e18);
                int i11 = e18;
                String string2 = b10.getString(e20);
                int i12 = e20;
                d2.c cVar = new d2.c();
                int i13 = e10;
                cVar.k(v.e(b10.getInt(e10)));
                cVar.m(b10.getInt(e11) != 0);
                cVar.n(b10.getInt(e12) != 0);
                cVar.l(b10.getInt(e13) != 0);
                cVar.o(b10.getInt(e14) != 0);
                int i14 = e11;
                int i15 = e12;
                cVar.p(b10.getLong(e15));
                cVar.q(b10.getLong(e16));
                cVar.j(v.b(b10.getBlob(e17)));
                p pVar = new p(string, string2);
                pVar.f10828b = v.f(b10.getInt(e19));
                pVar.f10830d = b10.getString(e21);
                pVar.f10831e = androidx.work.a.g(b10.getBlob(e22));
                int i16 = i10;
                pVar.f10832f = androidx.work.a.g(b10.getBlob(i16));
                i10 = i16;
                int i17 = e24;
                pVar.f10833g = b10.getLong(i17);
                int i18 = e22;
                int i19 = e25;
                pVar.f10834h = b10.getLong(i19);
                int i20 = e13;
                int i21 = e26;
                pVar.f10835i = b10.getLong(i21);
                int i22 = e27;
                pVar.f10837k = b10.getInt(i22);
                int i23 = e28;
                pVar.f10838l = v.d(b10.getInt(i23));
                e26 = i21;
                int i24 = e29;
                pVar.f10839m = b10.getLong(i24);
                int i25 = e30;
                pVar.f10840n = b10.getLong(i25);
                e30 = i25;
                int i26 = e31;
                pVar.f10841o = b10.getLong(i26);
                int i27 = e32;
                pVar.f10842p = b10.getLong(i27);
                int i28 = e33;
                pVar.f10843q = b10.getInt(i28) != 0;
                pVar.f10836j = cVar;
                arrayList.add(pVar);
                e32 = i27;
                e33 = i28;
                e11 = i14;
                e22 = i18;
                e24 = i17;
                e25 = i19;
                e27 = i22;
                e18 = i11;
                e20 = i12;
                e10 = i13;
                e31 = i26;
                e12 = i15;
                e29 = i24;
                e13 = i20;
                e28 = i23;
            }
            b10.close();
            s0Var.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            b10.close();
            s0Var.release();
            throw th;
        }
    }

    @Override // m2.q
    public List<String> d() {
        s0 h10 = s0.h("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            ArrayList arrayList = new ArrayList(b10.getCount());
            while (b10.moveToNext()) {
                arrayList.add(b10.getString(0));
            }
            return arrayList;
        } finally {
            b10.close();
            h10.release();
        }
    }

    @Override // m2.q
    public void e(p pVar) {
        this.f10852a.d();
        this.f10852a.e();
        try {
            this.f10853b.h(pVar);
            this.f10852a.D();
        } finally {
            this.f10852a.i();
        }
    }

    @Override // m2.q
    public int f(String str, long j10) {
        this.f10852a.d();
        r1.k a10 = this.f10859h.a();
        a10.f0(1, j10);
        if (str == null) {
            a10.H(2);
        } else {
            a10.u(2, str);
        }
        this.f10852a.e();
        try {
            int A = a10.A();
            this.f10852a.D();
            return A;
        } finally {
            this.f10852a.i();
            this.f10859h.f(a10);
        }
    }

    @Override // m2.q
    public List<String> g(String str) {
        s0 h10 = s0.h("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            ArrayList arrayList = new ArrayList(b10.getCount());
            while (b10.moveToNext()) {
                arrayList.add(b10.getString(0));
            }
            return arrayList;
        } finally {
            b10.close();
            h10.release();
        }
    }

    @Override // m2.q
    public List<p.b> h(String str) {
        s0 h10 = s0.h("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            int e10 = q1.b.e(b10, "id");
            int e11 = q1.b.e(b10, "state");
            ArrayList arrayList = new ArrayList(b10.getCount());
            while (b10.moveToNext()) {
                p.b bVar = new p.b();
                bVar.f10844a = b10.getString(e10);
                bVar.f10845b = v.f(b10.getInt(e11));
                arrayList.add(bVar);
            }
            return arrayList;
        } finally {
            b10.close();
            h10.release();
        }
    }

    @Override // m2.q
    public List<p> i(long j10) {
        s0 s0Var;
        s0 h10 = s0.h("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC", 1);
        h10.f0(1, j10);
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            int e10 = q1.b.e(b10, "required_network_type");
            int e11 = q1.b.e(b10, "requires_charging");
            int e12 = q1.b.e(b10, "requires_device_idle");
            int e13 = q1.b.e(b10, "requires_battery_not_low");
            int e14 = q1.b.e(b10, "requires_storage_not_low");
            int e15 = q1.b.e(b10, "trigger_content_update_delay");
            int e16 = q1.b.e(b10, "trigger_max_content_delay");
            int e17 = q1.b.e(b10, "content_uri_triggers");
            int e18 = q1.b.e(b10, "id");
            int e19 = q1.b.e(b10, "state");
            int e20 = q1.b.e(b10, "worker_class_name");
            int e21 = q1.b.e(b10, "input_merger_class_name");
            int e22 = q1.b.e(b10, "input");
            int e23 = q1.b.e(b10, "output");
            s0Var = h10;
            try {
                int e24 = q1.b.e(b10, "initial_delay");
                int e25 = q1.b.e(b10, "interval_duration");
                int e26 = q1.b.e(b10, "flex_duration");
                int e27 = q1.b.e(b10, "run_attempt_count");
                int e28 = q1.b.e(b10, "backoff_policy");
                int e29 = q1.b.e(b10, "backoff_delay_duration");
                int e30 = q1.b.e(b10, "period_start_time");
                int e31 = q1.b.e(b10, "minimum_retention_duration");
                int e32 = q1.b.e(b10, "schedule_requested_at");
                int e33 = q1.b.e(b10, "run_in_foreground");
                int i10 = e23;
                ArrayList arrayList = new ArrayList(b10.getCount());
                while (b10.moveToNext()) {
                    String string = b10.getString(e18);
                    int i11 = e18;
                    String string2 = b10.getString(e20);
                    int i12 = e20;
                    d2.c cVar = new d2.c();
                    int i13 = e10;
                    cVar.k(v.e(b10.getInt(e10)));
                    cVar.m(b10.getInt(e11) != 0);
                    cVar.n(b10.getInt(e12) != 0);
                    cVar.l(b10.getInt(e13) != 0);
                    cVar.o(b10.getInt(e14) != 0);
                    int i14 = e11;
                    int i15 = e12;
                    cVar.p(b10.getLong(e15));
                    cVar.q(b10.getLong(e16));
                    cVar.j(v.b(b10.getBlob(e17)));
                    p pVar = new p(string, string2);
                    pVar.f10828b = v.f(b10.getInt(e19));
                    pVar.f10830d = b10.getString(e21);
                    pVar.f10831e = androidx.work.a.g(b10.getBlob(e22));
                    int i16 = i10;
                    pVar.f10832f = androidx.work.a.g(b10.getBlob(i16));
                    int i17 = e24;
                    i10 = i16;
                    pVar.f10833g = b10.getLong(i17);
                    int i18 = e21;
                    int i19 = e25;
                    pVar.f10834h = b10.getLong(i19);
                    int i20 = e13;
                    int i21 = e26;
                    pVar.f10835i = b10.getLong(i21);
                    int i22 = e27;
                    pVar.f10837k = b10.getInt(i22);
                    int i23 = e28;
                    pVar.f10838l = v.d(b10.getInt(i23));
                    e26 = i21;
                    int i24 = e29;
                    pVar.f10839m = b10.getLong(i24);
                    int i25 = e30;
                    pVar.f10840n = b10.getLong(i25);
                    e30 = i25;
                    int i26 = e31;
                    pVar.f10841o = b10.getLong(i26);
                    int i27 = e32;
                    pVar.f10842p = b10.getLong(i27);
                    int i28 = e33;
                    pVar.f10843q = b10.getInt(i28) != 0;
                    pVar.f10836j = cVar;
                    arrayList.add(pVar);
                    e11 = i14;
                    e32 = i27;
                    e33 = i28;
                    e21 = i18;
                    e24 = i17;
                    e25 = i19;
                    e27 = i22;
                    e18 = i11;
                    e20 = i12;
                    e10 = i13;
                    e31 = i26;
                    e12 = i15;
                    e29 = i24;
                    e13 = i20;
                    e28 = i23;
                }
                b10.close();
                s0Var.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                b10.close();
                s0Var.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            s0Var = h10;
        }
    }

    @Override // m2.q
    public u.a j(String str) {
        s0 h10 = s0.h("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            return b10.moveToFirst() ? v.f(b10.getInt(0)) : null;
        } finally {
            b10.close();
            h10.release();
        }
    }

    @Override // m2.q
    public List<p> k(int i10) {
        s0 s0Var;
        s0 h10 = s0.h("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        h10.f0(1, i10);
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            int e10 = q1.b.e(b10, "required_network_type");
            int e11 = q1.b.e(b10, "requires_charging");
            int e12 = q1.b.e(b10, "requires_device_idle");
            int e13 = q1.b.e(b10, "requires_battery_not_low");
            int e14 = q1.b.e(b10, "requires_storage_not_low");
            int e15 = q1.b.e(b10, "trigger_content_update_delay");
            int e16 = q1.b.e(b10, "trigger_max_content_delay");
            int e17 = q1.b.e(b10, "content_uri_triggers");
            int e18 = q1.b.e(b10, "id");
            int e19 = q1.b.e(b10, "state");
            int e20 = q1.b.e(b10, "worker_class_name");
            int e21 = q1.b.e(b10, "input_merger_class_name");
            int e22 = q1.b.e(b10, "input");
            int e23 = q1.b.e(b10, "output");
            s0Var = h10;
            try {
                int e24 = q1.b.e(b10, "initial_delay");
                int e25 = q1.b.e(b10, "interval_duration");
                int e26 = q1.b.e(b10, "flex_duration");
                int e27 = q1.b.e(b10, "run_attempt_count");
                int e28 = q1.b.e(b10, "backoff_policy");
                int e29 = q1.b.e(b10, "backoff_delay_duration");
                int e30 = q1.b.e(b10, "period_start_time");
                int e31 = q1.b.e(b10, "minimum_retention_duration");
                int e32 = q1.b.e(b10, "schedule_requested_at");
                int e33 = q1.b.e(b10, "run_in_foreground");
                int i11 = e23;
                ArrayList arrayList = new ArrayList(b10.getCount());
                while (b10.moveToNext()) {
                    String string = b10.getString(e18);
                    int i12 = e18;
                    String string2 = b10.getString(e20);
                    int i13 = e20;
                    d2.c cVar = new d2.c();
                    int i14 = e10;
                    cVar.k(v.e(b10.getInt(e10)));
                    cVar.m(b10.getInt(e11) != 0);
                    cVar.n(b10.getInt(e12) != 0);
                    cVar.l(b10.getInt(e13) != 0);
                    cVar.o(b10.getInt(e14) != 0);
                    int i15 = e11;
                    int i16 = e12;
                    cVar.p(b10.getLong(e15));
                    cVar.q(b10.getLong(e16));
                    cVar.j(v.b(b10.getBlob(e17)));
                    p pVar = new p(string, string2);
                    pVar.f10828b = v.f(b10.getInt(e19));
                    pVar.f10830d = b10.getString(e21);
                    pVar.f10831e = androidx.work.a.g(b10.getBlob(e22));
                    int i17 = i11;
                    pVar.f10832f = androidx.work.a.g(b10.getBlob(i17));
                    i11 = i17;
                    int i18 = e24;
                    pVar.f10833g = b10.getLong(i18);
                    int i19 = e21;
                    int i20 = e25;
                    pVar.f10834h = b10.getLong(i20);
                    int i21 = e13;
                    int i22 = e26;
                    pVar.f10835i = b10.getLong(i22);
                    int i23 = e27;
                    pVar.f10837k = b10.getInt(i23);
                    int i24 = e28;
                    pVar.f10838l = v.d(b10.getInt(i24));
                    e26 = i22;
                    int i25 = e29;
                    pVar.f10839m = b10.getLong(i25);
                    int i26 = e30;
                    pVar.f10840n = b10.getLong(i26);
                    e30 = i26;
                    int i27 = e31;
                    pVar.f10841o = b10.getLong(i27);
                    int i28 = e32;
                    pVar.f10842p = b10.getLong(i28);
                    int i29 = e33;
                    pVar.f10843q = b10.getInt(i29) != 0;
                    pVar.f10836j = cVar;
                    arrayList.add(pVar);
                    e32 = i28;
                    e33 = i29;
                    e11 = i15;
                    e21 = i19;
                    e24 = i18;
                    e25 = i20;
                    e27 = i23;
                    e18 = i12;
                    e20 = i13;
                    e10 = i14;
                    e31 = i27;
                    e12 = i16;
                    e29 = i25;
                    e13 = i21;
                    e28 = i24;
                }
                b10.close();
                s0Var.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                b10.close();
                s0Var.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            s0Var = h10;
        }
    }

    @Override // m2.q
    public p l(String str) {
        s0 s0Var;
        p pVar;
        s0 h10 = s0.h("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE id=?", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            int e10 = q1.b.e(b10, "required_network_type");
            int e11 = q1.b.e(b10, "requires_charging");
            int e12 = q1.b.e(b10, "requires_device_idle");
            int e13 = q1.b.e(b10, "requires_battery_not_low");
            int e14 = q1.b.e(b10, "requires_storage_not_low");
            int e15 = q1.b.e(b10, "trigger_content_update_delay");
            int e16 = q1.b.e(b10, "trigger_max_content_delay");
            int e17 = q1.b.e(b10, "content_uri_triggers");
            int e18 = q1.b.e(b10, "id");
            int e19 = q1.b.e(b10, "state");
            int e20 = q1.b.e(b10, "worker_class_name");
            int e21 = q1.b.e(b10, "input_merger_class_name");
            int e22 = q1.b.e(b10, "input");
            int e23 = q1.b.e(b10, "output");
            s0Var = h10;
            try {
                int e24 = q1.b.e(b10, "initial_delay");
                int e25 = q1.b.e(b10, "interval_duration");
                int e26 = q1.b.e(b10, "flex_duration");
                int e27 = q1.b.e(b10, "run_attempt_count");
                int e28 = q1.b.e(b10, "backoff_policy");
                int e29 = q1.b.e(b10, "backoff_delay_duration");
                int e30 = q1.b.e(b10, "period_start_time");
                int e31 = q1.b.e(b10, "minimum_retention_duration");
                int e32 = q1.b.e(b10, "schedule_requested_at");
                int e33 = q1.b.e(b10, "run_in_foreground");
                if (b10.moveToFirst()) {
                    String string = b10.getString(e18);
                    String string2 = b10.getString(e20);
                    d2.c cVar = new d2.c();
                    cVar.k(v.e(b10.getInt(e10)));
                    cVar.m(b10.getInt(e11) != 0);
                    cVar.n(b10.getInt(e12) != 0);
                    cVar.l(b10.getInt(e13) != 0);
                    cVar.o(b10.getInt(e14) != 0);
                    cVar.p(b10.getLong(e15));
                    cVar.q(b10.getLong(e16));
                    cVar.j(v.b(b10.getBlob(e17)));
                    p pVar2 = new p(string, string2);
                    pVar2.f10828b = v.f(b10.getInt(e19));
                    pVar2.f10830d = b10.getString(e21);
                    pVar2.f10831e = androidx.work.a.g(b10.getBlob(e22));
                    pVar2.f10832f = androidx.work.a.g(b10.getBlob(e23));
                    pVar2.f10833g = b10.getLong(e24);
                    pVar2.f10834h = b10.getLong(e25);
                    pVar2.f10835i = b10.getLong(e26);
                    pVar2.f10837k = b10.getInt(e27);
                    pVar2.f10838l = v.d(b10.getInt(e28));
                    pVar2.f10839m = b10.getLong(e29);
                    pVar2.f10840n = b10.getLong(e30);
                    pVar2.f10841o = b10.getLong(e31);
                    pVar2.f10842p = b10.getLong(e32);
                    pVar2.f10843q = b10.getInt(e33) != 0;
                    pVar2.f10836j = cVar;
                    pVar = pVar2;
                } else {
                    pVar = null;
                }
                b10.close();
                s0Var.release();
                return pVar;
            } catch (Throwable th) {
                th = th;
                b10.close();
                s0Var.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            s0Var = h10;
        }
    }

    @Override // m2.q
    public int m(String str) {
        this.f10852a.d();
        r1.k a10 = this.f10858g.a();
        if (str == null) {
            a10.H(1);
        } else {
            a10.u(1, str);
        }
        this.f10852a.e();
        try {
            int A = a10.A();
            this.f10852a.D();
            return A;
        } finally {
            this.f10852a.i();
            this.f10858g.f(a10);
        }
    }

    @Override // m2.q
    public LiveData<List<p.c>> n(List<String> list) {
        StringBuilder b10 = q1.f.b();
        b10.append("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (");
        int size = list.size();
        q1.f.a(b10, size);
        b10.append(")");
        s0 h10 = s0.h(b10.toString(), size + 0);
        int i10 = 1;
        for (String str : list) {
            if (str == null) {
                h10.H(i10);
            } else {
                h10.u(i10, str);
            }
            i10++;
        }
        return this.f10852a.m().e(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, new a(h10));
    }

    @Override // m2.q
    public List<String> o(String str) {
        s0 h10 = s0.h("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            ArrayList arrayList = new ArrayList(b10.getCount());
            while (b10.moveToNext()) {
                arrayList.add(b10.getString(0));
            }
            return arrayList;
        } finally {
            b10.close();
            h10.release();
        }
    }

    @Override // m2.q
    public List<androidx.work.a> p(String str) {
        s0 h10 = s0.h("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            h10.H(1);
        } else {
            h10.u(1, str);
        }
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            ArrayList arrayList = new ArrayList(b10.getCount());
            while (b10.moveToNext()) {
                arrayList.add(androidx.work.a.g(b10.getBlob(0)));
            }
            return arrayList;
        } finally {
            b10.close();
            h10.release();
        }
    }

    @Override // m2.q
    public int q(String str) {
        this.f10852a.d();
        r1.k a10 = this.f10857f.a();
        if (str == null) {
            a10.H(1);
        } else {
            a10.u(1, str);
        }
        this.f10852a.e();
        try {
            int A = a10.A();
            this.f10852a.D();
            return A;
        } finally {
            this.f10852a.i();
            this.f10857f.f(a10);
        }
    }

    @Override // m2.q
    public void r(String str, long j10) {
        this.f10852a.d();
        r1.k a10 = this.f10856e.a();
        a10.f0(1, j10);
        if (str == null) {
            a10.H(2);
        } else {
            a10.u(2, str);
        }
        this.f10852a.e();
        try {
            a10.A();
            this.f10852a.D();
        } finally {
            this.f10852a.i();
            this.f10856e.f(a10);
        }
    }

    @Override // m2.q
    public List<p> s() {
        s0 s0Var;
        int e10;
        int e11;
        int e12;
        int e13;
        int e14;
        int e15;
        int e16;
        int e17;
        int e18;
        int e19;
        int e20;
        int e21;
        int e22;
        int e23;
        s0 h10 = s0.h("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            e10 = q1.b.e(b10, "required_network_type");
            e11 = q1.b.e(b10, "requires_charging");
            e12 = q1.b.e(b10, "requires_device_idle");
            e13 = q1.b.e(b10, "requires_battery_not_low");
            e14 = q1.b.e(b10, "requires_storage_not_low");
            e15 = q1.b.e(b10, "trigger_content_update_delay");
            e16 = q1.b.e(b10, "trigger_max_content_delay");
            e17 = q1.b.e(b10, "content_uri_triggers");
            e18 = q1.b.e(b10, "id");
            e19 = q1.b.e(b10, "state");
            e20 = q1.b.e(b10, "worker_class_name");
            e21 = q1.b.e(b10, "input_merger_class_name");
            e22 = q1.b.e(b10, "input");
            e23 = q1.b.e(b10, "output");
            s0Var = h10;
        } catch (Throwable th) {
            th = th;
            s0Var = h10;
        }
        try {
            int e24 = q1.b.e(b10, "initial_delay");
            int e25 = q1.b.e(b10, "interval_duration");
            int e26 = q1.b.e(b10, "flex_duration");
            int e27 = q1.b.e(b10, "run_attempt_count");
            int e28 = q1.b.e(b10, "backoff_policy");
            int e29 = q1.b.e(b10, "backoff_delay_duration");
            int e30 = q1.b.e(b10, "period_start_time");
            int e31 = q1.b.e(b10, "minimum_retention_duration");
            int e32 = q1.b.e(b10, "schedule_requested_at");
            int e33 = q1.b.e(b10, "run_in_foreground");
            int i10 = e23;
            ArrayList arrayList = new ArrayList(b10.getCount());
            while (b10.moveToNext()) {
                String string = b10.getString(e18);
                int i11 = e18;
                String string2 = b10.getString(e20);
                int i12 = e20;
                d2.c cVar = new d2.c();
                int i13 = e10;
                cVar.k(v.e(b10.getInt(e10)));
                cVar.m(b10.getInt(e11) != 0);
                cVar.n(b10.getInt(e12) != 0);
                cVar.l(b10.getInt(e13) != 0);
                cVar.o(b10.getInt(e14) != 0);
                int i14 = e11;
                int i15 = e12;
                cVar.p(b10.getLong(e15));
                cVar.q(b10.getLong(e16));
                cVar.j(v.b(b10.getBlob(e17)));
                p pVar = new p(string, string2);
                pVar.f10828b = v.f(b10.getInt(e19));
                pVar.f10830d = b10.getString(e21);
                pVar.f10831e = androidx.work.a.g(b10.getBlob(e22));
                int i16 = i10;
                pVar.f10832f = androidx.work.a.g(b10.getBlob(i16));
                i10 = i16;
                int i17 = e24;
                pVar.f10833g = b10.getLong(i17);
                int i18 = e22;
                int i19 = e25;
                pVar.f10834h = b10.getLong(i19);
                int i20 = e13;
                int i21 = e26;
                pVar.f10835i = b10.getLong(i21);
                int i22 = e27;
                pVar.f10837k = b10.getInt(i22);
                int i23 = e28;
                pVar.f10838l = v.d(b10.getInt(i23));
                e26 = i21;
                int i24 = e29;
                pVar.f10839m = b10.getLong(i24);
                int i25 = e30;
                pVar.f10840n = b10.getLong(i25);
                e30 = i25;
                int i26 = e31;
                pVar.f10841o = b10.getLong(i26);
                int i27 = e32;
                pVar.f10842p = b10.getLong(i27);
                int i28 = e33;
                pVar.f10843q = b10.getInt(i28) != 0;
                pVar.f10836j = cVar;
                arrayList.add(pVar);
                e32 = i27;
                e33 = i28;
                e11 = i14;
                e22 = i18;
                e24 = i17;
                e25 = i19;
                e27 = i22;
                e18 = i11;
                e20 = i12;
                e10 = i13;
                e31 = i26;
                e12 = i15;
                e29 = i24;
                e13 = i20;
                e28 = i23;
            }
            b10.close();
            s0Var.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            b10.close();
            s0Var.release();
            throw th;
        }
    }

    @Override // m2.q
    public List<p> t(int i10) {
        s0 s0Var;
        s0 h10 = s0.h("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?", 1);
        h10.f0(1, i10);
        this.f10852a.d();
        Cursor b10 = q1.c.b(this.f10852a, h10, false, null);
        try {
            int e10 = q1.b.e(b10, "required_network_type");
            int e11 = q1.b.e(b10, "requires_charging");
            int e12 = q1.b.e(b10, "requires_device_idle");
            int e13 = q1.b.e(b10, "requires_battery_not_low");
            int e14 = q1.b.e(b10, "requires_storage_not_low");
            int e15 = q1.b.e(b10, "trigger_content_update_delay");
            int e16 = q1.b.e(b10, "trigger_max_content_delay");
            int e17 = q1.b.e(b10, "content_uri_triggers");
            int e18 = q1.b.e(b10, "id");
            int e19 = q1.b.e(b10, "state");
            int e20 = q1.b.e(b10, "worker_class_name");
            int e21 = q1.b.e(b10, "input_merger_class_name");
            int e22 = q1.b.e(b10, "input");
            int e23 = q1.b.e(b10, "output");
            s0Var = h10;
            try {
                int e24 = q1.b.e(b10, "initial_delay");
                int e25 = q1.b.e(b10, "interval_duration");
                int e26 = q1.b.e(b10, "flex_duration");
                int e27 = q1.b.e(b10, "run_attempt_count");
                int e28 = q1.b.e(b10, "backoff_policy");
                int e29 = q1.b.e(b10, "backoff_delay_duration");
                int e30 = q1.b.e(b10, "period_start_time");
                int e31 = q1.b.e(b10, "minimum_retention_duration");
                int e32 = q1.b.e(b10, "schedule_requested_at");
                int e33 = q1.b.e(b10, "run_in_foreground");
                int i11 = e23;
                ArrayList arrayList = new ArrayList(b10.getCount());
                while (b10.moveToNext()) {
                    String string = b10.getString(e18);
                    int i12 = e18;
                    String string2 = b10.getString(e20);
                    int i13 = e20;
                    d2.c cVar = new d2.c();
                    int i14 = e10;
                    cVar.k(v.e(b10.getInt(e10)));
                    cVar.m(b10.getInt(e11) != 0);
                    cVar.n(b10.getInt(e12) != 0);
                    cVar.l(b10.getInt(e13) != 0);
                    cVar.o(b10.getInt(e14) != 0);
                    int i15 = e11;
                    int i16 = e12;
                    cVar.p(b10.getLong(e15));
                    cVar.q(b10.getLong(e16));
                    cVar.j(v.b(b10.getBlob(e17)));
                    p pVar = new p(string, string2);
                    pVar.f10828b = v.f(b10.getInt(e19));
                    pVar.f10830d = b10.getString(e21);
                    pVar.f10831e = androidx.work.a.g(b10.getBlob(e22));
                    int i17 = i11;
                    pVar.f10832f = androidx.work.a.g(b10.getBlob(i17));
                    i11 = i17;
                    int i18 = e24;
                    pVar.f10833g = b10.getLong(i18);
                    int i19 = e21;
                    int i20 = e25;
                    pVar.f10834h = b10.getLong(i20);
                    int i21 = e13;
                    int i22 = e26;
                    pVar.f10835i = b10.getLong(i22);
                    int i23 = e27;
                    pVar.f10837k = b10.getInt(i23);
                    int i24 = e28;
                    pVar.f10838l = v.d(b10.getInt(i24));
                    e26 = i22;
                    int i25 = e29;
                    pVar.f10839m = b10.getLong(i25);
                    int i26 = e30;
                    pVar.f10840n = b10.getLong(i26);
                    e30 = i26;
                    int i27 = e31;
                    pVar.f10841o = b10.getLong(i27);
                    int i28 = e32;
                    pVar.f10842p = b10.getLong(i28);
                    int i29 = e33;
                    pVar.f10843q = b10.getInt(i29) != 0;
                    pVar.f10836j = cVar;
                    arrayList.add(pVar);
                    e32 = i28;
                    e33 = i29;
                    e11 = i15;
                    e21 = i19;
                    e24 = i18;
                    e25 = i20;
                    e27 = i23;
                    e18 = i12;
                    e20 = i13;
                    e10 = i14;
                    e31 = i27;
                    e12 = i16;
                    e29 = i25;
                    e13 = i21;
                    e28 = i24;
                }
                b10.close();
                s0Var.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                b10.close();
                s0Var.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            s0Var = h10;
        }
    }

    @Override // m2.q
    public void u(String str, androidx.work.a aVar) {
        this.f10852a.d();
        r1.k a10 = this.f10855d.a();
        byte[] m10 = androidx.work.a.m(aVar);
        if (m10 == null) {
            a10.H(1);
        } else {
            a10.n0(1, m10);
        }
        if (str == null) {
            a10.H(2);
        } else {
            a10.u(2, str);
        }
        this.f10852a.e();
        try {
            a10.A();
            this.f10852a.D();
        } finally {
            this.f10852a.i();
            this.f10855d.f(a10);
        }
    }

    @Override // m2.q
    public int v() {
        this.f10852a.d();
        r1.k a10 = this.f10860i.a();
        this.f10852a.e();
        try {
            int A = a10.A();
            this.f10852a.D();
            return A;
        } finally {
            this.f10852a.i();
            this.f10860i.f(a10);
        }
    }

    public final void w(s.a<String, ArrayList<androidx.work.a>> aVar) {
        ArrayList<androidx.work.a> arrayList;
        int i10;
        Set<String> keySet = aVar.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (aVar.size() > 999) {
            s.a<String, ArrayList<androidx.work.a>> aVar2 = new s.a<>(999);
            int size = aVar.size();
            int i11 = 0;
            loop0: while (true) {
                i10 = 0;
                while (i11 < size) {
                    aVar2.put(aVar.i(i11), aVar.m(i11));
                    i11++;
                    i10++;
                    if (i10 == 999) {
                        break;
                    }
                }
                w(aVar2);
                aVar2 = new s.a<>(999);
            }
            if (i10 > 0) {
                w(aVar2);
                return;
            }
            return;
        }
        StringBuilder b10 = q1.f.b();
        b10.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size2 = keySet.size();
        q1.f.a(b10, size2);
        b10.append(")");
        s0 h10 = s0.h(b10.toString(), size2 + 0);
        int i12 = 1;
        for (String str : keySet) {
            if (str == null) {
                h10.H(i12);
            } else {
                h10.u(i12, str);
            }
            i12++;
        }
        Cursor b11 = q1.c.b(this.f10852a, h10, false, null);
        try {
            int d10 = q1.b.d(b11, "work_spec_id");
            if (d10 == -1) {
                return;
            }
            while (b11.moveToNext()) {
                if (!b11.isNull(d10) && (arrayList = aVar.get(b11.getString(d10))) != null) {
                    arrayList.add(androidx.work.a.g(b11.getBlob(0)));
                }
            }
        } finally {
            b11.close();
        }
    }

    public final void x(s.a<String, ArrayList<String>> aVar) {
        ArrayList<String> arrayList;
        int i10;
        Set<String> keySet = aVar.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (aVar.size() > 999) {
            s.a<String, ArrayList<String>> aVar2 = new s.a<>(999);
            int size = aVar.size();
            int i11 = 0;
            loop0: while (true) {
                i10 = 0;
                while (i11 < size) {
                    aVar2.put(aVar.i(i11), aVar.m(i11));
                    i11++;
                    i10++;
                    if (i10 == 999) {
                        break;
                    }
                }
                x(aVar2);
                aVar2 = new s.a<>(999);
            }
            if (i10 > 0) {
                x(aVar2);
                return;
            }
            return;
        }
        StringBuilder b10 = q1.f.b();
        b10.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size2 = keySet.size();
        q1.f.a(b10, size2);
        b10.append(")");
        s0 h10 = s0.h(b10.toString(), size2 + 0);
        int i12 = 1;
        for (String str : keySet) {
            if (str == null) {
                h10.H(i12);
            } else {
                h10.u(i12, str);
            }
            i12++;
        }
        Cursor b11 = q1.c.b(this.f10852a, h10, false, null);
        try {
            int d10 = q1.b.d(b11, "work_spec_id");
            if (d10 == -1) {
                return;
            }
            while (b11.moveToNext()) {
                if (!b11.isNull(d10) && (arrayList = aVar.get(b11.getString(d10))) != null) {
                    arrayList.add(b11.getString(0));
                }
            }
        } finally {
            b11.close();
        }
    }
}
