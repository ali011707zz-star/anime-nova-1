package z;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import z.p;

/* compiled from: MotionHelper.java */
/* loaded from: classes.dex */
public class n extends androidx.constraintlayout.widget.b implements p.i {

    /* renamed from: o, reason: collision with root package name */
    public boolean f17011o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f17012p;

    /* renamed from: q, reason: collision with root package name */
    public float f17013q;

    /* renamed from: r, reason: collision with root package name */
    public View[] f17014r;

    public void A(View view, float f10) {
    }

    @Override // z.p.i
    public void a(p pVar, int i10, int i11) {
    }

    @Override // z.p.i
    public void b(p pVar, int i10, boolean z10, float f10) {
    }

    @Override // z.p.i
    public void c(p pVar, int i10) {
    }

    @Override // z.p.i
    public void d(p pVar, int i10, int i11, float f10) {
    }

    public float getProgress() {
        return this.f17013q;
    }

    @Override // androidx.constraintlayout.widget.b
    public void n(AttributeSet attributeSet) {
        super.n(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a0.d.f71d8);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == a0.d.f94f8) {
                    this.f17011o = obtainStyledAttributes.getBoolean(index, this.f17011o);
                } else if (index == a0.d.f83e8) {
                    this.f17012p = obtainStyledAttributes.getBoolean(index, this.f17012p);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f10) {
        this.f17013q = f10;
        int i10 = 0;
        if (this.f1685g > 0) {
            this.f17014r = m((ConstraintLayout) getParent());
            while (i10 < this.f1685g) {
                A(this.f17014r[i10], f10);
                i10++;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        while (i10 < childCount) {
            View childAt = viewGroup.getChildAt(i10);
            if (!(childAt instanceof n)) {
                A(childAt, f10);
            }
            i10++;
        }
    }

    public boolean u() {
        return false;
    }

    public boolean v() {
        return this.f17012p;
    }

    public boolean w() {
        return this.f17011o;
    }

    public void x(p pVar) {
    }

    public void y(Canvas canvas) {
    }

    public void z(Canvas canvas) {
    }
}
