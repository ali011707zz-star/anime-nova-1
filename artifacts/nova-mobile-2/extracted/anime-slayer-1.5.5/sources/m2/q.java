package m2;

import android.annotation.SuppressLint;
import androidx.lifecycle.LiveData;
import d2.u;
import java.util.List;
import m2.p;

/* compiled from: WorkSpecDao.java */
@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public interface q {
    void a(String str);

    int b(u.a aVar, String... strArr);

    List<p> c();

    List<String> d();

    void e(p pVar);

    int f(String str, long j10);

    List<String> g(String str);

    List<p.b> h(String str);

    List<p> i(long j10);

    u.a j(String str);

    List<p> k(int i10);

    p l(String str);

    int m(String str);

    LiveData<List<p.c>> n(List<String> list);

    List<String> o(String str);

    List<androidx.work.a> p(String str);

    int q(String str);

    void r(String str, long j10);

    List<p> s();

    List<p> t(int i10);

    void u(String str, androidx.work.a aVar);

    int v();
}
