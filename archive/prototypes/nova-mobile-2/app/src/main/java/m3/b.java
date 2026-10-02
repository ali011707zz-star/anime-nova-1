package m3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import e3.k;
import h3.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import m3.d;

/* compiled from: CompositionLayer.java */
/* loaded from: classes.dex */
public class b extends m3.a {
    public h3.a<Float, Float> B;
    public final List<m3.a> C;
    public final RectF D;
    public final RectF E;
    public final Paint F;

    /* compiled from: CompositionLayer.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f10910a;

        static {
            int[] iArr = new int[d.b.values().length];
            f10910a = iArr;
            try {
                iArr[d.b.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10910a[d.b.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b(e3.f fVar, d dVar, List<d> list, e3.d dVar2) {
        super(fVar, dVar);
        int i10;
        m3.a aVar;
        this.C = new ArrayList();
        this.D = new RectF();
        this.E = new RectF();
        this.F = new Paint();
        k3.b u10 = dVar.u();
        if (u10 != null) {
            h3.a<Float, Float> a10 = u10.a();
            this.B = a10;
            i(a10);
            this.B.a(this);
        } else {
            this.B = null;
        }
        s.d dVar3 = new s.d(dVar2.k().size());
        int size = list.size() - 1;
        m3.a aVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            d dVar4 = list.get(size);
            m3.a u11 = m3.a.u(this, dVar4, fVar, dVar2);
            if (u11 != null) {
                dVar3.j(u11.y().d(), u11);
                if (aVar2 != null) {
                    aVar2.H(u11);
                    aVar2 = null;
                } else {
                    this.C.add(0, u11);
                    int i11 = a.f10910a[dVar4.h().ordinal()];
                    if (i11 == 1 || i11 == 2) {
                        aVar2 = u11;
                    }
                }
            }
            size--;
        }
        for (i10 = 0; i10 < dVar3.m(); i10++) {
            m3.a aVar3 = (m3.a) dVar3.f(dVar3.i(i10));
            if (aVar3 != null && (aVar = (m3.a) dVar3.f(aVar3.y().j())) != null) {
                aVar3.J(aVar);
            }
        }
    }

    @Override // m3.a
    public void G(j3.e eVar, int i10, List<j3.e> list, j3.e eVar2) {
        for (int i11 = 0; i11 < this.C.size(); i11++) {
            this.C.get(i11).f(eVar, i10, list, eVar2);
        }
    }

    @Override // m3.a
    public void I(boolean z10) {
        super.I(z10);
        Iterator<m3.a> it2 = this.C.iterator();
        while (it2.hasNext()) {
            it2.next().I(z10);
        }
    }

    @Override // m3.a
    public void K(float f10) {
        super.K(f10);
        if (this.B != null) {
            f10 = ((this.B.h().floatValue() * this.f10895o.b().i()) - this.f10895o.b().p()) / (this.f10894n.p().e() + 0.01f);
        }
        if (this.B == null) {
            f10 -= this.f10895o.r();
        }
        if (this.f10895o.v() != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && !"__container".equals(this.f10895o.i())) {
            f10 /= this.f10895o.v();
        }
        for (int size = this.C.size() - 1; size >= 0; size--) {
            this.C.get(size).K(f10);
        }
    }

    @Override // m3.a, g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        super.a(rectF, matrix, z10);
        for (int size = this.C.size() - 1; size >= 0; size--) {
            this.D.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            this.C.get(size).a(this.D, this.f10893m, true);
            rectF.union(this.D);
        }
    }

    @Override // m3.a, j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        super.e(t10, cVar);
        if (t10 == k.E) {
            if (cVar == null) {
                h3.a<Float, Float> aVar = this.B;
                if (aVar != null) {
                    aVar.n(null);
                    return;
                }
                return;
            }
            q qVar = new q(cVar);
            this.B = qVar;
            qVar.a(this);
            i(this.B);
        }
    }

    @Override // m3.a
    public void t(Canvas canvas, Matrix matrix, int i10) {
        e3.c.a("CompositionLayer#draw");
        this.E.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.f10895o.l(), this.f10895o.k());
        matrix.mapRect(this.E);
        boolean z10 = this.f10894n.I() && this.C.size() > 1 && i10 != 255;
        if (z10) {
            this.F.setAlpha(i10);
            q3.h.m(canvas, this.E, this.F);
        } else {
            canvas.save();
        }
        if (z10) {
            i10 = BaseProgressIndicator.MAX_ALPHA;
        }
        for (int size = this.C.size() - 1; size >= 0; size--) {
            if (!this.E.isEmpty() ? canvas.clipRect(this.E) : true) {
                this.C.get(size).g(canvas, matrix, i10);
            }
        }
        canvas.restore();
        e3.c.b("CompositionLayer#draw");
    }
}
