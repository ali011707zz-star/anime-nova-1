package s1;

import android.database.sqlite.SQLiteProgram;
import r1.i;

/* compiled from: FrameworkSQLiteProgram.java */
/* loaded from: classes.dex */
public class d implements i {

    /* renamed from: f, reason: collision with root package name */
    public final SQLiteProgram f13626f;

    public d(SQLiteProgram sQLiteProgram) {
        this.f13626f = sQLiteProgram;
    }

    @Override // r1.i
    public void H(int i10) {
        this.f13626f.bindNull(i10);
    }

    @Override // r1.i
    public void J(int i10, double d10) {
        this.f13626f.bindDouble(i10, d10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f13626f.close();
    }

    @Override // r1.i
    public void f0(int i10, long j10) {
        this.f13626f.bindLong(i10, j10);
    }

    @Override // r1.i
    public void n0(int i10, byte[] bArr) {
        this.f13626f.bindBlob(i10, bArr);
    }

    @Override // r1.i
    public void u(int i10, String str) {
        this.f13626f.bindString(i10, str);
    }
}
