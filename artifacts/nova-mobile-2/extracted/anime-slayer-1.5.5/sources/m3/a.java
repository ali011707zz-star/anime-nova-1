package m3;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import h3.a;
import h3.p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import l3.h;
import l3.m;
import m3.d;
import o3.j;

/* compiled from: BaseLayer.java */
/* loaded from: classes.dex */
public abstract class a implements g3.e, a.b, j3.f {
    public BlurMaskFilter A;

    /* renamed from: a, reason: collision with root package name */
    public final Path f10881a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f10882b = new Matrix();

    /* renamed from: c, reason: collision with root package name */
    public final Paint f10883c = new f3.a(1);

    /* renamed from: d, reason: collision with root package name */
    public final Paint f10884d = new f3.a(1, PorterDuff.Mode.DST_IN);

    /* renamed from: e, reason: collision with root package name */
    public final Paint f10885e = new f3.a(1, PorterDuff.Mode.DST_OUT);

    /* renamed from: f, reason: collision with root package name */
    public final Paint f10886f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f10887g;

    /* renamed from: h, reason: collision with root package name */
    public final RectF f10888h;

    /* renamed from: i, reason: collision with root package name */
    public final RectF f10889i;

    /* renamed from: j, reason: collision with root package name */
    public final RectF f10890j;

    /* renamed from: k, reason: collision with root package name */
    public final RectF f10891k;

    /* renamed from: l, reason: collision with root package name */
    public final String f10892l;

    /* renamed from: m, reason: collision with root package name */
    public final Matrix f10893m;

    /* renamed from: n, reason: collision with root package name */
    public final e3.f f10894n;

    /* renamed from: o, reason: collision with root package name */
    public final d f10895o;

    /* renamed from: p, reason: collision with root package name */
    public h3.h f10896p;

    /* renamed from: q, reason: collision with root package name */
    public h3.d f10897q;

    /* renamed from: r, reason: collision with root package name */
    public a f10898r;

    /* renamed from: s, reason: collision with root package name */
    public a f10899s;

    /* renamed from: t, reason: collision with root package name */
    public List<a> f10900t;

    /* renamed from: u, reason: collision with root package name */
    public final List<h3.a<?, ?>> f10901u;

    /* renamed from: v, reason: collision with root package name */
    public final p f10902v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f10903w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f10904x;

    /* renamed from: y, reason: collision with root package name */
    public Paint f10905y;

    /* renamed from: z, reason: collision with root package name */
    public float f10906z;

    /* compiled from: BaseLayer.java */
    /* renamed from: m3.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0251a implements a.b {
        public C0251a() {
        }

        @Override // h3.a.b
        public void b() {
            a aVar = a.this;
            aVar.L(aVar.f10897q.p() == 1.0f);
        }
    }

    /* compiled from: BaseLayer.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f10908a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f10909b;

        static {
            int[] iArr = new int[h.a.values().length];
            f10909b = iArr;
            try {
                iArr[h.a.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10909b[h.a.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10909b[h.a.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10909b[h.a.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[d.a.values().length];
            f10908a = iArr2;
            try {
                iArr2[d.a.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f10908a[d.a.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f10908a[d.a.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f10908a[d.a.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f10908a[d.a.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f10908a[d.a.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f10908a[d.a.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public a(e3.f fVar, d dVar) {
        f3.a aVar = new f3.a(1);
        this.f10886f = aVar;
        this.f10887g = new f3.a(PorterDuff.Mode.CLEAR);
        this.f10888h = new RectF();
        this.f10889i = new RectF();
        this.f10890j = new RectF();
        this.f10891k = new RectF();
        this.f10893m = new Matrix();
        this.f10901u = new ArrayList();
        this.f10903w = true;
        this.f10906z = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f10894n = fVar;
        this.f10895o = dVar;
        this.f10892l = dVar.i() + "#draw";
        if (dVar.h() == d.b.INVERT) {
            aVar.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            aVar.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        p b10 = dVar.w().b();
        this.f10902v = b10;
        b10.b(this);
        if (dVar.g() != null && !dVar.g().isEmpty()) {
            h3.h hVar = new h3.h(dVar.g());
            this.f10896p = hVar;
            Iterator<h3.a<m, Path>> it2 = hVar.a().iterator();
            while (it2.hasNext()) {
                it2.next().a(this);
            }
            for (h3.a<Integer, Integer> aVar2 : this.f10896p.c()) {
                i(aVar2);
                aVar2.a(this);
            }
        }
        M();
    }

    public static a u(m3.b bVar, d dVar, e3.f fVar, e3.d dVar2) {
        switch (b.f10908a[dVar.f().ordinal()]) {
            case 1:
                return new f(fVar, dVar, bVar);
            case 2:
                return new m3.b(fVar, dVar, dVar2.o(dVar.m()), dVar2);
            case 3:
                return new g(fVar, dVar);
            case 4:
                return new c(fVar, dVar);
            case 5:
                return new e(fVar, dVar);
            case 6:
                return new h(fVar, dVar);
            default:
                q3.d.c("Unknown layer type " + dVar.f());
                return null;
        }
    }

    public boolean A() {
        return this.f10898r != null;
    }

    public final void B(RectF rectF, Matrix matrix) {
        this.f10889i.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        if (z()) {
            int size = this.f10896p.b().size();
            for (int i10 = 0; i10 < size; i10++) {
                l3.h hVar = this.f10896p.b().get(i10);
                this.f10881a.set(this.f10896p.a().get(i10).h());
                this.f10881a.transform(matrix);
                int i11 = b.f10909b[hVar.a().ordinal()];
                if (i11 == 1 || i11 == 2) {
                    return;
                }
                if ((i11 == 3 || i11 == 4) && hVar.d()) {
                    return;
                }
                this.f10881a.computeBounds(this.f10891k, false);
                if (i10 == 0) {
                    this.f10889i.set(this.f10891k);
                } else {
                    RectF rectF2 = this.f10889i;
                    rectF2.set(Math.min(rectF2.left, this.f10891k.left), Math.min(this.f10889i.top, this.f10891k.top), Math.max(this.f10889i.right, this.f10891k.right), Math.max(this.f10889i.bottom, this.f10891k.bottom));
                }
            }
            if (rectF.intersect(this.f10889i)) {
                return;
            }
            rectF.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
    }

    public final void C(RectF rectF, Matrix matrix) {
        if (A() && this.f10895o.h() != d.b.INVERT) {
            this.f10890j.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            this.f10898r.a(this.f10890j, matrix, true);
            if (rectF.intersect(this.f10890j)) {
                return;
            }
            rectF.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
    }

    public final void D() {
        this.f10894n.invalidateSelf();
    }

    public final void E(float f10) {
        this.f10894n.p().n().a(this.f10895o.i(), f10);
    }

    public void F(h3.a<?, ?> aVar) {
        this.f10901u.remove(aVar);
    }

    public void G(j3.e eVar, int i10, List<j3.e> list, j3.e eVar2) {
    }

    public void H(a aVar) {
        this.f10898r = aVar;
    }

    public void I(boolean z10) {
        if (z10 && this.f10905y == null) {
            this.f10905y = new f3.a();
        }
        this.f10904x = z10;
    }

    public void J(a aVar) {
        this.f10899s = aVar;
    }

    public void K(float f10) {
        this.f10902v.j(f10);
        if (this.f10896p != null) {
            for (int i10 = 0; i10 < this.f10896p.a().size(); i10++) {
                this.f10896p.a().get(i10).m(f10);
            }
        }
        h3.d dVar = this.f10897q;
        if (dVar != null) {
            dVar.m(f10);
        }
        a aVar = this.f10898r;
        if (aVar != null) {
            aVar.K(f10);
        }
        for (int i11 = 0; i11 < this.f10901u.size(); i11++) {
            this.f10901u.get(i11).m(f10);
        }
    }

    public final void L(boolean z10) {
        if (z10 != this.f10903w) {
            this.f10903w = z10;
            D();
        }
    }

    public final void M() {
        if (!this.f10895o.e().isEmpty()) {
            h3.d dVar = new h3.d(this.f10895o.e());
            this.f10897q = dVar;
            dVar.l();
            this.f10897q.a(new C0251a());
            L(this.f10897q.h().floatValue() == 1.0f);
            i(this.f10897q);
            return;
        }
        L(true);
    }

    @Override // g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        this.f10888h.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        r();
        this.f10893m.set(matrix);
        if (z10) {
            List<a> list = this.f10900t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f10893m.preConcat(this.f10900t.get(size).f10902v.f());
                }
            } else {
                a aVar = this.f10899s;
                if (aVar != null) {
                    this.f10893m.preConcat(aVar.f10902v.f());
                }
            }
        }
        this.f10893m.preConcat(this.f10902v.f());
    }

    @Override // h3.a.b
    public void b() {
        D();
    }

    @Override // g3.c
    public void c(List<g3.c> list, List<g3.c> list2) {
    }

    @Override // j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        this.f10902v.c(t10, cVar);
    }

    @Override // j3.f
    public void f(j3.e eVar, int i10, List<j3.e> list, j3.e eVar2) {
        a aVar = this.f10898r;
        if (aVar != null) {
            j3.e a10 = eVar2.a(aVar.getName());
            if (eVar.c(this.f10898r.getName(), i10)) {
                list.add(a10.i(this.f10898r));
            }
            if (eVar.h(getName(), i10)) {
                this.f10898r.G(eVar, eVar.e(this.f10898r.getName(), i10) + i10, list, a10);
            }
        }
        if (eVar.g(getName(), i10)) {
            if (!"__container".equals(getName())) {
                eVar2 = eVar2.a(getName());
                if (eVar.c(getName(), i10)) {
                    list.add(eVar2.i(this));
                }
            }
            if (eVar.h(getName(), i10)) {
                G(eVar, i10 + eVar.e(getName(), i10), list, eVar2);
            }
        }
    }

    @Override // g3.e
    public void g(Canvas canvas, Matrix matrix, int i10) {
        Paint paint;
        e3.c.a(this.f10892l);
        if (this.f10903w && !this.f10895o.x()) {
            r();
            e3.c.a("Layer#parentMatrix");
            this.f10882b.reset();
            this.f10882b.set(matrix);
            for (int size = this.f10900t.size() - 1; size >= 0; size--) {
                this.f10882b.preConcat(this.f10900t.get(size).f10902v.f());
            }
            e3.c.b("Layer#parentMatrix");
            int intValue = (int) ((((i10 / 255.0f) * (this.f10902v.h() == null ? 100 : this.f10902v.h().h().intValue())) / 100.0f) * 255.0f);
            if (!A() && !z()) {
                this.f10882b.preConcat(this.f10902v.f());
                e3.c.a("Layer#drawLayer");
                t(canvas, this.f10882b, intValue);
                e3.c.b("Layer#drawLayer");
                E(e3.c.b(this.f10892l));
                return;
            }
            e3.c.a("Layer#computeBounds");
            a(this.f10888h, this.f10882b, false);
            C(this.f10888h, matrix);
            this.f10882b.preConcat(this.f10902v.f());
            B(this.f10888h, this.f10882b);
            if (!this.f10888h.intersect(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, canvas.getWidth(), canvas.getHeight())) {
                this.f10888h.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
            e3.c.b("Layer#computeBounds");
            if (this.f10888h.width() >= 1.0f && this.f10888h.height() >= 1.0f) {
                e3.c.a("Layer#saveLayer");
                this.f10883c.setAlpha(BaseProgressIndicator.MAX_ALPHA);
                q3.h.m(canvas, this.f10888h, this.f10883c);
                e3.c.b("Layer#saveLayer");
                s(canvas);
                e3.c.a("Layer#drawLayer");
                t(canvas, this.f10882b, intValue);
                e3.c.b("Layer#drawLayer");
                if (z()) {
                    o(canvas, this.f10882b);
                }
                if (A()) {
                    e3.c.a("Layer#drawMatte");
                    e3.c.a("Layer#saveLayer");
                    q3.h.n(canvas, this.f10888h, this.f10886f, 19);
                    e3.c.b("Layer#saveLayer");
                    s(canvas);
                    this.f10898r.g(canvas, matrix, intValue);
                    e3.c.a("Layer#restoreLayer");
                    canvas.restore();
                    e3.c.b("Layer#restoreLayer");
                    e3.c.b("Layer#drawMatte");
                }
                e3.c.a("Layer#restoreLayer");
                canvas.restore();
                e3.c.b("Layer#restoreLayer");
            }
            if (this.f10904x && (paint = this.f10905y) != null) {
                paint.setStyle(Paint.Style.STROKE);
                this.f10905y.setColor(-251901);
                this.f10905y.setStrokeWidth(4.0f);
                canvas.drawRect(this.f10888h, this.f10905y);
                this.f10905y.setStyle(Paint.Style.FILL);
                this.f10905y.setColor(1357638635);
                canvas.drawRect(this.f10888h, this.f10905y);
            }
            E(e3.c.b(this.f10892l));
            return;
        }
        e3.c.b(this.f10892l);
    }

    @Override // g3.c
    public String getName() {
        return this.f10895o.i();
    }

    public void i(h3.a<?, ?> aVar) {
        if (aVar == null) {
            return;
        }
        this.f10901u.add(aVar);
    }

    public final void j(Canvas canvas, Matrix matrix, l3.h hVar, h3.a<m, Path> aVar, h3.a<Integer, Integer> aVar2) {
        this.f10881a.set(aVar.h());
        this.f10881a.transform(matrix);
        this.f10883c.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f10881a, this.f10883c);
    }

    public final void k(Canvas canvas, Matrix matrix, l3.h hVar, h3.a<m, Path> aVar, h3.a<Integer, Integer> aVar2) {
        q3.h.m(canvas, this.f10888h, this.f10884d);
        this.f10881a.set(aVar.h());
        this.f10881a.transform(matrix);
        this.f10883c.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f10881a, this.f10883c);
        canvas.restore();
    }

    public final void l(Canvas canvas, Matrix matrix, l3.h hVar, h3.a<m, Path> aVar, h3.a<Integer, Integer> aVar2) {
        q3.h.m(canvas, this.f10888h, this.f10883c);
        canvas.drawRect(this.f10888h, this.f10883c);
        this.f10881a.set(aVar.h());
        this.f10881a.transform(matrix);
        this.f10883c.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f10881a, this.f10885e);
        canvas.restore();
    }

    public final void m(Canvas canvas, Matrix matrix, l3.h hVar, h3.a<m, Path> aVar, h3.a<Integer, Integer> aVar2) {
        q3.h.m(canvas, this.f10888h, this.f10884d);
        canvas.drawRect(this.f10888h, this.f10883c);
        this.f10885e.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        this.f10881a.set(aVar.h());
        this.f10881a.transform(matrix);
        canvas.drawPath(this.f10881a, this.f10885e);
        canvas.restore();
    }

    public final void n(Canvas canvas, Matrix matrix, l3.h hVar, h3.a<m, Path> aVar, h3.a<Integer, Integer> aVar2) {
        q3.h.m(canvas, this.f10888h, this.f10885e);
        canvas.drawRect(this.f10888h, this.f10883c);
        this.f10885e.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        this.f10881a.set(aVar.h());
        this.f10881a.transform(matrix);
        canvas.drawPath(this.f10881a, this.f10885e);
        canvas.restore();
    }

    public final void o(Canvas canvas, Matrix matrix) {
        e3.c.a("Layer#saveLayer");
        q3.h.n(canvas, this.f10888h, this.f10884d, 19);
        if (Build.VERSION.SDK_INT < 28) {
            s(canvas);
        }
        e3.c.b("Layer#saveLayer");
        for (int i10 = 0; i10 < this.f10896p.b().size(); i10++) {
            l3.h hVar = this.f10896p.b().get(i10);
            h3.a<m, Path> aVar = this.f10896p.a().get(i10);
            h3.a<Integer, Integer> aVar2 = this.f10896p.c().get(i10);
            int i11 = b.f10909b[hVar.a().ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    if (i10 == 0) {
                        this.f10883c.setColor(-16777216);
                        this.f10883c.setAlpha(BaseProgressIndicator.MAX_ALPHA);
                        canvas.drawRect(this.f10888h, this.f10883c);
                    }
                    if (hVar.d()) {
                        n(canvas, matrix, hVar, aVar, aVar2);
                    } else {
                        p(canvas, matrix, hVar, aVar, aVar2);
                    }
                } else if (i11 != 3) {
                    if (i11 == 4) {
                        if (hVar.d()) {
                            l(canvas, matrix, hVar, aVar, aVar2);
                        } else {
                            j(canvas, matrix, hVar, aVar, aVar2);
                        }
                    }
                } else if (hVar.d()) {
                    m(canvas, matrix, hVar, aVar, aVar2);
                } else {
                    k(canvas, matrix, hVar, aVar, aVar2);
                }
            } else if (q()) {
                this.f10883c.setAlpha(BaseProgressIndicator.MAX_ALPHA);
                canvas.drawRect(this.f10888h, this.f10883c);
            }
        }
        e3.c.a("Layer#restoreLayer");
        canvas.restore();
        e3.c.b("Layer#restoreLayer");
    }

    public final void p(Canvas canvas, Matrix matrix, l3.h hVar, h3.a<m, Path> aVar, h3.a<Integer, Integer> aVar2) {
        this.f10881a.set(aVar.h());
        this.f10881a.transform(matrix);
        canvas.drawPath(this.f10881a, this.f10885e);
    }

    public final boolean q() {
        if (this.f10896p.a().isEmpty()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f10896p.b().size(); i10++) {
            if (this.f10896p.b().get(i10).a() != h.a.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    public final void r() {
        if (this.f10900t != null) {
            return;
        }
        if (this.f10899s == null) {
            this.f10900t = Collections.emptyList();
            return;
        }
        this.f10900t = new ArrayList();
        for (a aVar = this.f10899s; aVar != null; aVar = aVar.f10899s) {
            this.f10900t.add(aVar);
        }
    }

    public final void s(Canvas canvas) {
        e3.c.a("Layer#clearLayer");
        RectF rectF = this.f10888h;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f10887g);
        e3.c.b("Layer#clearLayer");
    }

    public abstract void t(Canvas canvas, Matrix matrix, int i10);

    public l3.a v() {
        return this.f10895o.a();
    }

    public BlurMaskFilter w(float f10) {
        if (this.f10906z == f10) {
            return this.A;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f10 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.A = blurMaskFilter;
        this.f10906z = f10;
        return blurMaskFilter;
    }

    public j x() {
        return this.f10895o.c();
    }

    public d y() {
        return this.f10895o;
    }

    public boolean z() {
        h3.h hVar = this.f10896p;
        return (hVar == null || hVar.a().isEmpty()) ? false : true;
    }
}
