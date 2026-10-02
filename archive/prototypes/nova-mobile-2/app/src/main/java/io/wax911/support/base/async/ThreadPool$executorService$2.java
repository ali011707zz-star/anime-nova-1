package io.wax911.support.base.async;

import ic.a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import jc.m;

/* compiled from: ThreadPool.kt */
/* loaded from: classes.dex */
public final class ThreadPool$executorService$2 extends m implements a<ExecutorService> {
    public static final ThreadPool$executorService$2 INSTANCE = new ThreadPool$executorService$2();

    public ThreadPool$executorService$2() {
        super(0);
    }

    @Override // ic.a
    public final ExecutorService invoke() {
        return Executors.newCachedThreadPool();
    }
}
