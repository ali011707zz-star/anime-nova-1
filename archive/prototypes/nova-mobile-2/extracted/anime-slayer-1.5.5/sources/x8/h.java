package x8;

import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: XAxis.java */
/* loaded from: classes.dex */
public class h extends x8.a {
    public int J = 1;
    public int K = 1;
    public int L = 1;
    public int M = 1;
    public float N = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    public boolean O = false;
    public a P = a.TOP;

    /* compiled from: XAxis.java */
    /* loaded from: classes.dex */
    public enum a {
        TOP,
        BOTTOM,
        BOTH_SIDED,
        TOP_INSIDE,
        BOTTOM_INSIDE
    }

    public h() {
        this.f16156c = g9.i.e(4.0f);
    }

    public float P() {
        return this.N;
    }

    public a Q() {
        return this.P;
    }

    public boolean R() {
        return this.O;
    }

    public void S(boolean z10) {
        this.O = z10;
    }

    public void T(a aVar) {
        this.P = aVar;
    }
}
