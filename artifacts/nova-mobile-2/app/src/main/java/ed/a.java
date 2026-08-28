package ed;

/* compiled from: AsyncPoster.java */
/* loaded from: classes.dex */
public class a implements Runnable, k {

    /* renamed from: f, reason: collision with root package name */
    public final j f6290f = new j();

    /* renamed from: g, reason: collision with root package name */
    public final c f6291g;

    public a(c cVar) {
        this.f6291g = cVar;
    }

    @Override // ed.k
    public void a(p pVar, Object obj) {
        this.f6290f.a(i.a(pVar, obj));
        this.f6291g.e().execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        i b10 = this.f6290f.b();
        if (b10 != null) {
            this.f6291g.h(b10);
            return;
        }
        throw new IllegalStateException("No pending post available");
    }
}
