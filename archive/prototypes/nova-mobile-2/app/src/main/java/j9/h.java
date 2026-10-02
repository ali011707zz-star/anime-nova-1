package j9;

/* compiled from: AutoValue_LogResponse.java */
/* loaded from: classes.dex */
public final class h extends n {

    /* renamed from: a, reason: collision with root package name */
    public final long f9027a;

    public h(long j10) {
        this.f9027a = j10;
    }

    @Override // j9.n
    public long c() {
        return this.f9027a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof n) && this.f9027a == ((n) obj).c();
    }

    public int hashCode() {
        long j10 = this.f9027a;
        return 1000003 ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f9027a + "}";
    }
}
