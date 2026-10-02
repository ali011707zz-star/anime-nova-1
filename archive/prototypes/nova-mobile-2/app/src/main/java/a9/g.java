package a9;

import com.github.mikephil.charting.charts.PieChart;
import java.util.ArrayList;
import java.util.List;
import w8.d;

/* compiled from: PieRadarHighlighter.java */
/* loaded from: classes.dex */
public abstract class g<T extends w8.d> implements e {

    /* renamed from: a, reason: collision with root package name */
    public T f526a;

    /* renamed from: b, reason: collision with root package name */
    public List<c> f527b = new ArrayList();

    public g(T t10) {
        this.f526a = t10;
    }

    @Override // a9.e
    public c a(float f10, float f11) {
        if (this.f526a.y(f10, f11) > this.f526a.getRadius()) {
            return null;
        }
        float z10 = this.f526a.z(f10, f11);
        T t10 = this.f526a;
        if (t10 instanceof PieChart) {
            z10 /= t10.getAnimator().b();
        }
        int A = this.f526a.A(z10);
        if (A < 0 || A >= this.f526a.getData().l().e0()) {
            return null;
        }
        return b(A, f10, f11);
    }

    public abstract c b(int i10, float f10, float f11);
}
