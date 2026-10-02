package y8;

import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: PieData.java */
/* loaded from: classes.dex */
public class k extends h<c9.g> {
    public k() {
    }

    @Override // y8.h
    public j i(a9.c cVar) {
        return u().l0((int) cVar.g());
    }

    public c9.g u() {
        return (c9.g) this.f16765i.get(0);
    }

    @Override // y8.h
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public c9.g e(int i10) {
        if (i10 == 0) {
            return u();
        }
        return null;
    }

    public float w() {
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        for (int i10 = 0; i10 < u().e0(); i10++) {
            f10 += u().l0(i10).e();
        }
        return f10;
    }

    public k(c9.g gVar) {
        super(gVar);
    }
}
