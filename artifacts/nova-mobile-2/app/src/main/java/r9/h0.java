package r9;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.util.Arrays;
import java.util.List;

/* compiled from: SchemaManager.java */
/* loaded from: classes.dex */
public final class h0 extends SQLiteOpenHelper {

    /* renamed from: h, reason: collision with root package name */
    public static int f13121h = 4;

    /* renamed from: i, reason: collision with root package name */
    public static final a f13122i;

    /* renamed from: j, reason: collision with root package name */
    public static final a f13123j;

    /* renamed from: k, reason: collision with root package name */
    public static final a f13124k;

    /* renamed from: l, reason: collision with root package name */
    public static final a f13125l;

    /* renamed from: m, reason: collision with root package name */
    public static final List<a> f13126m;

    /* renamed from: f, reason: collision with root package name */
    public final int f13127f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f13128g;

    /* compiled from: SchemaManager.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        g0 g0Var = new a() { // from class: r9.g0
            @Override // r9.h0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                h0.z(sQLiteDatabase);
            }
        };
        f13122i = g0Var;
        d0 d0Var = new a() { // from class: r9.d0
            @Override // r9.h0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                h0.F(sQLiteDatabase);
            }
        };
        f13123j = d0Var;
        e0 e0Var = new a() { // from class: r9.e0
            @Override // r9.h0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
            }
        };
        f13124k = e0Var;
        f0 f0Var = new a() { // from class: r9.f0
            @Override // r9.h0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                h0.L(sQLiteDatabase);
            }
        };
        f13125l = f0Var;
        f13126m = Arrays.asList(g0Var, d0Var, e0Var, f0Var);
    }

    public h0(Context context, String str, int i10) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i10);
        this.f13128g = false;
        this.f13127f = i10;
    }

    public static /* synthetic */ void F(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    public static /* synthetic */ void L(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    public static /* synthetic */ void z(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    public final void N(SQLiteDatabase sQLiteDatabase, int i10) {
        x(sQLiteDatabase);
        R(sQLiteDatabase, 0, i10);
    }

    public final void R(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        List<a> list = f13126m;
        if (i11 <= list.size()) {
            while (i10 < i11) {
                f13126m.get(i10).a(sQLiteDatabase);
                i10++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i10 + " to " + i11 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f13128g = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        if (Build.VERSION.SDK_INT >= 16) {
            sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        N(sQLiteDatabase, this.f13127f);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        N(sQLiteDatabase, i11);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        x(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        x(sQLiteDatabase);
        R(sQLiteDatabase, i10, i11);
    }

    public final void x(SQLiteDatabase sQLiteDatabase) {
        if (this.f13128g) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }
}
