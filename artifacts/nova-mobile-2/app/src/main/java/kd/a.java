package kd;

import id.e;

/* compiled from: DurationImpl.java */
/* loaded from: classes2.dex */
public class a implements id.a {

    /* renamed from: a, reason: collision with root package name */
    public long f10165a;

    /* renamed from: b, reason: collision with root package name */
    public long f10166b;

    /* renamed from: c, reason: collision with root package name */
    public e f10167c;

    @Override // id.a
    public long a() {
        return this.f10165a;
    }

    @Override // id.a
    public e b() {
        return this.f10167c;
    }

    @Override // id.a
    public long c(int i10) {
        long abs = Math.abs(a());
        if (f() == 0) {
            return abs;
        }
        double f10 = f();
        double b10 = b().b();
        Double.isNaN(f10);
        Double.isNaN(b10);
        return Math.abs((f10 / b10) * 100.0d) > ((double) i10) ? abs + 1 : abs;
    }

    @Override // id.a
    public boolean d() {
        return a() < 0;
    }

    @Override // id.a
    public boolean e() {
        return !d();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f10166b != aVar.f10166b || this.f10165a != aVar.f10165a) {
            return false;
        }
        e eVar = this.f10167c;
        if (eVar == null) {
            if (aVar.f10167c != null) {
                return false;
            }
        } else if (!eVar.equals(aVar.f10167c)) {
            return false;
        }
        return true;
    }

    public long f() {
        return this.f10166b;
    }

    public void g(long j10) {
        this.f10166b = j10;
    }

    public void h(long j10) {
        this.f10165a = j10;
    }

    public int hashCode() {
        long j10 = this.f10166b;
        long j11 = this.f10165a;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) + 31) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        e eVar = this.f10167c;
        return i10 + (eVar == null ? 0 : eVar.hashCode());
    }

    public void i(e eVar) {
        this.f10167c = eVar;
    }

    public String toString() {
        return "DurationImpl [" + this.f10165a + " " + this.f10167c + ", delta=" + this.f10166b + "]";
    }
}
