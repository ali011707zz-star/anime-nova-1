package s1;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.IOException;
import java.util.List;
import r1.g;
import r1.j;
import r1.k;

/* compiled from: FrameworkSQLiteDatabase.java */
/* loaded from: classes.dex */
public class a implements g {

    /* renamed from: g, reason: collision with root package name */
    public static final String[] f13607g = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* renamed from: h, reason: collision with root package name */
    public static final String[] f13608h = new String[0];

    /* renamed from: f, reason: collision with root package name */
    public final SQLiteDatabase f13609f;

    /* compiled from: FrameworkSQLiteDatabase.java */
    /* renamed from: s1.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0336a implements SQLiteDatabase.CursorFactory {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ j f13610a;

        public C0336a(j jVar) {
            this.f13610a = jVar;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f13610a.d(new d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    /* compiled from: FrameworkSQLiteDatabase.java */
    /* loaded from: classes.dex */
    public class b implements SQLiteDatabase.CursorFactory {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ j f13612a;

        public b(j jVar) {
            this.f13612a = jVar;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.f13612a.d(new d(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    public a(SQLiteDatabase sQLiteDatabase) {
        this.f13609f = sQLiteDatabase;
    }

    @Override // r1.g
    public Cursor A0(String str) {
        return i0(new r1.a(str));
    }

    @Override // r1.g
    public k C(String str) {
        return new e(this.f13609f.compileStatement(str));
    }

    @Override // r1.g
    public boolean Q() {
        return this.f13609f.inTransaction();
    }

    public boolean b(SQLiteDatabase sQLiteDatabase) {
        return this.f13609f == sQLiteDatabase;
    }

    @Override // r1.g
    public boolean b0() {
        return r1.b.b(this.f13609f);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13609f.close();
    }

    @Override // r1.g
    public void f() {
        this.f13609f.endTransaction();
    }

    @Override // r1.g
    public void g() {
        this.f13609f.beginTransaction();
    }

    @Override // r1.g
    public void g0() {
        this.f13609f.setTransactionSuccessful();
    }

    @Override // r1.g
    public String getPath() {
        return this.f13609f.getPath();
    }

    @Override // r1.g
    public Cursor i0(j jVar) {
        return this.f13609f.rawQueryWithFactory(new C0336a(jVar), jVar.b(), f13608h, null);
    }

    @Override // r1.g
    public boolean isOpen() {
        return this.f13609f.isOpen();
    }

    @Override // r1.g
    public void j0(String str, Object[] objArr) throws SQLException {
        this.f13609f.execSQL(str, objArr);
    }

    @Override // r1.g
    public void l0() {
        this.f13609f.beginTransactionNonExclusive();
    }

    @Override // r1.g
    public Cursor n(j jVar, CancellationSignal cancellationSignal) {
        return r1.b.c(this.f13609f, jVar.b(), f13608h, null, cancellationSignal, new b(jVar));
    }

    @Override // r1.g
    public List<Pair<String, String>> q() {
        return this.f13609f.getAttachedDbs();
    }

    @Override // r1.g
    public void s(String str) throws SQLException {
        this.f13609f.execSQL(str);
    }
}
