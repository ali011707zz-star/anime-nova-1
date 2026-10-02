package o1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import o1.p0;

/* compiled from: QueryInterceptorStatement.java */
/* loaded from: classes.dex */
public final class l0 implements r1.k {

    /* renamed from: f, reason: collision with root package name */
    public final r1.k f11522f;

    /* renamed from: g, reason: collision with root package name */
    public final p0.f f11523g;

    /* renamed from: h, reason: collision with root package name */
    public final String f11524h;

    /* renamed from: i, reason: collision with root package name */
    public final List<Object> f11525i = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final Executor f11526j;

    public l0(r1.k kVar, p0.f fVar, String str, Executor executor) {
        this.f11522f = kVar;
        this.f11523g = fVar;
        this.f11524h = str;
        this.f11526j = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        this.f11523g.a(this.f11524h, this.f11525i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        this.f11523g.a(this.f11524h, this.f11525i);
    }

    @Override // r1.k
    public int A() {
        this.f11526j.execute(new Runnable() { // from class: o1.k0
            @Override // java.lang.Runnable
            public final void run() {
                l0.this.k();
            }
        });
        return this.f11522f.A();
    }

    @Override // r1.i
    public void H(int i10) {
        x(i10, this.f11525i.toArray());
        this.f11522f.H(i10);
    }

    @Override // r1.i
    public void J(int i10, double d10) {
        x(i10, Double.valueOf(d10));
        this.f11522f.J(i10, d10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f11522f.close();
    }

    @Override // r1.i
    public void f0(int i10, long j10) {
        x(i10, Long.valueOf(j10));
        this.f11522f.f0(i10, j10);
    }

    @Override // r1.i
    public void n0(int i10, byte[] bArr) {
        x(i10, bArr);
        this.f11522f.n0(i10, bArr);
    }

    @Override // r1.i
    public void u(int i10, String str) {
        x(i10, str);
        this.f11522f.u(i10, str);
    }

    public final void x(int i10, Object obj) {
        int i11 = i10 - 1;
        if (i11 >= this.f11525i.size()) {
            for (int size = this.f11525i.size(); size <= i11; size++) {
                this.f11525i.add(null);
            }
        }
        this.f11525i.set(i11, obj);
    }

    @Override // r1.k
    public long x0() {
        this.f11526j.execute(new Runnable() { // from class: o1.j0
            @Override // java.lang.Runnable
            public final void run() {
                l0.this.h();
            }
        });
        return this.f11522f.x0();
    }
}
