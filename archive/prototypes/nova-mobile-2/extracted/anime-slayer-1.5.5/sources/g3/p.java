package g3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import h3.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* compiled from: RepeaterContent.java */
/* loaded from: classes.dex */
public class p implements e, m, j, a.b, k {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f6878a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public final Path f6879b = new Path();

    /* renamed from: c, reason: collision with root package name */
    public final e3.f f6880c;

    /* renamed from: d, reason: collision with root package name */
    public final m3.a f6881d;

    /* renamed from: e, reason: collision with root package name */
    public final String f6882e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f6883f;

    /* renamed from: g, reason: collision with root package name */
    public final h3.a<Float, Float> f6884g;

    /* renamed from: h, reason: collision with root package name */
    public final h3.a<Float, Float> f6885h;

    /* renamed from: i, reason: collision with root package name */
    public final h3.p f6886i;

    /* renamed from: j, reason: collision with root package name */
    public d f6887j;

    public p(e3.f fVar, m3.a aVar, l3.l lVar) {
        this.f6880c = fVar;
        this.f6881d = aVar;
        this.f6882e = lVar.c();
        this.f6883f = lVar.f();
        h3.a<Float, Float> a10 = lVar.b().a();
        this.f6884g = a10;
        aVar.i(a10);
        a10.a(this);
        h3.a<Float, Float> a11 = lVar.d().a();
        this.f6885h = a11;
        aVar.i(a11);
        a11.a(this);
        h3.p b10 = lVar.e().b();
        this.f6886i = b10;
        b10.a(aVar);
        b10.b(this);
    }

    @Override // g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        this.f6887j.a(rectF, matrix, z10);
    }

    @Override // h3.a.b
    public void b() {
        this.f6880c.invalidateSelf();
    }

    @Override // g3.c
    public void c(List<c> list, List<c> list2) {
        this.f6887j.c(list, list2);
    }

    @Override // g3.j
    public void d(ListIterator<c> listIterator) {
        if (this.f6887j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f6887j = new d(this.f6880c, this.f6881d, "Repeater", this.f6883f, arrayList, null);
    }

    @Override // j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        if (this.f6886i.c(t10, cVar)) {
            return;
        }
        if (t10 == e3.k.f6125u) {
            this.f6884g.n(cVar);
        } else if (t10 == e3.k.f6126v) {
            this.f6885h.n(cVar);
        }
    }

    @Override // j3.f
    public void f(j3.e eVar, int i10, List<j3.e> list, j3.e eVar2) {
        q3.g.m(eVar, i10, list, eVar2, this);
    }

    @Override // g3.e
    public void g(Canvas canvas, Matrix matrix, int i10) {
        float floatValue = this.f6884g.h().floatValue();
        float floatValue2 = this.f6885h.h().floatValue();
        float floatValue3 = this.f6886i.i().h().floatValue() / 100.0f;
        float floatValue4 = this.f6886i.e().h().floatValue() / 100.0f;
        for (int i11 = ((int) floatValue) - 1; i11 >= 0; i11--) {
            this.f6878a.set(matrix);
            float f10 = i11;
            this.f6878a.preConcat(this.f6886i.g(f10 + floatValue2));
            this.f6887j.g(canvas, this.f6878a, (int) (i10 * q3.g.k(floatValue3, floatValue4, f10 / floatValue)));
        }
    }

    @Override // g3.c
    public String getName() {
        return this.f6882e;
    }

    @Override // g3.m
    public Path getPath() {
        Path path = this.f6887j.getPath();
        this.f6879b.reset();
        float floatValue = this.f6884g.h().floatValue();
        float floatValue2 = this.f6885h.h().floatValue();
        for (int i10 = ((int) floatValue) - 1; i10 >= 0; i10--) {
            this.f6878a.set(this.f6886i.g(i10 + floatValue2));
            this.f6879b.addPath(path, this.f6878a);
        }
        return this.f6879b;
    }
}
