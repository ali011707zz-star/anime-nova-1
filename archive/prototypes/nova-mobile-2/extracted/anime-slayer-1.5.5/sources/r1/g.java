package r1;

import android.database.Cursor;
import android.database.SQLException;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;

/* compiled from: SupportSQLiteDatabase.java */
/* loaded from: classes.dex */
public interface g extends Closeable {
    Cursor A0(String str);

    k C(String str);

    boolean Q();

    boolean b0();

    void f();

    void g();

    void g0();

    String getPath();

    Cursor i0(j jVar);

    boolean isOpen();

    void j0(String str, Object[] objArr) throws SQLException;

    void l0();

    Cursor n(j jVar, CancellationSignal cancellationSignal);

    List<Pair<String, String>> q();

    void s(String str) throws SQLException;
}
