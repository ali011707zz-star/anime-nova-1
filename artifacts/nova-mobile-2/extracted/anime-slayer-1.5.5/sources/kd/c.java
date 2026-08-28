package kd;

import id.e;

/* compiled from: ResourcesTimeUnit.java */
/* loaded from: classes2.dex */
public abstract class c implements e {

    /* renamed from: a, reason: collision with root package name */
    public long f10172a = 0;

    /* renamed from: b, reason: collision with root package name */
    public long f10173b = 1;

    @Override // id.e
    public long a() {
        return this.f10172a;
    }

    @Override // id.e
    public long b() {
        return this.f10173b;
    }

    public String c() {
        return "org.ocpsoft.prettytime.i18n.Resources";
    }

    public abstract String d();

    public void e(long j10) {
        this.f10172a = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f10172a == cVar.f10172a && this.f10173b == cVar.f10173b;
    }

    public void f(long j10) {
        this.f10173b = j10;
    }

    public int hashCode() {
        long j10 = this.f10172a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) + 31) * 31;
        long j11 = this.f10173b;
        return i10 + ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return d();
    }
}
