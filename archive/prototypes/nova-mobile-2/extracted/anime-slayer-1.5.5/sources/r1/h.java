package r1;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* compiled from: SupportSQLiteOpenHelper.java */
/* loaded from: classes.dex */
public interface h extends Closeable {

    /* compiled from: SupportSQLiteOpenHelper.java */
    /* loaded from: classes.dex */
    public static abstract class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f12793a;

        public a(int i10) {
            this.f12793a = i10;
        }

        public final void a(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("deleting the database file: ");
            sb2.append(str);
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    r1.b.a(new File(str));
                } else if (!new File(str).delete()) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Could not delete the database file ");
                    sb3.append(str);
                }
            } catch (Exception unused) {
            }
        }

        public void b(g gVar) {
        }

        public void c(g gVar) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Corruption reported by sqlite on database: ");
            sb2.append(gVar.getPath());
            if (!gVar.isOpen()) {
                a(gVar.getPath());
                return;
            }
            List<Pair<String, String>> list = null;
            try {
                try {
                    list = gVar.q();
                } catch (SQLiteException unused) {
                }
                try {
                    gVar.close();
                } catch (IOException unused2) {
                }
            } finally {
                if (list != null) {
                    Iterator<Pair<String, String>> it2 = list.iterator();
                    while (it2.hasNext()) {
                        a((String) it2.next().second);
                    }
                } else {
                    a(gVar.getPath());
                }
            }
        }

        public abstract void d(g gVar);

        public abstract void e(g gVar, int i10, int i11);

        public void f(g gVar) {
        }

        public abstract void g(g gVar, int i10, int i11);
    }

    /* compiled from: SupportSQLiteOpenHelper.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final Context f12794a;

        /* renamed from: b, reason: collision with root package name */
        public final String f12795b;

        /* renamed from: c, reason: collision with root package name */
        public final a f12796c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f12797d;

        /* compiled from: SupportSQLiteOpenHelper.java */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            public Context f12798a;

            /* renamed from: b, reason: collision with root package name */
            public String f12799b;

            /* renamed from: c, reason: collision with root package name */
            public a f12800c;

            /* renamed from: d, reason: collision with root package name */
            public boolean f12801d;

            public a(Context context) {
                this.f12798a = context;
            }

            public b a() {
                if (this.f12800c != null) {
                    if (this.f12798a != null) {
                        if (this.f12801d && TextUtils.isEmpty(this.f12799b)) {
                            throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                        }
                        return new b(this.f12798a, this.f12799b, this.f12800c, this.f12801d);
                    }
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                throw new IllegalArgumentException("Must set a callback to create the configuration.");
            }

            public a b(a aVar) {
                this.f12800c = aVar;
                return this;
            }

            public a c(String str) {
                this.f12799b = str;
                return this;
            }

            public a d(boolean z10) {
                this.f12801d = z10;
                return this;
            }
        }

        public b(Context context, String str, a aVar, boolean z10) {
            this.f12794a = context;
            this.f12795b = str;
            this.f12796c = aVar;
            this.f12797d = z10;
        }

        public static a a(Context context) {
            return new a(context);
        }
    }

    /* compiled from: SupportSQLiteOpenHelper.java */
    /* loaded from: classes.dex */
    public interface c {
        h a(b bVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    void setWriteAheadLoggingEnabled(boolean z10);

    g v0();
}
