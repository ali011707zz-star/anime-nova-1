package f9;

/* compiled from: BarLineScatterCandleBubbleRenderer.java */
/* loaded from: classes.dex */
public abstract class c extends d {

    /* renamed from: g, reason: collision with root package name */
    public a f6471g;

    /* compiled from: BarLineScatterCandleBubbleRenderer.java */
    /* loaded from: classes.dex */
    public class a {
        public a() {
        }
    }

    public c(u8.a aVar, g9.j jVar) {
        super(aVar, jVar);
        this.f6471g = new a();
    }

    public boolean h(y8.j jVar, c9.b bVar) {
        return jVar != null && ((float) bVar.s0(jVar)) < ((float) bVar.e0()) * this.f6473b.a();
    }

    public boolean i(c9.d dVar) {
        return dVar.isVisible() && (dVar.U() || dVar.F());
    }
}
