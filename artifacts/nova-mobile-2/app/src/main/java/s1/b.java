package s1;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.io.File;
import r1.g;
import r1.h;

/* compiled from: FrameworkSQLiteOpenHelper.java */
/* loaded from: classes.dex */
public class b implements h {

    /* renamed from: f, reason: collision with root package name */
    public final Context f13614f;

    /* renamed from: g, reason: collision with root package name */
    public final String f13615g;

    /* renamed from: h, reason: collision with root package name */
    public final h.a f13616h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f13617i;

    /* renamed from: j, reason: collision with root package name */
    public final Object f13618j = new Object();

    /* renamed from: k, reason: collision with root package name */
    public a f13619k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f13620l;

    /* compiled from: FrameworkSQLiteOpenHelper.java */
    /* loaded from: classes.dex */
    public static class a extends SQLiteOpenHelper {

        /* renamed from: f, reason: collision with root package name */
        public final s1.a[] f13621f;

        /* renamed from: g, reason: collision with root package name */
        public final h.a f13622g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f13623h;

        /* compiled from: FrameworkSQLiteOpenHelper.java */
        /* renamed from: s1.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0337a implements DatabaseErrorHandler {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ h.a f13624a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ s1.a[] f13625b;

            public C0337a(h.a aVar, s1.a[] aVarArr) {
                this.f13624a = aVar;
                this.f13625b = aVarArr;
            }

            @Override // android.database.DatabaseErrorHandler
            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                this.f13624a.c(a.d(this.f13625b, sQLiteDatabase));
            }
        }

        public a(Context context, String str, s1.a[] aVarArr, h.a aVar) {
            super(context, str, null, aVar.f12793a, new C0337a(aVar, aVarArr));
            this.f13622g = aVar;
            this.f13621f = aVarArr;
        }

        public static s1.a d(s1.a[] aVarArr, SQLiteDatabase sQLiteDatabase) {
            s1.a aVar = aVarArr[0];
            if (aVar == null || !aVar.b(sQLiteDatabase)) {
                aVarArr[0] = new s1.a(sQLiteDatabase);
            }
            return aVarArr[0];
        }

        public s1.a b(SQLiteDatabase sQLiteDatabase) {
            return d(this.f13621f, sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public synchronized void close() {
            super.close();
            this.f13621f[0] = null;
        }

        public synchronized g h() {
            this.f13623h = false;
            SQLiteDatabase writableDatabase = super.getWritableDatabase();
            if (this.f13623h) {
                close();
                return h();
            }
            return b(writableDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f13622g.b(b(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f13622g.d(b(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            this.f13623h = true;
            this.f13622g.e(b(sQLiteDatabase), i10, i11);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (this.f13623h) {
                return;
            }
            this.f13622g.f(b(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            this.f13623h = true;
            this.f13622g.g(b(sQLiteDatabase), i10, i11);
        }
    }

    public b(Context context, String str, h.a aVar, boolean z10) {
        this.f13614f = context;
        this.f13615g = str;
        this.f13616h = aVar;
        this.f13617i = z10;
    }

    public final a b() {
        a aVar;
        synchronized (this.f13618j) {
            if (this.f13619k == null) {
                s1.a[] aVarArr = new s1.a[1];
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 23 && this.f13615g != null && this.f13617i) {
                    this.f13619k = new a(this.f13614f, new File(r1.d.a(this.f13614f), this.f13615g).getAbsolutePath(), aVarArr, this.f13616h);
                } else {
                    this.f13619k = new a(this.f13614f, this.f13615g, aVarArr, this.f13616h);
                }
                if (i10 >= 16) {
                    r1.b.d(this.f13619k, this.f13620l);
                }
            }
            aVar = this.f13619k;
        }
        return aVar;
    }

    @Override // r1.h, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        b().close();
    }

    @Override // r1.h
    public String getDatabaseName() {
        return this.f13615g;
    }

    @Override // r1.h
    public void setWriteAheadLoggingEnabled(boolean z10) {
        synchronized (this.f13618j) {
            a aVar = this.f13619k;
            if (aVar != null) {
                r1.b.d(aVar, z10);
            }
            this.f13620l = z10;
        }
    }

    @Override // r1.h
    public g v0() {
        return b().h();
    }
}
