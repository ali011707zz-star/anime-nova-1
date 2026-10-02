package o1;

import java.util.concurrent.Executor;
import o1.p0;

/* compiled from: QueryInterceptorOpenHelper.java */
/* loaded from: classes.dex */
public final class g0 implements r1.h, q {

    /* renamed from: f, reason: collision with root package name */
    public final r1.h f11499f;

    /* renamed from: g, reason: collision with root package name */
    public final p0.f f11500g;

    /* renamed from: h, reason: collision with root package name */
    public final Executor f11501h;

    public g0(r1.h hVar, p0.f fVar, Executor executor) {
        this.f11499f = hVar;
        this.f11500g = fVar;
        this.f11501h = executor;
    }

    @Override // o1.q
    public r1.h b() {
        return this.f11499f;
    }

    @Override // r1.h, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f11499f.close();
    }

    @Override // r1.h
    public String getDatabaseName() {
        return this.f11499f.getDatabaseName();
    }

    @Override // r1.h
    public void setWriteAheadLoggingEnabled(boolean z10) {
        this.f11499f.setWriteAheadLoggingEnabled(z10);
    }

    @Override // r1.h
    public r1.g v0() {
        return new f0(this.f11499f.v0(), this.f11500g, this.f11501h);
    }
}
