package m3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import java.util.Collections;
import java.util.List;
import l3.o;
import o3.j;

/* compiled from: ShapeLayer.java */
/* loaded from: classes.dex */
public class f extends a {
    public final g3.d B;
    public final b C;

    public f(e3.f fVar, d dVar, b bVar) {
        super(fVar, dVar);
        this.C = bVar;
        g3.d dVar2 = new g3.d(fVar, this, new o("__container", dVar.n(), false));
        this.B = dVar2;
        dVar2.c(Collections.emptyList(), Collections.emptyList());
    }

    @Override // m3.a
    public void G(j3.e eVar, int i10, List<j3.e> list, j3.e eVar2) {
        this.B.f(eVar, i10, list, eVar2);
    }

    @Override // m3.a, g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        super.a(rectF, matrix, z10);
        this.B.a(rectF, this.f10893m, z10);
    }

    @Override // m3.a
    public void t(Canvas canvas, Matrix matrix, int i10) {
        this.B.g(canvas, matrix, i10);
    }

    @Override // m3.a
    public l3.a v() {
        l3.a v10 = super.v();
        return v10 != null ? v10 : this.C.v();
    }

    @Override // m3.a
    public j x() {
        j x10 = super.x();
        return x10 != null ? x10 : this.C.x();
    }
}
