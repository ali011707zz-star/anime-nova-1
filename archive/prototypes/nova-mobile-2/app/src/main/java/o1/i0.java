package o1;

import java.util.ArrayList;
import java.util.List;

/* compiled from: QueryInterceptorProgram.java */
/* loaded from: classes.dex */
public final class i0 implements r1.i {

    /* renamed from: f, reason: collision with root package name */
    public List<Object> f11515f = new ArrayList();

    @Override // r1.i
    public void H(int i10) {
        d(i10, null);
    }

    @Override // r1.i
    public void J(int i10, double d10) {
        d(i10, Double.valueOf(d10));
    }

    public List<Object> b() {
        return this.f11515f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final void d(int i10, Object obj) {
        int i11 = i10 - 1;
        if (i11 >= this.f11515f.size()) {
            for (int size = this.f11515f.size(); size <= i11; size++) {
                this.f11515f.add(null);
            }
        }
        this.f11515f.set(i11, obj);
    }

    @Override // r1.i
    public void f0(int i10, long j10) {
        d(i10, Long.valueOf(j10));
    }

    @Override // r1.i
    public void n0(int i10, byte[] bArr) {
        d(i10, bArr);
    }

    @Override // r1.i
    public void u(int i10, String str) {
        d(i10, str);
    }
}
