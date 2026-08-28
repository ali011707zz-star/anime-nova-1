package k9;

/* compiled from: TransportImpl.java */
/* loaded from: classes.dex */
public final class p<T> implements h9.f<T> {

    /* renamed from: a, reason: collision with root package name */
    public final m f10111a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10112b;

    /* renamed from: c, reason: collision with root package name */
    public final h9.b f10113c;

    /* renamed from: d, reason: collision with root package name */
    public final h9.e<T, byte[]> f10114d;

    /* renamed from: e, reason: collision with root package name */
    public final q f10115e;

    public p(m mVar, String str, h9.b bVar, h9.e<T, byte[]> eVar, q qVar) {
        this.f10111a = mVar;
        this.f10112b = str;
        this.f10113c = bVar;
        this.f10114d = eVar;
        this.f10115e = qVar;
    }

    public static /* synthetic */ void d(Exception exc) {
    }

    @Override // h9.f
    public void a(h9.c<T> cVar) {
        b(cVar, new h9.h() { // from class: k9.o
            @Override // h9.h
            public final void a(Exception exc) {
                p.d(exc);
            }
        });
    }

    @Override // h9.f
    public void b(h9.c<T> cVar, h9.h hVar) {
        this.f10115e.a(l.a().e(this.f10111a).c(cVar).f(this.f10112b).d(this.f10114d).b(this.f10113c).a(), hVar);
    }
}
