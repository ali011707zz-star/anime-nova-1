package l3;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ShapeData.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public final List<j3.a> f10365a;

    /* renamed from: b, reason: collision with root package name */
    public PointF f10366b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10367c;

    public m(PointF pointF, boolean z10, List<j3.a> list) {
        this.f10366b = pointF;
        this.f10367c = z10;
        this.f10365a = new ArrayList(list);
    }

    public List<j3.a> a() {
        return this.f10365a;
    }

    public PointF b() {
        return this.f10366b;
    }

    public void c(m mVar, m mVar2, float f10) {
        if (this.f10366b == null) {
            this.f10366b = new PointF();
        }
        this.f10367c = mVar.d() || mVar2.d();
        if (mVar.a().size() != mVar2.a().size()) {
            q3.d.c("Curves must have the same number of control points. Shape 1: " + mVar.a().size() + "\tShape 2: " + mVar2.a().size());
        }
        int min = Math.min(mVar.a().size(), mVar2.a().size());
        if (this.f10365a.size() < min) {
            for (int size = this.f10365a.size(); size < min; size++) {
                this.f10365a.add(new j3.a());
            }
        } else if (this.f10365a.size() > min) {
            for (int size2 = this.f10365a.size() - 1; size2 >= min; size2--) {
                List<j3.a> list = this.f10365a;
                list.remove(list.size() - 1);
            }
        }
        PointF b10 = mVar.b();
        PointF b11 = mVar2.b();
        e(q3.g.k(b10.x, b11.x, f10), q3.g.k(b10.y, b11.y, f10));
        for (int size3 = this.f10365a.size() - 1; size3 >= 0; size3--) {
            j3.a aVar = mVar.a().get(size3);
            j3.a aVar2 = mVar2.a().get(size3);
            PointF a10 = aVar.a();
            PointF b12 = aVar.b();
            PointF c10 = aVar.c();
            PointF a11 = aVar2.a();
            PointF b13 = aVar2.b();
            PointF c11 = aVar2.c();
            this.f10365a.get(size3).d(q3.g.k(a10.x, a11.x, f10), q3.g.k(a10.y, a11.y, f10));
            this.f10365a.get(size3).e(q3.g.k(b12.x, b13.x, f10), q3.g.k(b12.y, b13.y, f10));
            this.f10365a.get(size3).f(q3.g.k(c10.x, c11.x, f10), q3.g.k(c10.y, c11.y, f10));
        }
    }

    public boolean d() {
        return this.f10367c;
    }

    public final void e(float f10, float f11) {
        if (this.f10366b == null) {
            this.f10366b = new PointF();
        }
        this.f10366b.set(f10, f11);
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f10365a.size() + "closed=" + this.f10367c + '}';
    }

    public m() {
        this.f10365a = new ArrayList();
    }
}
