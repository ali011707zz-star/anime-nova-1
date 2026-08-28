package w9;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* compiled from: ListenableFuture.java */
/* loaded from: classes.dex */
public interface a<V> extends Future<V> {
    void g(Runnable runnable, Executor executor);
}
