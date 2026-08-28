package j9;

import java.util.List;

/* compiled from: AutoValue_BatchedLogRequest.java */
/* loaded from: classes.dex */
public final class d extends j {

    /* renamed from: a, reason: collision with root package name */
    public final List<m> f8994a;

    public d(List<m> list) {
        if (list != null) {
            this.f8994a = list;
            return;
        }
        throw new NullPointerException("Null logRequests");
    }

    @Override // j9.j
    public List<m> c() {
        return this.f8994a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            return this.f8994a.equals(((j) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.f8994a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f8994a + "}";
    }
}
