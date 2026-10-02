package o1;

import android.database.Cursor;
import java.util.Iterator;
import java.util.List;
import r1.h;

/* compiled from: RoomOpenHelper.java */
/* loaded from: classes.dex */
public class r0 extends h.a {

    /* renamed from: b, reason: collision with root package name */
    public p f11598b;

    /* renamed from: c, reason: collision with root package name */
    public final a f11599c;

    /* renamed from: d, reason: collision with root package name */
    public final String f11600d;

    /* renamed from: e, reason: collision with root package name */
    public final String f11601e;

    /* compiled from: RoomOpenHelper.java */
    /* loaded from: classes.dex */
    public static abstract class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f11602a;

        public a(int i10) {
            this.f11602a = i10;
        }

        public abstract void a(r1.g gVar);

        public abstract void b(r1.g gVar);

        public abstract void c(r1.g gVar);

        public abstract void d(r1.g gVar);

        public abstract void e(r1.g gVar);

        public abstract void f(r1.g gVar);

        public abstract b g(r1.g gVar);
    }

    /* compiled from: RoomOpenHelper.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f11603a;

        /* renamed from: b, reason: collision with root package name */
        public final String f11604b;

        public b(boolean z10, String str) {
            this.f11603a = z10;
            this.f11604b = str;
        }
    }

    public r0(p pVar, a aVar, String str, String str2) {
        super(aVar.f11602a);
        this.f11598b = pVar;
        this.f11599c = aVar;
        this.f11600d = str;
        this.f11601e = str2;
    }

    public static boolean j(r1.g gVar) {
        Cursor A0 = gVar.A0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z10 = false;
            if (A0.moveToFirst()) {
                if (A0.getInt(0) == 0) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            A0.close();
        }
    }

    public static boolean k(r1.g gVar) {
        Cursor A0 = gVar.A0("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z10 = false;
            if (A0.moveToFirst()) {
                if (A0.getInt(0) != 0) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            A0.close();
        }
    }

    @Override // r1.h.a
    public void b(r1.g gVar) {
        super.b(gVar);
    }

    @Override // r1.h.a
    public void d(r1.g gVar) {
        boolean j10 = j(gVar);
        this.f11599c.a(gVar);
        if (!j10) {
            b g10 = this.f11599c.g(gVar);
            if (!g10.f11603a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + g10.f11604b);
            }
        }
        l(gVar);
        this.f11599c.c(gVar);
    }

    @Override // r1.h.a
    public void e(r1.g gVar, int i10, int i11) {
        g(gVar, i10, i11);
    }

    @Override // r1.h.a
    public void f(r1.g gVar) {
        super.f(gVar);
        h(gVar);
        this.f11599c.d(gVar);
        this.f11598b = null;
    }

    @Override // r1.h.a
    public void g(r1.g gVar, int i10, int i11) {
        boolean z10;
        List<p1.b> c10;
        p pVar = this.f11598b;
        if (pVar == null || (c10 = pVar.f11537d.c(i10, i11)) == null) {
            z10 = false;
        } else {
            this.f11599c.f(gVar);
            Iterator<p1.b> it2 = c10.iterator();
            while (it2.hasNext()) {
                it2.next().a(gVar);
            }
            b g10 = this.f11599c.g(gVar);
            if (g10.f11603a) {
                this.f11599c.e(gVar);
                l(gVar);
                z10 = true;
            } else {
                throw new IllegalStateException("Migration didn't properly handle: " + g10.f11604b);
            }
        }
        if (z10) {
            return;
        }
        p pVar2 = this.f11598b;
        if (pVar2 != null && !pVar2.a(i10, i11)) {
            this.f11599c.b(gVar);
            this.f11599c.a(gVar);
            return;
        }
        throw new IllegalStateException("A migration from " + i10 + " to " + i11 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
    }

    public final void h(r1.g gVar) {
        if (k(gVar)) {
            Cursor i02 = gVar.i0(new r1.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
            try {
                String string = i02.moveToFirst() ? i02.getString(0) : null;
                i02.close();
                if (!this.f11600d.equals(string) && !this.f11601e.equals(string)) {
                    throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
                }
                return;
            } catch (Throwable th) {
                i02.close();
                throw th;
            }
        }
        b g10 = this.f11599c.g(gVar);
        if (g10.f11603a) {
            this.f11599c.e(gVar);
            l(gVar);
        } else {
            throw new IllegalStateException("Pre-packaged database has an invalid schema: " + g10.f11604b);
        }
    }

    public final void i(r1.g gVar) {
        gVar.s("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    public final void l(r1.g gVar) {
        i(gVar);
        gVar.s(q0.a(this.f11600d));
    }
}
