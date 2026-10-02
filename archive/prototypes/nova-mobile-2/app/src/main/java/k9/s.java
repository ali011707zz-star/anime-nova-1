package k9;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: TransportRuntimeComponent.java */
/* loaded from: classes.dex */
public abstract class s implements Closeable {

    /* compiled from: TransportRuntimeComponent.java */
    /* loaded from: classes.dex */
    public interface a {
        a a(Context context);

        s build();
    }

    public abstract r9.c b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        b().close();
    }

    public abstract r d();
}
