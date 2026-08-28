package o1;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: SharedSQLiteStatement.java */
/* loaded from: classes.dex */
public abstract class v0 {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f11632a = new AtomicBoolean(false);

    /* renamed from: b, reason: collision with root package name */
    public final p0 f11633b;

    /* renamed from: c, reason: collision with root package name */
    public volatile r1.k f11634c;

    public v0(p0 p0Var) {
        this.f11633b = p0Var;
    }

    public r1.k a() {
        b();
        return e(this.f11632a.compareAndSet(false, true));
    }

    public void b() {
        this.f11633b.c();
    }

    public final r1.k c() {
        return this.f11633b.f(d());
    }

    public abstract String d();

    public final r1.k e(boolean z10) {
        if (z10) {
            if (this.f11634c == null) {
                this.f11634c = c();
            }
            return this.f11634c;
        }
        return c();
    }

    public void f(r1.k kVar) {
        if (kVar == this.f11634c) {
            this.f11632a.set(false);
        }
    }
}
