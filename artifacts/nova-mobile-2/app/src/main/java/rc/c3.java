package rc;

/* compiled from: Timeout.kt */
/* loaded from: classes2.dex */
public final class c3<U, T extends U> extends wc.y<T> implements Runnable {

    /* renamed from: i, reason: collision with root package name */
    public final long f13238i;

    public c3(long j10, ac.d<? super U> dVar) {
        super(dVar.getContext(), dVar);
        this.f13238i = j10;
    }

    @Override // rc.a, rc.j2
    public String q0() {
        return super.q0() + "(timeMillis=" + this.f13238i + ')';
    }

    @Override // java.lang.Runnable
    public void run() {
        D(d3.a(this.f13238i, this));
    }
}
