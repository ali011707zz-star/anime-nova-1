package org.apache.http.impl.conn.tsccm;

import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.ReferenceQueue;
import java.util.concurrent.TimeUnit;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.conn.AbstractPoolEntry;

@NotThreadSafe
/* loaded from: classes2.dex */
public class BasicPoolEntry extends AbstractPoolEntry {
    private final long created;
    private long expiry;
    private long updated;
    private long validUntil;

    @Deprecated
    public BasicPoolEntry(ClientConnectionOperator clientConnectionOperator, HttpRoute httpRoute, ReferenceQueue<Object> referenceQueue) {
        super(clientConnectionOperator, httpRoute);
        if (httpRoute != null) {
            this.created = System.currentTimeMillis();
            this.validUntil = RecyclerView.FOREVER_NS;
            this.expiry = RecyclerView.FOREVER_NS;
            return;
        }
        throw new IllegalArgumentException("HTTP route may not be null");
    }

    public final OperatedClientConnection getConnection() {
        return this.connection;
    }

    public long getCreated() {
        return this.created;
    }

    public long getExpiry() {
        return this.expiry;
    }

    public final HttpRoute getPlannedRoute() {
        return this.route;
    }

    public long getUpdated() {
        return this.updated;
    }

    public long getValidUntil() {
        return this.validUntil;
    }

    @Deprecated
    public final BasicPoolEntryRef getWeakRef() {
        return null;
    }

    public boolean isExpired(long j10) {
        return j10 >= this.expiry;
    }

    @Override // org.apache.http.impl.conn.AbstractPoolEntry
    public void shutdownEntry() {
        super.shutdownEntry();
    }

    public void updateExpiry(long j10, TimeUnit timeUnit) {
        long currentTimeMillis = System.currentTimeMillis();
        this.updated = currentTimeMillis;
        this.expiry = Math.min(this.validUntil, j10 > 0 ? currentTimeMillis + timeUnit.toMillis(j10) : RecyclerView.FOREVER_NS);
    }

    public BasicPoolEntry(ClientConnectionOperator clientConnectionOperator, HttpRoute httpRoute) {
        this(clientConnectionOperator, httpRoute, -1L, TimeUnit.MILLISECONDS);
    }

    public BasicPoolEntry(ClientConnectionOperator clientConnectionOperator, HttpRoute httpRoute, long j10, TimeUnit timeUnit) {
        super(clientConnectionOperator, httpRoute);
        if (httpRoute != null) {
            long currentTimeMillis = System.currentTimeMillis();
            this.created = currentTimeMillis;
            if (j10 > 0) {
                this.validUntil = currentTimeMillis + timeUnit.toMillis(j10);
            } else {
                this.validUntil = RecyclerView.FOREVER_NS;
            }
            this.expiry = this.validUntil;
            return;
        }
        throw new IllegalArgumentException("HTTP route may not be null");
    }
}
