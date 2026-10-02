package org.apache.http.impl.conn.tsccm;

import java.util.Date;
import java.util.concurrent.locks.Condition;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
/* loaded from: classes2.dex */
public class WaitingThread {
    private boolean aborted;
    private final Condition cond;
    private final RouteSpecificPool pool;
    private Thread waiter;

    public WaitingThread(Condition condition, RouteSpecificPool routeSpecificPool) {
        if (condition != null) {
            this.cond = condition;
            this.pool = routeSpecificPool;
            return;
        }
        throw new IllegalArgumentException("Condition must not be null.");
    }

    public boolean await(Date date) throws InterruptedException {
        boolean z10;
        if (this.waiter == null) {
            if (!this.aborted) {
                this.waiter = Thread.currentThread();
                try {
                    if (date != null) {
                        z10 = this.cond.awaitUntil(date);
                    } else {
                        this.cond.await();
                        z10 = true;
                    }
                    if (this.aborted) {
                        throw new InterruptedException("Operation interrupted");
                    }
                    return z10;
                } finally {
                    this.waiter = null;
                }
            }
            throw new InterruptedException("Operation interrupted");
        }
        throw new IllegalStateException("A thread is already waiting on this object.\ncaller: " + Thread.currentThread() + "\nwaiter: " + this.waiter);
    }

    public final Condition getCondition() {
        return this.cond;
    }

    public final RouteSpecificPool getPool() {
        return this.pool;
    }

    public final Thread getThread() {
        return this.waiter;
    }

    public void interrupt() {
        this.aborted = true;
        this.cond.signalAll();
    }

    public void wakeup() {
        if (this.waiter != null) {
            this.cond.signalAll();
            return;
        }
        throw new IllegalStateException("Nobody waiting on this object.");
    }
}
