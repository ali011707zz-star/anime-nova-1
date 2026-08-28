package androidx.work.impl;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import m2.b;
import m2.e;
import m2.f;
import m2.h;
import m2.i;
import m2.k;
import m2.l;
import m2.n;
import m2.o;
import m2.q;
import m2.r;
import m2.t;
import m2.u;
import o1.p;
import o1.p0;
import o1.r0;
import q1.c;
import q1.g;
import r1.g;
import r1.h;

/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {

    /* renamed from: p, reason: collision with root package name */
    public volatile q f3311p;

    /* renamed from: q, reason: collision with root package name */
    public volatile b f3312q;

    /* renamed from: r, reason: collision with root package name */
    public volatile t f3313r;

    /* renamed from: s, reason: collision with root package name */
    public volatile h f3314s;

    /* renamed from: t, reason: collision with root package name */
    public volatile k f3315t;

    /* renamed from: u, reason: collision with root package name */
    public volatile n f3316u;

    /* renamed from: v, reason: collision with root package name */
    public volatile e f3317v;

    /* loaded from: classes.dex */
    public class a extends r0.a {
        public a(int i10) {
            super(i10);
        }

        @Override // o1.r0.a
        public void a(g gVar) {
            gVar.s("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.s("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            gVar.s("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            gVar.s("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
            gVar.s("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            gVar.s("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
            gVar.s("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.s("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            gVar.s("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.s("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.s("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            gVar.s("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.s("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            gVar.s("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            gVar.s("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'cf029002fffdcadf079e8d0a1c9a70ac')");
        }

        @Override // o1.r0.a
        public void b(g gVar) {
            gVar.s("DROP TABLE IF EXISTS `Dependency`");
            gVar.s("DROP TABLE IF EXISTS `WorkSpec`");
            gVar.s("DROP TABLE IF EXISTS `WorkTag`");
            gVar.s("DROP TABLE IF EXISTS `SystemIdInfo`");
            gVar.s("DROP TABLE IF EXISTS `WorkName`");
            gVar.s("DROP TABLE IF EXISTS `WorkProgress`");
            gVar.s("DROP TABLE IF EXISTS `Preference`");
            if (WorkDatabase_Impl.this.f11561h != null) {
                int size = WorkDatabase_Impl.this.f11561h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((p0.b) WorkDatabase_Impl.this.f11561h.get(i10)).b(gVar);
                }
            }
        }

        @Override // o1.r0.a
        public void c(g gVar) {
            if (WorkDatabase_Impl.this.f11561h != null) {
                int size = WorkDatabase_Impl.this.f11561h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((p0.b) WorkDatabase_Impl.this.f11561h.get(i10)).a(gVar);
                }
            }
        }

        @Override // o1.r0.a
        public void d(g gVar) {
            WorkDatabase_Impl.this.f11554a = gVar;
            gVar.s("PRAGMA foreign_keys = ON");
            WorkDatabase_Impl.this.w(gVar);
            if (WorkDatabase_Impl.this.f11561h != null) {
                int size = WorkDatabase_Impl.this.f11561h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((p0.b) WorkDatabase_Impl.this.f11561h.get(i10)).c(gVar);
                }
            }
        }

        @Override // o1.r0.a
        public void e(g gVar) {
        }

        @Override // o1.r0.a
        public void f(g gVar) {
            c.a(gVar);
        }

        @Override // o1.r0.a
        public r0.b g(g gVar) {
            HashMap hashMap = new HashMap(2);
            hashMap.put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap.put("prerequisite_id", new g.a("prerequisite_id", "TEXT", true, 2, null, 1));
            HashSet hashSet = new HashSet(2);
            hashSet.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            hashSet.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new g.d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id")));
            hashSet2.add(new g.d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id")));
            q1.g gVar2 = new q1.g("Dependency", hashMap, hashSet, hashSet2);
            q1.g a10 = q1.g.a(gVar, "Dependency");
            if (!gVar2.equals(a10)) {
                return new r0.b(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + gVar2 + "\n Found:\n" + a10);
            }
            HashMap hashMap2 = new HashMap(24);
            hashMap2.put("id", new g.a("id", "TEXT", true, 1, null, 1));
            hashMap2.put("state", new g.a("state", "INTEGER", true, 0, null, 1));
            hashMap2.put("worker_class_name", new g.a("worker_class_name", "TEXT", true, 0, null, 1));
            hashMap2.put("input_merger_class_name", new g.a("input_merger_class_name", "TEXT", false, 0, null, 1));
            hashMap2.put("input", new g.a("input", "BLOB", true, 0, null, 1));
            hashMap2.put("output", new g.a("output", "BLOB", true, 0, null, 1));
            hashMap2.put("initial_delay", new g.a("initial_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("interval_duration", new g.a("interval_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("flex_duration", new g.a("flex_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("run_attempt_count", new g.a("run_attempt_count", "INTEGER", true, 0, null, 1));
            hashMap2.put("backoff_policy", new g.a("backoff_policy", "INTEGER", true, 0, null, 1));
            hashMap2.put("backoff_delay_duration", new g.a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("period_start_time", new g.a("period_start_time", "INTEGER", true, 0, null, 1));
            hashMap2.put("minimum_retention_duration", new g.a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("schedule_requested_at", new g.a("schedule_requested_at", "INTEGER", true, 0, null, 1));
            hashMap2.put("run_in_foreground", new g.a("run_in_foreground", "INTEGER", true, 0, null, 1));
            hashMap2.put("required_network_type", new g.a("required_network_type", "INTEGER", false, 0, null, 1));
            hashMap2.put("requires_charging", new g.a("requires_charging", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_device_idle", new g.a("requires_device_idle", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_battery_not_low", new g.a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_storage_not_low", new g.a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
            hashMap2.put("trigger_content_update_delay", new g.a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("trigger_max_content_delay", new g.a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("content_uri_triggers", new g.a("content_uri_triggers", "BLOB", false, 0, null, 1));
            HashSet hashSet3 = new HashSet(0);
            HashSet hashSet4 = new HashSet(2);
            hashSet4.add(new g.d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at")));
            hashSet4.add(new g.d("index_WorkSpec_period_start_time", false, Arrays.asList("period_start_time")));
            q1.g gVar3 = new q1.g("WorkSpec", hashMap2, hashSet3, hashSet4);
            q1.g a11 = q1.g.a(gVar, "WorkSpec");
            if (!gVar3.equals(a11)) {
                return new r0.b(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + gVar3 + "\n Found:\n" + a11);
            }
            HashMap hashMap3 = new HashMap(2);
            hashMap3.put("tag", new g.a("tag", "TEXT", true, 1, null, 1));
            hashMap3.put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet5 = new HashSet(1);
            hashSet5.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet6 = new HashSet(1);
            hashSet6.add(new g.d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id")));
            q1.g gVar4 = new q1.g("WorkTag", hashMap3, hashSet5, hashSet6);
            q1.g a12 = q1.g.a(gVar, "WorkTag");
            if (!gVar4.equals(a12)) {
                return new r0.b(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + gVar4 + "\n Found:\n" + a12);
            }
            HashMap hashMap4 = new HashMap(2);
            hashMap4.put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap4.put("system_id", new g.a("system_id", "INTEGER", true, 0, null, 1));
            HashSet hashSet7 = new HashSet(1);
            hashSet7.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            q1.g gVar5 = new q1.g("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
            q1.g a13 = q1.g.a(gVar, "SystemIdInfo");
            if (!gVar5.equals(a13)) {
                return new r0.b(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + gVar5 + "\n Found:\n" + a13);
            }
            HashMap hashMap5 = new HashMap(2);
            hashMap5.put(AppMeasurementSdk.ConditionalUserProperty.NAME, new g.a(AppMeasurementSdk.ConditionalUserProperty.NAME, "TEXT", true, 1, null, 1));
            hashMap5.put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet8 = new HashSet(1);
            hashSet8.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet9 = new HashSet(1);
            hashSet9.add(new g.d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id")));
            q1.g gVar6 = new q1.g("WorkName", hashMap5, hashSet8, hashSet9);
            q1.g a14 = q1.g.a(gVar, "WorkName");
            if (!gVar6.equals(a14)) {
                return new r0.b(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + gVar6 + "\n Found:\n" + a14);
            }
            HashMap hashMap6 = new HashMap(2);
            hashMap6.put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap6.put("progress", new g.a("progress", "BLOB", true, 0, null, 1));
            HashSet hashSet10 = new HashSet(1);
            hashSet10.add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            q1.g gVar7 = new q1.g("WorkProgress", hashMap6, hashSet10, new HashSet(0));
            q1.g a15 = q1.g.a(gVar, "WorkProgress");
            if (!gVar7.equals(a15)) {
                return new r0.b(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + gVar7 + "\n Found:\n" + a15);
            }
            HashMap hashMap7 = new HashMap(2);
            hashMap7.put("key", new g.a("key", "TEXT", true, 1, null, 1));
            hashMap7.put("long_value", new g.a("long_value", "INTEGER", false, 0, null, 1));
            q1.g gVar8 = new q1.g("Preference", hashMap7, new HashSet(0), new HashSet(0));
            q1.g a16 = q1.g.a(gVar, "Preference");
            if (!gVar8.equals(a16)) {
                return new r0.b(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + gVar8 + "\n Found:\n" + a16);
            }
            return new r0.b(true, null);
        }
    }

    @Override // androidx.work.impl.WorkDatabase
    public b G() {
        b bVar;
        if (this.f3312q != null) {
            return this.f3312q;
        }
        synchronized (this) {
            if (this.f3312q == null) {
                this.f3312q = new m2.c(this);
            }
            bVar = this.f3312q;
        }
        return bVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public e K() {
        e eVar;
        if (this.f3317v != null) {
            return this.f3317v;
        }
        synchronized (this) {
            if (this.f3317v == null) {
                this.f3317v = new f(this);
            }
            eVar = this.f3317v;
        }
        return eVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public h L() {
        h hVar;
        if (this.f3314s != null) {
            return this.f3314s;
        }
        synchronized (this) {
            if (this.f3314s == null) {
                this.f3314s = new i(this);
            }
            hVar = this.f3314s;
        }
        return hVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public k M() {
        k kVar;
        if (this.f3315t != null) {
            return this.f3315t;
        }
        synchronized (this) {
            if (this.f3315t == null) {
                this.f3315t = new l(this);
            }
            kVar = this.f3315t;
        }
        return kVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public n N() {
        n nVar;
        if (this.f3316u != null) {
            return this.f3316u;
        }
        synchronized (this) {
            if (this.f3316u == null) {
                this.f3316u = new o(this);
            }
            nVar = this.f3316u;
        }
        return nVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public q O() {
        q qVar;
        if (this.f3311p != null) {
            return this.f3311p;
        }
        synchronized (this) {
            if (this.f3311p == null) {
                this.f3311p = new r(this);
            }
            qVar = this.f3311p;
        }
        return qVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public t P() {
        t tVar;
        if (this.f3313r != null) {
            return this.f3313r;
        }
        synchronized (this) {
            if (this.f3313r == null) {
                this.f3313r = new u(this);
            }
            tVar = this.f3313r;
        }
        return tVar;
    }

    @Override // o1.p0
    public androidx.room.c g() {
        return new androidx.room.c(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // o1.p0
    public r1.h h(p pVar) {
        return pVar.f11534a.a(h.b.a(pVar.f11535b).c(pVar.f11536c).b(new r0(pVar, new a(11), "cf029002fffdcadf079e8d0a1c9a70ac", "8aff2efc47fafe870c738f727dfcfc6e")).a());
    }
}
