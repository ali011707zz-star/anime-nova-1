package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: Constraints.java */
/* loaded from: classes.dex */
public class d extends ViewGroup {

    /* renamed from: f, reason: collision with root package name */
    public c f1801f;

    @Override // android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public c getConstraintSet() {
        if (this.f1801f == null) {
            this.f1801f = new c();
        }
        this.f1801f.p(this);
        return this.f1801f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.b(layoutParams);
    }

    /* compiled from: Constraints.java */
    /* loaded from: classes.dex */
    public static class a extends ConstraintLayout.b {
        public float A0;
        public float B0;
        public float C0;
        public float D0;
        public float E0;
        public float F0;
        public float G0;
        public float H0;
        public float I0;

        /* renamed from: w0, reason: collision with root package name */
        public float f1802w0;

        /* renamed from: x0, reason: collision with root package name */
        public boolean f1803x0;

        /* renamed from: y0, reason: collision with root package name */
        public float f1804y0;

        /* renamed from: z0, reason: collision with root package name */
        public float f1805z0;

        public a(int i10, int i11) {
            super(i10, i11);
            this.f1802w0 = 1.0f;
            this.f1803x0 = false;
            this.f1804y0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f1805z0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.A0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.B0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.C0 = 1.0f;
            this.D0 = 1.0f;
            this.E0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.F0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.G0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.H0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.I0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1802w0 = 1.0f;
            this.f1803x0 = false;
            this.f1804y0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f1805z0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.A0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.B0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.C0 = 1.0f;
            this.D0 = 1.0f;
            this.E0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.F0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.G0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.H0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.I0 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a0.d.f134j4);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == a0.d.f145k4) {
                    this.f1802w0 = obtainStyledAttributes.getFloat(index, this.f1802w0);
                } else if (index == a0.d.f266v4) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.f1804y0 = obtainStyledAttributes.getFloat(index, this.f1804y0);
                        this.f1803x0 = true;
                    }
                } else if (index == a0.d.f233s4) {
                    this.A0 = obtainStyledAttributes.getFloat(index, this.A0);
                } else if (index == a0.d.f244t4) {
                    this.B0 = obtainStyledAttributes.getFloat(index, this.B0);
                } else if (index == a0.d.f222r4) {
                    this.f1805z0 = obtainStyledAttributes.getFloat(index, this.f1805z0);
                } else if (index == a0.d.f200p4) {
                    this.C0 = obtainStyledAttributes.getFloat(index, this.C0);
                } else if (index == a0.d.f211q4) {
                    this.D0 = obtainStyledAttributes.getFloat(index, this.D0);
                } else if (index == a0.d.f156l4) {
                    this.E0 = obtainStyledAttributes.getFloat(index, this.E0);
                } else if (index == a0.d.f167m4) {
                    this.F0 = obtainStyledAttributes.getFloat(index, this.F0);
                } else if (index == a0.d.f178n4) {
                    this.G0 = obtainStyledAttributes.getFloat(index, this.G0);
                } else if (index == a0.d.f189o4) {
                    this.H0 = obtainStyledAttributes.getFloat(index, this.H0);
                } else if (index == a0.d.f255u4 && Build.VERSION.SDK_INT >= 21) {
                    this.I0 = obtainStyledAttributes.getFloat(index, this.I0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }
}
