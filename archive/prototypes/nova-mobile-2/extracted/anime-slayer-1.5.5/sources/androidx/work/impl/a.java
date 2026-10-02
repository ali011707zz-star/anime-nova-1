package androidx.work.impl;

import android.content.Context;
import android.os.Build;

/* compiled from: WorkDatabaseMigrations.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static p1.b f3319a = new C0059a(1, 2);

    /* renamed from: b, reason: collision with root package name */
    public static p1.b f3320b = new b(3, 4);

    /* renamed from: c, reason: collision with root package name */
    public static p1.b f3321c = new c(4, 5);

    /* renamed from: d, reason: collision with root package name */
    public static p1.b f3322d = new d(6, 7);

    /* renamed from: e, reason: collision with root package name */
    public static p1.b f3323e = new e(7, 8);

    /* renamed from: f, reason: collision with root package name */
    public static p1.b f3324f = new f(8, 9);

    /* compiled from: WorkDatabaseMigrations.java */
    /* renamed from: androidx.work.impl.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0059a extends p1.b {
        public C0059a(int i10, int i11) {
            super(i10, i11);
        }

        @Override // p1.b
        public void a(r1.g gVar) {
            gVar.s("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            gVar.s("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            gVar.s("DROP TABLE IF EXISTS alarmInfo");
            gVar.s("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    }

    /* compiled from: WorkDatabaseMigrations.java */
    /* loaded from: classes.dex */
    public class b extends p1.b {
        public b(int i10, int i11) {
            super(i10, i11);
        }

        @Override // p1.b
        public void a(r1.g gVar) {
            if (Build.VERSION.SDK_INT >= 23) {
                gVar.s("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
            }
        }
    }

    /* compiled from: WorkDatabaseMigrations.java */
    /* loaded from: classes.dex */
    public class c extends p1.b {
        public c(int i10, int i11) {
            super(i10, i11);
        }

        @Override // p1.b
        public void a(r1.g gVar) {
            gVar.s("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            gVar.s("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    }

    /* compiled from: WorkDatabaseMigrations.java */
    /* loaded from: classes.dex */
    public class d extends p1.b {
        public d(int i10, int i11) {
            super(i10, i11);
        }

        @Override // p1.b
        public void a(r1.g gVar) {
            gVar.s("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        }
    }

    /* compiled from: WorkDatabaseMigrations.java */
    /* loaded from: classes.dex */
    public class e extends p1.b {
        public e(int i10, int i11) {
            super(i10, i11);
        }

        @Override // p1.b
        public void a(r1.g gVar) {
            gVar.s("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
        }
    }

    /* compiled from: WorkDatabaseMigrations.java */
    /* loaded from: classes.dex */
    public class f extends p1.b {
        public f(int i10, int i11) {
            super(i10, i11);
        }

        @Override // p1.b
        public void a(r1.g gVar) {
            gVar.s("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* compiled from: WorkDatabaseMigrations.java */
    /* loaded from: classes.dex */
    public static class g extends p1.b {

        /* renamed from: c, reason: collision with root package name */
        public final Context f3325c;

        public g(Context context, int i10, int i11) {
            super(i10, i11);
            this.f3325c = context;
        }

        @Override // p1.b
        public void a(r1.g gVar) {
            if (this.f11998b >= 10) {
                gVar.j0("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
            } else {
                this.f3325c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
            }
        }
    }

    /* compiled from: WorkDatabaseMigrations.java */
    /* loaded from: classes.dex */
    public static class h extends p1.b {

        /* renamed from: c, reason: collision with root package name */
        public final Context f3326c;

        public h(Context context) {
            super(9, 10);
            this.f3326c = context;
        }

        @Override // p1.b
        public void a(r1.g gVar) {
            gVar.s("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            n2.f.b(this.f3326c, gVar);
            n2.c.a(this.f3326c, gVar);
        }
    }
}
