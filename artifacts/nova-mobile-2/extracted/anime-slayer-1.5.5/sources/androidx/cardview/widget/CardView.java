package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import r.b;
import r.c;
import r.d;
import r.e;

/* loaded from: classes.dex */
public class CardView extends FrameLayout {
    private static final int[] COLOR_BACKGROUND_ATTR = {R.attr.colorBackground};
    private static final e IMPL;
    private final d mCardViewDelegate;
    private boolean mCompatPadding;
    public final Rect mContentPadding;
    private boolean mPreventCornerOverlap;
    public final Rect mShadowBounds;
    public int mUserSetMinHeight;
    public int mUserSetMinWidth;

    /* loaded from: classes.dex */
    public class a implements d {

        /* renamed from: a, reason: collision with root package name */
        public Drawable f1600a;

        public a() {
        }

        @Override // r.d
        public View a() {
            return CardView.this;
        }

        @Override // r.d
        public void b(int i10, int i11) {
            CardView cardView = CardView.this;
            if (i10 > cardView.mUserSetMinWidth) {
                CardView.super.setMinimumWidth(i10);
            }
            CardView cardView2 = CardView.this;
            if (i11 > cardView2.mUserSetMinHeight) {
                CardView.super.setMinimumHeight(i11);
            }
        }

        @Override // r.d
        public void c(Drawable drawable) {
            this.f1600a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override // r.d
        public boolean d() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override // r.d
        public boolean e() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // r.d
        public Drawable f() {
            return this.f1600a;
        }

        @Override // r.d
        public void setShadowPadding(int i10, int i11, int i12, int i13) {
            CardView.this.mShadowBounds.set(i10, i11, i12, i13);
            CardView cardView = CardView.this;
            Rect rect = cardView.mContentPadding;
            CardView.super.setPadding(i10 + rect.left, i11 + rect.top, i12 + rect.right, i13 + rect.bottom);
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            IMPL = new b();
        } else if (i10 >= 17) {
            IMPL = new r.a();
        } else {
            IMPL = new c();
        }
        IMPL.i();
    }

    public CardView(Context context) {
        this(context, null);
    }

    public ColorStateList getCardBackgroundColor() {
        return IMPL.e(this.mCardViewDelegate);
    }

    public float getCardElevation() {
        return IMPL.g(this.mCardViewDelegate);
    }

    public int getContentPaddingBottom() {
        return this.mContentPadding.bottom;
    }

    public int getContentPaddingLeft() {
        return this.mContentPadding.left;
    }

    public int getContentPaddingRight() {
        return this.mContentPadding.right;
    }

    public int getContentPaddingTop() {
        return this.mContentPadding.top;
    }

    public float getMaxCardElevation() {
        return IMPL.n(this.mCardViewDelegate);
    }

    public boolean getPreventCornerOverlap() {
        return this.mPreventCornerOverlap;
    }

    public float getRadius() {
        return IMPL.h(this.mCardViewDelegate);
    }

    public boolean getUseCompatPadding() {
        return this.mCompatPadding;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        if (!(IMPL instanceof b)) {
            int mode = View.MeasureSpec.getMode(i10);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i10 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(r0.b(this.mCardViewDelegate)), View.MeasureSpec.getSize(i10)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i11);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i11 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(r0.c(this.mCardViewDelegate)), View.MeasureSpec.getSize(i11)), mode2);
            }
            super.onMeasure(i10, i11);
            return;
        }
        super.onMeasure(i10, i11);
    }

    public void setCardBackgroundColor(int i10) {
        IMPL.o(this.mCardViewDelegate, ColorStateList.valueOf(i10));
    }

    public void setCardElevation(float f10) {
        IMPL.k(this.mCardViewDelegate, f10);
    }

    public void setContentPadding(int i10, int i11, int i12, int i13) {
        this.mContentPadding.set(i10, i11, i12, i13);
        IMPL.j(this.mCardViewDelegate);
    }

    public void setMaxCardElevation(float f10) {
        IMPL.m(this.mCardViewDelegate, f10);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i10) {
        this.mUserSetMinHeight = i10;
        super.setMinimumHeight(i10);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i10) {
        this.mUserSetMinWidth = i10;
        super.setMinimumWidth(i10);
    }

    @Override // android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
    }

    public void setPreventCornerOverlap(boolean z10) {
        if (z10 != this.mPreventCornerOverlap) {
            this.mPreventCornerOverlap = z10;
            IMPL.l(this.mCardViewDelegate);
        }
    }

    public void setRadius(float f10) {
        IMPL.f(this.mCardViewDelegate, f10);
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.mCompatPadding != z10) {
            this.mCompatPadding = z10;
            IMPL.d(this.mCardViewDelegate);
        }
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, q.a.f12241a);
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        IMPL.o(this.mCardViewDelegate, colorStateList);
    }

    public CardView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        int color;
        ColorStateList valueOf;
        Rect rect = new Rect();
        this.mContentPadding = rect;
        this.mShadowBounds = new Rect();
        a aVar = new a();
        this.mCardViewDelegate = aVar;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.e.f12248a, i10, q.d.f12247a);
        int i11 = q.e.f12251d;
        if (obtainStyledAttributes.hasValue(i11)) {
            valueOf = obtainStyledAttributes.getColorStateList(i11);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(COLOR_BACKGROUND_ATTR);
            int color2 = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color2, fArr);
            if (fArr[2] > 0.5f) {
                color = getResources().getColor(q.b.f12243b);
            } else {
                color = getResources().getColor(q.b.f12242a);
            }
            valueOf = ColorStateList.valueOf(color);
        }
        ColorStateList colorStateList = valueOf;
        float dimension = obtainStyledAttributes.getDimension(q.e.f12252e, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        float dimension2 = obtainStyledAttributes.getDimension(q.e.f12253f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        float dimension3 = obtainStyledAttributes.getDimension(q.e.f12254g, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.mCompatPadding = obtainStyledAttributes.getBoolean(q.e.f12256i, false);
        this.mPreventCornerOverlap = obtainStyledAttributes.getBoolean(q.e.f12255h, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(q.e.f12257j, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(q.e.f12259l, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(q.e.f12261n, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(q.e.f12260m, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(q.e.f12258k, dimensionPixelSize);
        float f10 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.mUserSetMinWidth = obtainStyledAttributes.getDimensionPixelSize(q.e.f12249b, 0);
        this.mUserSetMinHeight = obtainStyledAttributes.getDimensionPixelSize(q.e.f12250c, 0);
        obtainStyledAttributes.recycle();
        IMPL.a(aVar, context, colorStateList, dimension, dimension2, f10);
    }
}
