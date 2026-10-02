package rd;

import java.io.IOException;
import okhttp3.Request;

/* compiled from: Call.java */
/* loaded from: classes2.dex */
public interface b<T> extends Cloneable {
    void c0(d<T> dVar);

    void cancel();

    /* renamed from: clone */
    b<T> mo9clone();

    q<T> execute() throws IOException;

    boolean isCanceled();

    Request request();
}
