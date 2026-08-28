package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class Barrier extends b {

    /* renamed from: o, reason: collision with root package name */
    public int f1605o;

    /* renamed from: p, reason: collision with root package name */
    public int f1606p;

    /* renamed from: q, reason: collision with root package name */
    public w.a f1607q;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public boolean getAllowsGoneWidget() {
        return this.f1607q.l1();
    }

    public int getMargin() {
        return this.f1607q.n1();
    }

    public int getType() {
        return this.f1605o;
    }

    @Override // androidx.constraintlayout.widget.b
    public void n(AttributeSet attributeSet) {
        super.n(attributeSet);
        this.f1607q = new w.a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a0.d.f164m1);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == a0.d.f263v1) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == a0.d.f252u1) {
                    this.f1607q.q1(obtainStyledAttributes.getBoolean(index, true));
                } else if (index == a0.d.f274w1) {
                    this.f1607q.s1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f1687i = this.f1607q;
        t();
    }

    @Override // androidx.constraintlayout.widget.b
    public void o(w.e eVar, boolean z10) {
        u(eVar, this.f1605o, z10);
    }

    public void setAllowsGoneWidget(boolean z10) {
        this.f1607q.q1(z10);
    }

    public void setDpMargin(int i10) {
        this.f1607q.s1((int) ((i10 * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int i10) {
        this.f1607q.s1(i10);
    }

    public void setType(int i10) {
        this.f1605o = i10;
    }

    public final void u(w.e eVar, int i10, boolean z10) {
        this.f1606p = i10;
        if (Build.VERSION.SDK_INT < 17) {
            int i11 = this.f1605o;
            if (i11 == 5) {
                this.f1606p = 0;
            } else if (i11 == 6) {
                this.f1606p = 1;
            }
        } else if (z10) {
            int i12 = this.f1605o;
            if (i12 == 5) {
                this.f1606p = 1;
            } else if (i12 == 6) {
                this.f1606p = 0;
            }
        } else {
            int i13 = this.f1605o;
            if (i13 == 5) {
                this.f1606p = 0;
            } else if (i13 == 6) {
                this.f1606p = 1;
            }
        }
        if (eVar instanceof w.a) {
            ((w.a) eVar).r1(this.f1606p);
        }
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }
}
