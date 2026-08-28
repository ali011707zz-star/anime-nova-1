package e3;

import java.util.Arrays;

/* compiled from: LottieResult.java */
/* loaded from: classes.dex */
public final class l<V> {

    /* renamed from: a, reason: collision with root package name */
    public final V f6131a;

    /* renamed from: b, reason: collision with root package name */
    public final Throwable f6132b;

    public l(V v10) {
        this.f6131a = v10;
        this.f6132b = null;
    }

    public Throwable a() {
        return this.f6132b;
    }

    public V b() {
        return this.f6131a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (b() != null && b().equals(lVar.b())) {
            return true;
        }
        if (a() == null || lVar.a() == null) {
            return false;
        }
        return a().toString().equals(a().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{b(), a()});
    }

    public l(Throwable th) {
        this.f6132b = th;
        this.f6131a = null;
    }
}
