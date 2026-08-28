package g3;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;

/* compiled from: StrokeContent.java */
/* loaded from: classes.dex */
public class r extends a {

    /* renamed from: r, reason: collision with root package name */
    public final m3.a f6895r;

    /* renamed from: s, reason: collision with root package name */
    public final String f6896s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f6897t;

    /* renamed from: u, reason: collision with root package name */
    public final h3.a<Integer, Integer> f6898u;

    /* renamed from: v, reason: collision with root package name */
    public h3.a<ColorFilter, ColorFilter> f6899v;

    public r(e3.f fVar, m3.a aVar, l3.q qVar) {
        super(fVar, aVar, qVar.b().a(), qVar.e().a(), qVar.g(), qVar.i(), qVar.j(), qVar.f(), qVar.d());
        this.f6895r = aVar;
        this.f6896s = qVar.h();
        this.f6897t = qVar.k();
        h3.a<Integer, Integer> a10 = qVar.c().a();
        this.f6898u = a10;
        a10.a(this);
        aVar.i(a10);
    }

    @Override // g3.a, j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        super.e(t10, cVar);
        if (t10 == e3.k.f6106b) {
            this.f6898u.n(cVar);
            return;
        }
        if (t10 == e3.k.K) {
            h3.a<ColorFilter, ColorFilter> aVar = this.f6899v;
            if (aVar != null) {
                this.f6895r.F(aVar);
            }
            if (cVar == null) {
                this.f6899v = null;
                return;
            }
            h3.q qVar = new h3.q(cVar);
            this.f6899v = qVar;
            qVar.a(this);
            this.f6895r.i(this.f6898u);
        }
    }

    @Override // g3.a, g3.e
    public void g(Canvas canvas, Matrix matrix, int i10) {
        if (this.f6897t) {
            return;
        }
        this.f6772i.setColor(((h3.b) this.f6898u).p());
        h3.a<ColorFilter, ColorFilter> aVar = this.f6899v;
        if (aVar != null) {
            this.f6772i.setColorFilter(aVar.h());
        }
        super.g(canvas, matrix, i10);
    }

    @Override // g3.c
    public String getName() {
        return this.f6896s;
    }
}
