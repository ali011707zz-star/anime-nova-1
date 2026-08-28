package a9;

import com.github.mikephil.charting.charts.PieChart;
import y8.k;

/* compiled from: PieHighlighter.java */
/* loaded from: classes.dex */
public class f extends g<PieChart> {
    public f(PieChart pieChart) {
        super(pieChart);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // a9.g
    public c b(int i10, float f10, float f11) {
        c9.g u10 = ((k) ((PieChart) this.f526a).getData()).u();
        return new c(i10, u10.l0(i10).e(), f10, f11, 0, u10.a0());
    }
}
