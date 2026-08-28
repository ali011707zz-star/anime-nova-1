package h8;

/* compiled from: RequestCoordinator.java */
/* loaded from: classes.dex */
public interface e {

    /* compiled from: RequestCoordinator.java */
    /* loaded from: classes.dex */
    public enum a {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);


        /* renamed from: f, reason: collision with root package name */
        public final boolean f7413f;

        a(boolean z10) {
            this.f7413f = z10;
        }

        public boolean a() {
            return this.f7413f;
        }
    }

    boolean a(d dVar);

    void b(d dVar);

    boolean c();

    boolean e(d dVar);

    boolean f(d dVar);

    void h(d dVar);

    e i();
}
