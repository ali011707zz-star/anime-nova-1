package s1;

import android.database.sqlite.SQLiteStatement;
import r1.k;

/* compiled from: FrameworkSQLiteStatement.java */
/* loaded from: classes.dex */
public class e extends d implements k {

    /* renamed from: g, reason: collision with root package name */
    public final SQLiteStatement f13627g;

    public e(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f13627g = sQLiteStatement;
    }

    @Override // r1.k
    public int A() {
        return this.f13627g.executeUpdateDelete();
    }

    @Override // r1.k
    public long x0() {
        return this.f13627g.executeInsert();
    }
}
