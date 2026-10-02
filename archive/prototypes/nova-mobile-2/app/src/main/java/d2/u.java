package d2;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* compiled from: WorkInfo.java */
/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public UUID f5589a;

    /* renamed from: b, reason: collision with root package name */
    public a f5590b;

    /* renamed from: c, reason: collision with root package name */
    public androidx.work.a f5591c;

    /* renamed from: d, reason: collision with root package name */
    public Set<String> f5592d;

    /* renamed from: e, reason: collision with root package name */
    public androidx.work.a f5593e;

    /* renamed from: f, reason: collision with root package name */
    public int f5594f;

    /* compiled from: WorkInfo.java */
    /* loaded from: classes.dex */
    public enum a {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        public boolean a() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    public u(UUID uuid, a aVar, androidx.work.a aVar2, List<String> list, androidx.work.a aVar3, int i10) {
        this.f5589a = uuid;
        this.f5590b = aVar;
        this.f5591c = aVar2;
        this.f5592d = new HashSet(list);
        this.f5593e = aVar3;
        this.f5594f = i10;
    }

    public a a() {
        return this.f5590b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u.class != obj.getClass()) {
            return false;
        }
        u uVar = (u) obj;
        if (this.f5594f == uVar.f5594f && this.f5589a.equals(uVar.f5589a) && this.f5590b == uVar.f5590b && this.f5591c.equals(uVar.f5591c) && this.f5592d.equals(uVar.f5592d)) {
            return this.f5593e.equals(uVar.f5593e);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.f5589a.hashCode() * 31) + this.f5590b.hashCode()) * 31) + this.f5591c.hashCode()) * 31) + this.f5592d.hashCode()) * 31) + this.f5593e.hashCode()) * 31) + this.f5594f;
    }

    public String toString() {
        return "WorkInfo{mId='" + this.f5589a + "', mState=" + this.f5590b + ", mOutputData=" + this.f5591c + ", mTags=" + this.f5592d + ", mProgress=" + this.f5593e + '}';
    }
}
