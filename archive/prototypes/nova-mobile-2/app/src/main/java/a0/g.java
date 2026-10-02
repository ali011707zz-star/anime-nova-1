package a0;

import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import w.k;

/* compiled from: VirtualLayout.java */
/* loaded from: classes.dex */
public abstract class g extends androidx.constraintlayout.widget.b {

    /* renamed from: o, reason: collision with root package name */
    public boolean f333o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f334p;

    @Override // androidx.constraintlayout.widget.b
    public void j(ConstraintLayout constraintLayout) {
        i(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.b
    public void n(AttributeSet attributeSet) {
        super.n(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, d.f164m1);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == d.f186o1) {
                    this.f333o = true;
                } else if (index == d.f241t1) {
                    this.f334p = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.b, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f333o || this.f334p) {
            ViewParent parent = getParent();
            if (parent instanceof ConstraintLayout) {
                ConstraintLayout constraintLayout = (ConstraintLayout) parent;
                int visibility = getVisibility();
                float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                for (int i10 = 0; i10 < this.f1685g; i10++) {
                    View viewById = constraintLayout.getViewById(this.f1684f[i10]);
                    if (viewById != null) {
                        if (this.f333o) {
                            viewById.setVisibility(visibility);
                        }
                        if (this.f334p && elevation > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && Build.VERSION.SDK_INT >= 21) {
                            viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                        }
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        h();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        h();
    }

    public void u(k kVar, int i10, int i11) {
    }
}
