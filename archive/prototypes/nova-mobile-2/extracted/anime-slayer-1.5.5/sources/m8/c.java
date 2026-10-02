package m8;

/* compiled from: StateVerifier.java */
/* loaded from: classes.dex */
public abstract class c {

    /* compiled from: StateVerifier.java */
    /* loaded from: classes.dex */
    public static class b extends c {

        /* renamed from: a, reason: collision with root package name */
        public volatile boolean f11057a;

        public b() {
            super();
        }

        @Override // m8.c
        public void b(boolean z10) {
            this.f11057a = z10;
        }

        @Override // m8.c
        public void c() {
            if (this.f11057a) {
                throw new IllegalStateException("Already released");
            }
        }
    }

    public static c a() {
        return new b();
    }

    public abstract void b(boolean z10);

    public abstract void c();

    public c() {
    }
}
