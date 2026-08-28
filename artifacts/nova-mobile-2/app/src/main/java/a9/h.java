package a9;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.List;
import y8.n;

/* compiled from: RadarHighlighter.java */
/* loaded from: classes.dex */
public class h extends g<w8.e> {
    public h(w8.e eVar) {
        super(eVar);
    }

    @Override // a9.g
    public c b(int i10, float f10, float f11) {
        List<c> c10 = c(i10);
        float y10 = ((w8.e) this.f526a).y(f10, f11) / ((w8.e) this.f526a).getFactor();
        c cVar = null;
        float f12 = Float.MAX_VALUE;
        for (int i11 = 0; i11 < c10.size(); i11++) {
            c cVar2 = c10.get(i11);
            float abs = Math.abs(cVar2.i() - y10);
            if (abs < f12) {
                cVar = cVar2;
                f12 = abs;
            }
        }
        return cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [y8.j, y8.g] */
    public List<c> c(int i10) {
        int i11 = i10;
        this.f527b.clear();
        float a10 = ((w8.e) this.f526a).getAnimator().a();
        float b10 = ((w8.e) this.f526a).getAnimator().b();
        float sliceAngle = ((w8.e) this.f526a).getSliceAngle();
        float factor = ((w8.e) this.f526a).getFactor();
        g9.e c10 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        int i12 = 0;
        while (i12 < ((n) ((w8.e) this.f526a).getData()).f()) {
            c9.h e10 = ((n) ((w8.e) this.f526a).getData()).e(i12);
            var l02 = e10.l0(i11);
            float f10 = i11;
            g9.i.r(((w8.e) this.f526a).getCenterOffsets(), (l02.e() - ((w8.e) this.f526a).getYChartMin()) * factor * b10, (sliceAngle * f10 * a10) + ((w8.e) this.f526a).getRotationAngle(), c10);
            this.f527b.add(new c(f10, l02.e(), c10.f7055c, c10.f7056d, i12, e10.a0()));
            i12++;
            i11 = i10;
        }
        return this.f527b;
    }
}
