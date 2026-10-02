package com.afollestad.materialdialogs.internal.main;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.afollestad.materialdialogs.internal.button.DialogActionButton;
import com.afollestad.materialdialogs.internal.button.DialogActionButtonLayout;
import com.afollestad.materialdialogs.internal.message.DialogContentLayout;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import d3.e;
import d3.f;
import jc.l;
import kotlin.TypeCastException;
import org.apache.http.impl.auth.NTLMEngineImpl;
import s2.b;
import s2.c;
import s2.h;
import s2.i;
import y2.a;

/* compiled from: DialogLayout.kt */
/* loaded from: classes.dex */
public final class DialogLayout extends FrameLayout {

    /* renamed from: f, reason: collision with root package name */
    public int f3988f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3989g;

    /* renamed from: h, reason: collision with root package name */
    public Paint f3990h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3991i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3992j;

    /* renamed from: k, reason: collision with root package name */
    public c f3993k;

    /* renamed from: l, reason: collision with root package name */
    public DialogTitleLayout f3994l;

    /* renamed from: m, reason: collision with root package name */
    public DialogContentLayout f3995m;

    /* renamed from: n, reason: collision with root package name */
    public DialogActionButtonLayout f3996n;

    /* renamed from: o, reason: collision with root package name */
    public b f3997o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f3998p;

    /* renamed from: q, reason: collision with root package name */
    public int f3999q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.g(context, "context");
        e eVar = e.f5611a;
        this.f3991i = eVar.c(this, h.f13685h);
        this.f3992j = eVar.c(this, h.f13686i);
        this.f3997o = b.WRAP_CONTENT;
        this.f3998p = true;
        this.f3999q = -1;
    }

    public static /* synthetic */ void d(DialogLayout dialogLayout, Canvas canvas, int i10, float f10, float f11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            f10 = dialogLayout.getMeasuredHeight();
        }
        if ((i11 & 4) != 0) {
            f11 = f10;
        }
        dialogLayout.c(canvas, i10, f10, f11);
    }

    public static /* synthetic */ Paint h(DialogLayout dialogLayout, int i10, float f10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            f10 = 1.0f;
        }
        return dialogLayout.g(i10, f10);
    }

    public static /* synthetic */ void j(DialogLayout dialogLayout, Canvas canvas, int i10, float f10, float f11, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            f11 = f10;
        }
        dialogLayout.i(canvas, i10, f10, f11);
    }

    public final void a(c cVar) {
        l.g(cVar, "dialog");
        DialogTitleLayout dialogTitleLayout = this.f3994l;
        if (dialogTitleLayout == null) {
            l.v("titleLayout");
        }
        dialogTitleLayout.setDialog(cVar);
        DialogActionButtonLayout dialogActionButtonLayout = this.f3996n;
        if (dialogActionButtonLayout != null) {
            dialogActionButtonLayout.setDialog(cVar);
        }
    }

    public final void b(Canvas canvas, int i10, float f10, float f11, float f12, float f13, float f14) {
        canvas.drawRect(f11, f13, f12, f14, g(i10, f10));
    }

    public final void c(Canvas canvas, int i10, float f10, float f11) {
        f(canvas, i10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, getMeasuredWidth(), f10, f11);
    }

    public final void e(boolean z10, boolean z11) {
        DialogTitleLayout dialogTitleLayout = this.f3994l;
        if (dialogTitleLayout == null) {
            l.v("titleLayout");
        }
        dialogTitleLayout.setDrawDivider(z10);
        DialogActionButtonLayout dialogActionButtonLayout = this.f3996n;
        if (dialogActionButtonLayout != null) {
            dialogActionButtonLayout.setDrawDivider(z11);
        }
    }

    public final void f(Canvas canvas, int i10, float f10, float f11, float f12, float f13) {
        canvas.drawLine(f10, f12, f11, f13, h(this, i10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 2, null));
    }

    public final Paint g(int i10, float f10) {
        if (this.f3990h == null) {
            Paint paint = new Paint();
            paint.setStrokeWidth(d3.c.a(this, 1));
            paint.setStyle(Paint.Style.FILL);
            paint.setAntiAlias(true);
            this.f3990h = paint;
        }
        Paint paint2 = this.f3990h;
        if (paint2 == null) {
            l.p();
        }
        paint2.setColor(i10);
        setAlpha(f10);
        return paint2;
    }

    public final DialogActionButtonLayout getButtonsLayout() {
        return this.f3996n;
    }

    public final DialogContentLayout getContentLayout() {
        DialogContentLayout dialogContentLayout = this.f3995m;
        if (dialogContentLayout == null) {
            l.v("contentLayout");
        }
        return dialogContentLayout;
    }

    public final boolean getDebugMode() {
        return this.f3989g;
    }

    public final c getDialog() {
        c cVar = this.f3993k;
        if (cVar == null) {
            l.v("dialog");
        }
        return cVar;
    }

    public final int getFrameMarginVertical$com_afollestad_material_dialogs_core() {
        return this.f3991i;
    }

    public final int getFrameMarginVerticalLess$com_afollestad_material_dialogs_core() {
        return this.f3992j;
    }

    @Override // android.view.ViewGroup
    public final b getLayoutMode() {
        return this.f3997o;
    }

    public final int getMaxHeight() {
        return this.f3988f;
    }

    public final DialogTitleLayout getTitleLayout() {
        DialogTitleLayout dialogTitleLayout = this.f3994l;
        if (dialogTitleLayout == null) {
            l.v("titleLayout");
        }
        return dialogTitleLayout;
    }

    public final void i(Canvas canvas, int i10, float f10, float f11) {
        f(canvas, i10, f10, f11, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, getMeasuredHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Object systemService = getContext().getSystemService("window");
        if (systemService != null) {
            this.f3999q = e.f5611a.e((WindowManager) systemService).b().intValue();
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float measuredWidth;
        l.g(canvas, "canvas");
        super.onDraw(canvas);
        if (this.f3989g) {
            j(this, canvas, -16776961, d3.c.a(this, 24), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
            d(this, canvas, -16776961, d3.c.a(this, 24), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
            j(this, canvas, -16776961, getMeasuredWidth() - d3.c.a(this, 24), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
            DialogTitleLayout dialogTitleLayout = this.f3994l;
            if (dialogTitleLayout == null) {
                l.v("titleLayout");
            }
            if (f.e(dialogTitleLayout)) {
                if (this.f3994l == null) {
                    l.v("titleLayout");
                }
                d(this, canvas, -65536, r0.getBottom(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
            }
            DialogContentLayout dialogContentLayout = this.f3995m;
            if (dialogContentLayout == null) {
                l.v("contentLayout");
            }
            if (f.e(dialogContentLayout)) {
                if (this.f3995m == null) {
                    l.v("contentLayout");
                }
                d(this, canvas, -256, r0.getTop(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
            }
            if (a.a(this.f3996n)) {
                if (f.d(this)) {
                    measuredWidth = d3.c.a(this, 8);
                } else {
                    measuredWidth = getMeasuredWidth() - d3.c.a(this, 8);
                }
                j(this, canvas, -16711681, measuredWidth, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
                DialogActionButtonLayout dialogActionButtonLayout = this.f3996n;
                if (dialogActionButtonLayout != null && dialogActionButtonLayout.getStackButtons$com_afollestad_material_dialogs_core()) {
                    if (this.f3996n == null) {
                        l.p();
                    }
                    float top = r0.getTop() + d3.c.a(this, 8);
                    DialogActionButtonLayout dialogActionButtonLayout2 = this.f3996n;
                    if (dialogActionButtonLayout2 == null) {
                        l.p();
                    }
                    float f10 = top;
                    for (DialogActionButton dialogActionButton : dialogActionButtonLayout2.getVisibleButtons()) {
                        float a10 = f10 + d3.c.a(this, 36);
                        b(canvas, -16711681, 0.4f, dialogActionButton.getLeft(), getMeasuredWidth() - d3.c.a(this, 8), f10, a10);
                        f10 = a10 + d3.c.a(this, 16);
                    }
                    if (this.f3996n == null) {
                        l.p();
                    }
                    d(this, canvas, -16776961, r0.getTop(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
                    if (this.f3996n == null) {
                        l.p();
                    }
                    float top2 = r0.getTop() + d3.c.a(this, 8);
                    float measuredHeight = getMeasuredHeight() - d3.c.a(this, 8);
                    d(this, canvas, -65536, top2, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
                    d(this, canvas, -65536, measuredHeight, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
                    return;
                }
                DialogActionButtonLayout dialogActionButtonLayout3 = this.f3996n;
                if (dialogActionButtonLayout3 != null) {
                    if (dialogActionButtonLayout3 == null) {
                        l.p();
                    }
                    for (DialogActionButton dialogActionButton2 : dialogActionButtonLayout3.getVisibleButtons()) {
                        if (this.f3996n == null) {
                            l.p();
                        }
                        float top3 = r1.getTop() + dialogActionButton2.getTop() + d3.c.a(this, 8);
                        if (this.f3996n == null) {
                            l.p();
                        }
                        b(canvas, -16711681, 0.4f, dialogActionButton2.getLeft() + d3.c.a(this, 4), dialogActionButton2.getRight() - d3.c.a(this, 4), top3, r1.getBottom() - d3.c.a(this, 8));
                    }
                    if (this.f3996n == null) {
                        l.p();
                    }
                    d(this, canvas, -65281, r0.getTop(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
                    float measuredHeight2 = getMeasuredHeight() - (d3.c.a(this, 52) - d3.c.a(this, 8));
                    float measuredHeight3 = getMeasuredHeight() - d3.c.a(this, 8);
                    d(this, canvas, -65536, measuredHeight2, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
                    d(this, canvas, -65536, measuredHeight3, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
                    d(this, canvas, -16776961, measuredHeight2 - d3.c.a(this, 8), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 4, null);
                }
            }
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        View findViewById = findViewById(i.f13704k);
        l.b(findViewById, "findViewById(R.id.md_title_layout)");
        this.f3994l = (DialogTitleLayout) findViewById;
        View findViewById2 = findViewById(i.f13699f);
        l.b(findViewById2, "findViewById(R.id.md_content_layout)");
        this.f3995m = (DialogContentLayout) findViewById2;
        this.f3996n = (DialogActionButtonLayout) findViewById(i.f13694a);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int measuredHeight;
        int measuredWidth = getMeasuredWidth();
        DialogTitleLayout dialogTitleLayout = this.f3994l;
        if (dialogTitleLayout == null) {
            l.v("titleLayout");
        }
        int measuredHeight2 = dialogTitleLayout.getMeasuredHeight();
        DialogTitleLayout dialogTitleLayout2 = this.f3994l;
        if (dialogTitleLayout2 == null) {
            l.v("titleLayout");
        }
        dialogTitleLayout2.layout(0, 0, measuredWidth, measuredHeight2);
        if (this.f3998p) {
            int measuredHeight3 = getMeasuredHeight();
            DialogActionButtonLayout dialogActionButtonLayout = this.f3996n;
            measuredHeight = measuredHeight3 - (dialogActionButtonLayout != null ? dialogActionButtonLayout.getMeasuredHeight() : 0);
            if (a.a(this.f3996n)) {
                int measuredWidth2 = getMeasuredWidth();
                int measuredHeight4 = getMeasuredHeight();
                DialogActionButtonLayout dialogActionButtonLayout2 = this.f3996n;
                if (dialogActionButtonLayout2 == null) {
                    l.p();
                }
                dialogActionButtonLayout2.layout(0, measuredHeight, measuredWidth2, measuredHeight4);
            }
        } else {
            measuredHeight = getMeasuredHeight();
        }
        int measuredWidth3 = getMeasuredWidth();
        DialogContentLayout dialogContentLayout = this.f3995m;
        if (dialogContentLayout == null) {
            l.v("contentLayout");
        }
        dialogContentLayout.layout(0, measuredHeight2, measuredWidth3, measuredHeight);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int i12 = this.f3988f;
        if (1 <= i12 && size2 > i12) {
            size2 = i12;
        }
        DialogTitleLayout dialogTitleLayout = this.f3994l;
        if (dialogTitleLayout == null) {
            l.v("titleLayout");
        }
        dialogTitleLayout.measure(View.MeasureSpec.makeMeasureSpec(size, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(0, 0));
        if (a.a(this.f3996n)) {
            DialogActionButtonLayout dialogActionButtonLayout = this.f3996n;
            if (dialogActionButtonLayout == null) {
                l.p();
            }
            dialogActionButtonLayout.measure(View.MeasureSpec.makeMeasureSpec(size, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(0, 0));
        }
        DialogTitleLayout dialogTitleLayout2 = this.f3994l;
        if (dialogTitleLayout2 == null) {
            l.v("titleLayout");
        }
        int measuredHeight = dialogTitleLayout2.getMeasuredHeight();
        DialogActionButtonLayout dialogActionButtonLayout2 = this.f3996n;
        int measuredHeight2 = size2 - (measuredHeight + (dialogActionButtonLayout2 != null ? dialogActionButtonLayout2.getMeasuredHeight() : 0));
        DialogContentLayout dialogContentLayout = this.f3995m;
        if (dialogContentLayout == null) {
            l.v("contentLayout");
        }
        dialogContentLayout.measure(View.MeasureSpec.makeMeasureSpec(size, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(measuredHeight2, Integer.MIN_VALUE));
        if (this.f3997o == b.WRAP_CONTENT) {
            DialogTitleLayout dialogTitleLayout3 = this.f3994l;
            if (dialogTitleLayout3 == null) {
                l.v("titleLayout");
            }
            int measuredHeight3 = dialogTitleLayout3.getMeasuredHeight();
            DialogContentLayout dialogContentLayout2 = this.f3995m;
            if (dialogContentLayout2 == null) {
                l.v("contentLayout");
            }
            int measuredHeight4 = measuredHeight3 + dialogContentLayout2.getMeasuredHeight();
            DialogActionButtonLayout dialogActionButtonLayout3 = this.f3996n;
            setMeasuredDimension(size, measuredHeight4 + (dialogActionButtonLayout3 != null ? dialogActionButtonLayout3.getMeasuredHeight() : 0));
            return;
        }
        setMeasuredDimension(size, this.f3999q);
    }

    public final void setButtonsLayout(DialogActionButtonLayout dialogActionButtonLayout) {
        this.f3996n = dialogActionButtonLayout;
    }

    public final void setContentLayout(DialogContentLayout dialogContentLayout) {
        l.g(dialogContentLayout, "<set-?>");
        this.f3995m = dialogContentLayout;
    }

    public final void setDebugMode(boolean z10) {
        this.f3989g = z10;
        setWillNotDraw(!z10);
    }

    public final void setDialog(c cVar) {
        l.g(cVar, "<set-?>");
        this.f3993k = cVar;
    }

    public final void setLayoutMode(b bVar) {
        l.g(bVar, "<set-?>");
        this.f3997o = bVar;
    }

    public final void setMaxHeight(int i10) {
        this.f3988f = i10;
    }

    public final void setTitleLayout(DialogTitleLayout dialogTitleLayout) {
        l.g(dialogTitleLayout, "<set-?>");
        this.f3994l = dialogTitleLayout;
    }
}
