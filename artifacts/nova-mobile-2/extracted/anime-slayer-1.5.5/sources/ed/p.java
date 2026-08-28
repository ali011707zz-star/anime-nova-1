package ed;

/* compiled from: Subscription.java */
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6373a;

    /* renamed from: b, reason: collision with root package name */
    public final n f6374b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f6375c = true;

    public p(Object obj, n nVar) {
        this.f6373a = obj;
        this.f6374b = nVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f6373a == pVar.f6373a && this.f6374b.equals(pVar.f6374b);
    }

    public int hashCode() {
        return this.f6373a.hashCode() + this.f6374b.f6359f.hashCode();
    }
}
