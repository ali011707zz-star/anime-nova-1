package y8;

import android.graphics.Color;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.List;

/* compiled from: BarDataSet.java */
/* loaded from: classes.dex */
public class b extends e<c> implements c9.a {
    public float A;
    public int B;
    public int C;
    public int D;
    public String[] E;

    /* renamed from: y, reason: collision with root package name */
    public int f16729y;

    /* renamed from: z, reason: collision with root package name */
    public int f16730z;

    public b(List<c> list, String str) {
        super(list, str);
        this.f16729y = 1;
        this.f16730z = Color.rgb(215, 215, 215);
        this.A = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.B = -16777216;
        this.C = 120;
        this.D = 0;
        this.E = new String[]{"Stack"};
        this.f16735x = Color.rgb(0, 0, 0);
        G0(list);
        E0(list);
    }

    public final void E0(List<c> list) {
        this.D = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            float[] n10 = list.get(i10).n();
            if (n10 == null) {
                this.D++;
            } else {
                this.D += n10.length;
            }
        }
    }

    @Override // y8.i
    /* renamed from: F0, reason: merged with bridge method [inline-methods] */
    public void z0(c cVar) {
        if (cVar == null || Float.isNaN(cVar.e())) {
            return;
        }
        if (cVar.n() == null) {
            if (cVar.e() < this.f16768u) {
                this.f16768u = cVar.e();
            }
            if (cVar.e() > this.f16767t) {
                this.f16767t = cVar.e();
            }
        } else {
            if ((-cVar.j()) < this.f16768u) {
                this.f16768u = -cVar.j();
            }
            if (cVar.l() > this.f16767t) {
                this.f16767t = cVar.l();
            }
        }
        A0(cVar);
    }

    public final void G0(List<c> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            float[] n10 = list.get(i10).n();
            if (n10 != null && n10.length > this.f16729y) {
                this.f16729y = n10.length;
            }
        }
    }

    @Override // c9.a
    public int J() {
        return this.C;
    }

    @Override // c9.a
    public float L() {
        return this.A;
    }

    @Override // c9.a
    public boolean T() {
        return this.f16729y > 1;
    }

    @Override // c9.a
    public String[] V() {
        return this.E;
    }

    @Override // c9.a
    public int g() {
        return this.f16730z;
    }

    @Override // c9.a
    public int w() {
        return this.f16729y;
    }

    @Override // c9.a
    public int y() {
        return this.B;
    }
}
