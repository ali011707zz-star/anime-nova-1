package g3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import h3.a;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ContentGroup.java */
/* loaded from: classes.dex */
public class d implements e, m, a.b, j3.f {

    /* renamed from: a, reason: collision with root package name */
    public Paint f6784a;

    /* renamed from: b, reason: collision with root package name */
    public RectF f6785b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f6786c;

    /* renamed from: d, reason: collision with root package name */
    public final Path f6787d;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f6788e;

    /* renamed from: f, reason: collision with root package name */
    public final String f6789f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f6790g;

    /* renamed from: h, reason: collision with root package name */
    public final List<c> f6791h;

    /* renamed from: i, reason: collision with root package name */
    public final e3.f f6792i;

    /* renamed from: j, reason: collision with root package name */
    public List<m> f6793j;

    /* renamed from: k, reason: collision with root package name */
    public h3.p f6794k;

    public d(e3.f fVar, m3.a aVar, l3.o oVar) {
        this(fVar, aVar, oVar.c(), oVar.d(), d(fVar, aVar, oVar.b()), h(oVar.b()));
    }

    public static List<c> d(e3.f fVar, m3.a aVar, List<l3.c> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            c a10 = list.get(i10).a(fVar, aVar);
            if (a10 != null) {
                arrayList.add(a10);
            }
        }
        return arrayList;
    }

    public static k3.l h(List<l3.c> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            l3.c cVar = list.get(i10);
            if (cVar instanceof k3.l) {
                return (k3.l) cVar;
            }
        }
        return null;
    }

    @Override // g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        this.f6786c.set(matrix);
        h3.p pVar = this.f6794k;
        if (pVar != null) {
            this.f6786c.preConcat(pVar.f());
        }
        this.f6788e.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        for (int size = this.f6791h.size() - 1; size >= 0; size--) {
            c cVar = this.f6791h.get(size);
            if (cVar instanceof e) {
                ((e) cVar).a(this.f6788e, this.f6786c, z10);
                rectF.union(this.f6788e);
            }
        }
    }

    @Override // h3.a.b
    public void b() {
        this.f6792i.invalidateSelf();
    }

    @Override // g3.c
    public void c(List<c> list, List<c> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f6791h.size());
        arrayList.addAll(list);
        for (int size = this.f6791h.size() - 1; size >= 0; size--) {
            c cVar = this.f6791h.get(size);
            cVar.c(arrayList, this.f6791h.subList(0, size));
            arrayList.add(cVar);
        }
    }

    @Override // j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        h3.p pVar = this.f6794k;
        if (pVar != null) {
            pVar.c(t10, cVar);
        }
    }

    @Override // j3.f
    public void f(j3.e eVar, int i10, List<j3.e> list, j3.e eVar2) {
        if (eVar.g(getName(), i10) || "__container".equals(getName())) {
            if (!"__container".equals(getName())) {
                eVar2 = eVar2.a(getName());
                if (eVar.c(getName(), i10)) {
                    list.add(eVar2.i(this));
                }
            }
            if (eVar.h(getName(), i10)) {
                int e10 = i10 + eVar.e(getName(), i10);
                for (int i11 = 0; i11 < this.f6791h.size(); i11++) {
                    c cVar = this.f6791h.get(i11);
                    if (cVar instanceof j3.f) {
                        ((j3.f) cVar).f(eVar, e10, list, eVar2);
                    }
                }
            }
        }
    }

    @Override // g3.e
    public void g(Canvas canvas, Matrix matrix, int i10) {
        if (this.f6790g) {
            return;
        }
        this.f6786c.set(matrix);
        h3.p pVar = this.f6794k;
        if (pVar != null) {
            this.f6786c.preConcat(pVar.f());
            i10 = (int) (((((this.f6794k.h() == null ? 100 : this.f6794k.h().h().intValue()) / 100.0f) * i10) / 255.0f) * 255.0f);
        }
        boolean z10 = this.f6792i.I() && k() && i10 != 255;
        if (z10) {
            this.f6785b.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            a(this.f6785b, this.f6786c, true);
            this.f6784a.setAlpha(i10);
            q3.h.m(canvas, this.f6785b, this.f6784a);
        }
        if (z10) {
            i10 = BaseProgressIndicator.MAX_ALPHA;
        }
        for (int size = this.f6791h.size() - 1; size >= 0; size--) {
            c cVar = this.f6791h.get(size);
            if (cVar instanceof e) {
                ((e) cVar).g(canvas, this.f6786c, i10);
            }
        }
        if (z10) {
            canvas.restore();
        }
    }

    @Override // g3.c
    public String getName() {
        return this.f6789f;
    }

    @Override // g3.m
    public Path getPath() {
        this.f6786c.reset();
        h3.p pVar = this.f6794k;
        if (pVar != null) {
            this.f6786c.set(pVar.f());
        }
        this.f6787d.reset();
        if (this.f6790g) {
            return this.f6787d;
        }
        for (int size = this.f6791h.size() - 1; size >= 0; size--) {
            c cVar = this.f6791h.get(size);
            if (cVar instanceof m) {
                this.f6787d.addPath(((m) cVar).getPath(), this.f6786c);
            }
        }
        return this.f6787d;
    }

    public List<m> i() {
        if (this.f6793j == null) {
            this.f6793j = new ArrayList();
            for (int i10 = 0; i10 < this.f6791h.size(); i10++) {
                c cVar = this.f6791h.get(i10);
                if (cVar instanceof m) {
                    this.f6793j.add((m) cVar);
                }
            }
        }
        return this.f6793j;
    }

    public Matrix j() {
        h3.p pVar = this.f6794k;
        if (pVar != null) {
            return pVar.f();
        }
        this.f6786c.reset();
        return this.f6786c;
    }

    public final boolean k() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f6791h.size(); i11++) {
            if ((this.f6791h.get(i11) instanceof e) && (i10 = i10 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    public d(e3.f fVar, m3.a aVar, String str, boolean z10, List<c> list, k3.l lVar) {
        this.f6784a = new f3.a();
        this.f6785b = new RectF();
        this.f6786c = new Matrix();
        this.f6787d = new Path();
        this.f6788e = new RectF();
        this.f6789f = str;
        this.f6792i = fVar;
        this.f6790g = z10;
        this.f6791h = list;
        if (lVar != null) {
            h3.p b10 = lVar.b();
            this.f6794k = b10;
            b10.a(aVar);
            this.f6794k.b(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof j) {
                arrayList.add((j) cVar);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((j) arrayList.get(size2)).d(list.listIterator(list.size()));
        }
    }
}
