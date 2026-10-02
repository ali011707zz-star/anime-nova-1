package c8;

/* compiled from: GifDrawableResource.java */
/* loaded from: classes.dex */
public class e extends a8.b<c> {
    public e(c cVar) {
        super(cVar);
    }

    @Override // r7.u
    public int a() {
        return ((c) this.f512f).i();
    }

    @Override // r7.u
    public void b() {
        ((c) this.f512f).stop();
        ((c) this.f512f).k();
    }

    @Override // r7.u
    public Class<c> c() {
        return c.class;
    }

    @Override // a8.b, r7.q
    public void initialize() {
        ((c) this.f512f).e().prepareToDraw();
    }
}
