package k9;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: ExecutionModule.java */
/* loaded from: classes.dex */
public abstract class i {
    public static Executor a() {
        return new k(Executors.newSingleThreadExecutor());
    }
}
