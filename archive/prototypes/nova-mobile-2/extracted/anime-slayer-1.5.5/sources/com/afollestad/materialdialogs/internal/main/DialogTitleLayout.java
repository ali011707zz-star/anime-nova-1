package com.afollestad.materialdialogs.internal.main;

import a3.a;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import d3.e;
import d3.f;
import jc.l;
import org.apache.http.impl.auth.NTLMEngineImpl;
import s2.h;
import s2.i;

/* compiled from: DialogTitleLayout.kt */
/* loaded from: classes.dex */
public final class DialogTitleLayout extends a {

    /* renamed from: j, reason: collision with root package name */
    public final int f4002j;

    /* renamed from: k, reason: collision with root package name */
    public final int f4003k;

    /* renamed from: l, reason: collision with root package name */
    public final int f4004l;

    /* renamed from: m, reason: collision with root package name */
    public final int f4005m;

    /* renamed from: n, reason: collision with root package name */
    public final int f4006n;

    /* renamed from: o, reason: collision with root package name */
    public ImageView f4007o;

    /* renamed from: p, reason: collision with root package name */
    public TextView f4008p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogTitleLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.g(context, "context");
        e eVar = e.f5611a;
        this.f4002j = eVar.c(this, h.f13685h);
        this.f4003k = eVar.c(this, h.f13689l);
        this.f4004l = eVar.c(this, h.f13684g);
        this.f4005m = eVar.c(this, h.f13692o);
        this.f4006n = eVar.c(this, h.f13693p);
    }

    public final boolean b() {
        ImageView imageView = this.f4007o;
        if (imageView == null) {
            l.v("iconView");
        }
        if (f.c(imageView)) {
            TextView textView = this.f4008p;
            if (textView == null) {
                l.v("titleView");
            }
            if (f.c(textView)) {
                return true;
            }
        }
        return false;
    }

    public final ImageView getIconView$com_afollestad_material_dialogs_core() {
        ImageView imageView = this.f4007o;
        if (imageView == null) {
            l.v("iconView");
        }
        return imageView;
    }

    public final TextView getTitleView$com_afollestad_material_dialogs_core() {
        TextView textView = this.f4008p;
        if (textView == null) {
            l.v("titleView");
        }
        return textView;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        l.g(canvas, "canvas");
        super.onDraw(canvas);
        if (getDrawDivider()) {
            canvas.drawLine(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, getMeasuredHeight() - getDividerHeight(), getMeasuredWidth(), getMeasuredHeight(), a());
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        View findViewById = findViewById(i.f13701h);
        l.b(findViewById, "findViewById(R.id.md_icon_title)");
        this.f4007o = (ImageView) findViewById;
        View findViewById2 = findViewById(i.f13702i);
        l.b(findViewById2, "findViewById(R.id.md_text_title)");
        this.f4008p = (TextView) findViewById2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int measuredWidth;
        int i15;
        int i16;
        if (b()) {
            return;
        }
        int i17 = this.f4002j;
        int measuredHeight = getMeasuredHeight() - this.f4003k;
        int i18 = measuredHeight - ((measuredHeight - i17) / 2);
        TextView textView = this.f4008p;
        if (textView == null) {
            l.v("titleView");
        }
        int measuredHeight2 = textView.getMeasuredHeight() / 2;
        int i19 = i18 - measuredHeight2;
        int i20 = measuredHeight2 + i18;
        if (f.d(this)) {
            measuredWidth = getMeasuredWidth() - this.f4004l;
            TextView textView2 = this.f4008p;
            if (textView2 == null) {
                l.v("titleView");
            }
            i14 = measuredWidth - textView2.getMeasuredWidth();
        } else {
            i14 = this.f4004l;
            TextView textView3 = this.f4008p;
            if (textView3 == null) {
                l.v("titleView");
            }
            measuredWidth = textView3.getMeasuredWidth() + i14;
        }
        ImageView imageView = this.f4007o;
        if (imageView == null) {
            l.v("iconView");
        }
        if (f.e(imageView)) {
            ImageView imageView2 = this.f4007o;
            if (imageView2 == null) {
                l.v("iconView");
            }
            int measuredHeight3 = imageView2.getMeasuredHeight() / 2;
            int i21 = i18 - measuredHeight3;
            int i22 = i18 + measuredHeight3;
            if (f.d(this)) {
                ImageView imageView3 = this.f4007o;
                if (imageView3 == null) {
                    l.v("iconView");
                }
                i14 = measuredWidth - imageView3.getMeasuredWidth();
                i16 = i14 - this.f4005m;
                TextView textView4 = this.f4008p;
                if (textView4 == null) {
                    l.v("titleView");
                }
                i15 = i16 - textView4.getMeasuredWidth();
            } else {
                ImageView imageView4 = this.f4007o;
                if (imageView4 == null) {
                    l.v("iconView");
                }
                measuredWidth = imageView4.getMeasuredWidth() + i14;
                int i23 = this.f4005m + measuredWidth;
                TextView textView5 = this.f4008p;
                if (textView5 == null) {
                    l.v("titleView");
                }
                int measuredWidth2 = textView5.getMeasuredWidth() + i23;
                i15 = i23;
                i16 = measuredWidth2;
            }
            ImageView imageView5 = this.f4007o;
            if (imageView5 == null) {
                l.v("iconView");
            }
            imageView5.layout(i14, i21, measuredWidth, i22);
            measuredWidth = i16;
            i14 = i15;
        }
        TextView textView6 = this.f4008p;
        if (textView6 == null) {
            l.v("titleView");
        }
        textView6.layout(i14, i19, measuredWidth, i20);
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        int i12 = 0;
        if (b()) {
            setMeasuredDimension(0, 0);
            return;
        }
        int size = View.MeasureSpec.getSize(i10);
        int i13 = size - (this.f4004l * 2);
        ImageView imageView = this.f4007o;
        if (imageView == null) {
            l.v("iconView");
        }
        if (f.e(imageView)) {
            ImageView imageView2 = this.f4007o;
            if (imageView2 == null) {
                l.v("iconView");
            }
            imageView2.measure(View.MeasureSpec.makeMeasureSpec(this.f4006n, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(this.f4006n, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
            ImageView imageView3 = this.f4007o;
            if (imageView3 == null) {
                l.v("iconView");
            }
            i13 -= imageView3.getMeasuredWidth() + this.f4005m;
        }
        TextView textView = this.f4008p;
        if (textView == null) {
            l.v("titleView");
        }
        textView.measure(View.MeasureSpec.makeMeasureSpec(i13, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        ImageView imageView4 = this.f4007o;
        if (imageView4 == null) {
            l.v("iconView");
        }
        if (f.e(imageView4)) {
            ImageView imageView5 = this.f4007o;
            if (imageView5 == null) {
                l.v("iconView");
            }
            i12 = imageView5.getMeasuredHeight();
        }
        TextView textView2 = this.f4008p;
        if (textView2 == null) {
            l.v("titleView");
        }
        setMeasuredDimension(size, Math.max(i12, textView2.getMeasuredHeight()) + this.f4002j + this.f4003k);
    }

    public final void setIconView$com_afollestad_material_dialogs_core(ImageView imageView) {
        l.g(imageView, "<set-?>");
        this.f4007o = imageView;
    }

    public final void setTitleView$com_afollestad_material_dialogs_core(TextView textView) {
        l.g(textView, "<set-?>");
        this.f4008p = textView;
    }
}
