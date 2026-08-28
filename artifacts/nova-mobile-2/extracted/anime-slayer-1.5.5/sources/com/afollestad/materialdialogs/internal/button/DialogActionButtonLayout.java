package com.afollestad.materialdialogs.internal.button;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import d3.e;
import d3.f;
import java.util.ArrayList;
import jc.g;
import jc.l;
import kotlin.TypeCastException;
import org.apache.http.impl.auth.NTLMEngineImpl;
import s2.h;
import s2.i;
import s2.m;

/* compiled from: DialogActionButtonLayout.kt */
/* loaded from: classes.dex */
public final class DialogActionButtonLayout extends a3.a {

    /* renamed from: r, reason: collision with root package name */
    public static final a f3973r = new a(null);

    /* renamed from: j, reason: collision with root package name */
    public final int f3974j;

    /* renamed from: k, reason: collision with root package name */
    public final int f3975k;

    /* renamed from: l, reason: collision with root package name */
    public final int f3976l;

    /* renamed from: m, reason: collision with root package name */
    public final int f3977m;

    /* renamed from: n, reason: collision with root package name */
    public final int f3978n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f3979o;

    /* renamed from: p, reason: collision with root package name */
    public DialogActionButton[] f3980p;

    /* renamed from: q, reason: collision with root package name */
    public AppCompatCheckBox f3981q;

    /* compiled from: DialogActionButtonLayout.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: DialogActionButtonLayout.kt */
    /* loaded from: classes.dex */
    public static final class b implements View.OnClickListener {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ m f3983g;

        public b(m mVar) {
            this.f3983g = mVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogActionButtonLayout.this.getDialog().t(this.f3983g);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogActionButtonLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.g(context, "context");
        e eVar = e.f5611a;
        this.f3974j = eVar.c(this, h.f13678a) - eVar.c(this, h.f13681d);
        this.f3975k = eVar.c(this, h.f13679b);
        this.f3976l = eVar.c(this, h.f13680c);
        this.f3977m = eVar.c(this, h.f13683f);
        this.f3978n = eVar.c(this, h.f13682e);
    }

    public final int b() {
        if (getVisibleButtons().length == 0) {
            return 0;
        }
        if (this.f3979o) {
            return this.f3976l * getVisibleButtons().length;
        }
        return this.f3976l;
    }

    public final DialogActionButton[] getActionButtons() {
        DialogActionButton[] dialogActionButtonArr = this.f3980p;
        if (dialogActionButtonArr == null) {
            l.v("actionButtons");
        }
        return dialogActionButtonArr;
    }

    public final AppCompatCheckBox getCheckBoxPrompt() {
        AppCompatCheckBox appCompatCheckBox = this.f3981q;
        if (appCompatCheckBox == null) {
            l.v("checkBoxPrompt");
        }
        return appCompatCheckBox;
    }

    public final boolean getStackButtons$com_afollestad_material_dialogs_core() {
        return this.f3979o;
    }

    public final DialogActionButton[] getVisibleButtons() {
        DialogActionButton[] dialogActionButtonArr = this.f3980p;
        if (dialogActionButtonArr == null) {
            l.v("actionButtons");
        }
        ArrayList arrayList = new ArrayList();
        for (DialogActionButton dialogActionButton : dialogActionButtonArr) {
            if (f.e(dialogActionButton)) {
                arrayList.add(dialogActionButton);
            }
        }
        Object[] array = arrayList.toArray(new DialogActionButton[0]);
        if (array != null) {
            return (DialogActionButton[]) array;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        l.g(canvas, "canvas");
        super.onDraw(canvas);
        if (getDrawDivider()) {
            canvas.drawLine(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, getMeasuredWidth(), getDividerHeight(), a());
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        View findViewById = findViewById(i.f13697d);
        l.b(findViewById, "findViewById(R.id.md_button_positive)");
        View findViewById2 = findViewById(i.f13695b);
        l.b(findViewById2, "findViewById(R.id.md_button_negative)");
        View findViewById3 = findViewById(i.f13696c);
        l.b(findViewById3, "findViewById(R.id.md_button_neutral)");
        this.f3980p = new DialogActionButton[]{(DialogActionButton) findViewById, (DialogActionButton) findViewById2, (DialogActionButton) findViewById3};
        View findViewById4 = findViewById(i.f13698e);
        l.b(findViewById4, "findViewById(R.id.md_checkbox_prompt)");
        this.f3981q = (AppCompatCheckBox) findViewById4;
        DialogActionButton[] dialogActionButtonArr = this.f3980p;
        if (dialogActionButtonArr == null) {
            l.v("actionButtons");
        }
        int length = dialogActionButtonArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            dialogActionButtonArr[i10].setOnClickListener(new b(m.f13717k.a(i10)));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int measuredWidth;
        int measuredHeight;
        if (y2.a.a(this)) {
            AppCompatCheckBox appCompatCheckBox = this.f3981q;
            if (appCompatCheckBox == null) {
                l.v("checkBoxPrompt");
            }
            if (f.e(appCompatCheckBox)) {
                if (f.d(this)) {
                    measuredWidth = getMeasuredWidth() - this.f3978n;
                    i15 = this.f3977m;
                    AppCompatCheckBox appCompatCheckBox2 = this.f3981q;
                    if (appCompatCheckBox2 == null) {
                        l.v("checkBoxPrompt");
                    }
                    i14 = measuredWidth - appCompatCheckBox2.getMeasuredWidth();
                    AppCompatCheckBox appCompatCheckBox3 = this.f3981q;
                    if (appCompatCheckBox3 == null) {
                        l.v("checkBoxPrompt");
                    }
                    measuredHeight = appCompatCheckBox3.getMeasuredHeight();
                } else {
                    i14 = this.f3978n;
                    i15 = this.f3977m;
                    AppCompatCheckBox appCompatCheckBox4 = this.f3981q;
                    if (appCompatCheckBox4 == null) {
                        l.v("checkBoxPrompt");
                    }
                    measuredWidth = appCompatCheckBox4.getMeasuredWidth() + i14;
                    AppCompatCheckBox appCompatCheckBox5 = this.f3981q;
                    if (appCompatCheckBox5 == null) {
                        l.v("checkBoxPrompt");
                    }
                    measuredHeight = appCompatCheckBox5.getMeasuredHeight();
                }
                int i16 = measuredHeight + i15;
                AppCompatCheckBox appCompatCheckBox6 = this.f3981q;
                if (appCompatCheckBox6 == null) {
                    l.v("checkBoxPrompt");
                }
                appCompatCheckBox6.layout(i14, i15, measuredWidth, i16);
            }
            if (this.f3979o) {
                int i17 = this.f3974j;
                int measuredWidth2 = getMeasuredWidth() - this.f3974j;
                int measuredHeight2 = getMeasuredHeight();
                for (DialogActionButton dialogActionButton : wb.i.u(getVisibleButtons())) {
                    int i18 = measuredHeight2 - this.f3976l;
                    dialogActionButton.layout(i17, i18, measuredWidth2, measuredHeight2);
                    measuredHeight2 = i18;
                }
                return;
            }
            int measuredHeight3 = getMeasuredHeight() - this.f3976l;
            int measuredHeight4 = getMeasuredHeight();
            if (f.d(this)) {
                DialogActionButton[] dialogActionButtonArr = this.f3980p;
                if (dialogActionButtonArr == null) {
                    l.v("actionButtons");
                }
                if (f.e(dialogActionButtonArr[2])) {
                    DialogActionButton[] dialogActionButtonArr2 = this.f3980p;
                    if (dialogActionButtonArr2 == null) {
                        l.v("actionButtons");
                    }
                    DialogActionButton dialogActionButton2 = dialogActionButtonArr2[2];
                    int measuredWidth3 = getMeasuredWidth() - this.f3975k;
                    dialogActionButton2.layout(measuredWidth3 - dialogActionButton2.getMeasuredWidth(), measuredHeight3, measuredWidth3, measuredHeight4);
                }
                int i19 = this.f3974j;
                DialogActionButton[] dialogActionButtonArr3 = this.f3980p;
                if (dialogActionButtonArr3 == null) {
                    l.v("actionButtons");
                }
                if (f.e(dialogActionButtonArr3[0])) {
                    DialogActionButton[] dialogActionButtonArr4 = this.f3980p;
                    if (dialogActionButtonArr4 == null) {
                        l.v("actionButtons");
                    }
                    DialogActionButton dialogActionButton3 = dialogActionButtonArr4[0];
                    int measuredWidth4 = dialogActionButton3.getMeasuredWidth() + i19;
                    dialogActionButton3.layout(i19, measuredHeight3, measuredWidth4, measuredHeight4);
                    i19 = measuredWidth4;
                }
                DialogActionButton[] dialogActionButtonArr5 = this.f3980p;
                if (dialogActionButtonArr5 == null) {
                    l.v("actionButtons");
                }
                if (f.e(dialogActionButtonArr5[1])) {
                    DialogActionButton[] dialogActionButtonArr6 = this.f3980p;
                    if (dialogActionButtonArr6 == null) {
                        l.v("actionButtons");
                    }
                    DialogActionButton dialogActionButton4 = dialogActionButtonArr6[1];
                    dialogActionButton4.layout(i19, measuredHeight3, dialogActionButton4.getMeasuredWidth() + i19, measuredHeight4);
                    return;
                }
                return;
            }
            DialogActionButton[] dialogActionButtonArr7 = this.f3980p;
            if (dialogActionButtonArr7 == null) {
                l.v("actionButtons");
            }
            if (f.e(dialogActionButtonArr7[2])) {
                DialogActionButton[] dialogActionButtonArr8 = this.f3980p;
                if (dialogActionButtonArr8 == null) {
                    l.v("actionButtons");
                }
                DialogActionButton dialogActionButton5 = dialogActionButtonArr8[2];
                int i20 = this.f3975k;
                dialogActionButton5.layout(i20, measuredHeight3, dialogActionButton5.getMeasuredWidth() + i20, measuredHeight4);
            }
            int measuredWidth5 = getMeasuredWidth() - this.f3974j;
            DialogActionButton[] dialogActionButtonArr9 = this.f3980p;
            if (dialogActionButtonArr9 == null) {
                l.v("actionButtons");
            }
            if (f.e(dialogActionButtonArr9[0])) {
                DialogActionButton[] dialogActionButtonArr10 = this.f3980p;
                if (dialogActionButtonArr10 == null) {
                    l.v("actionButtons");
                }
                DialogActionButton dialogActionButton6 = dialogActionButtonArr10[0];
                int measuredWidth6 = measuredWidth5 - dialogActionButton6.getMeasuredWidth();
                dialogActionButton6.layout(measuredWidth6, measuredHeight3, measuredWidth5, measuredHeight4);
                measuredWidth5 = measuredWidth6;
            }
            DialogActionButton[] dialogActionButtonArr11 = this.f3980p;
            if (dialogActionButtonArr11 == null) {
                l.v("actionButtons");
            }
            if (f.e(dialogActionButtonArr11[1])) {
                DialogActionButton[] dialogActionButtonArr12 = this.f3980p;
                if (dialogActionButtonArr12 == null) {
                    l.v("actionButtons");
                }
                DialogActionButton dialogActionButton7 = dialogActionButtonArr12[1];
                dialogActionButton7.layout(measuredWidth5 - dialogActionButton7.getMeasuredWidth(), measuredHeight3, measuredWidth5, measuredHeight4);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        if (!y2.a.a(this)) {
            setMeasuredDimension(0, 0);
            return;
        }
        int size = View.MeasureSpec.getSize(i10);
        AppCompatCheckBox appCompatCheckBox = this.f3981q;
        if (appCompatCheckBox == null) {
            l.v("checkBoxPrompt");
        }
        if (f.e(appCompatCheckBox)) {
            int i12 = size - (this.f3978n * 2);
            AppCompatCheckBox appCompatCheckBox2 = this.f3981q;
            if (appCompatCheckBox2 == null) {
                l.v("checkBoxPrompt");
            }
            appCompatCheckBox2.measure(View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        }
        Context context = getDialog().getContext();
        l.b(context, "dialog.context");
        Context i13 = getDialog().i();
        for (DialogActionButton dialogActionButton : getVisibleButtons()) {
            dialogActionButton.a(context, i13, this.f3979o);
            if (this.f3979o) {
                dialogActionButton.measure(View.MeasureSpec.makeMeasureSpec(size, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(this.f3976l, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
            } else {
                dialogActionButton.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(this.f3976l, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
            }
        }
        if ((!(getVisibleButtons().length == 0)) && !this.f3979o) {
            int i14 = 0;
            for (DialogActionButton dialogActionButton2 : getVisibleButtons()) {
                i14 += dialogActionButton2.getMeasuredWidth();
            }
            if (i14 >= size && !this.f3979o) {
                this.f3979o = true;
                for (DialogActionButton dialogActionButton3 : getVisibleButtons()) {
                    dialogActionButton3.a(context, i13, true);
                    dialogActionButton3.measure(View.MeasureSpec.makeMeasureSpec(size, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(this.f3976l, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
                }
            }
        }
        int b10 = b();
        AppCompatCheckBox appCompatCheckBox3 = this.f3981q;
        if (appCompatCheckBox3 == null) {
            l.v("checkBoxPrompt");
        }
        if (f.e(appCompatCheckBox3)) {
            AppCompatCheckBox appCompatCheckBox4 = this.f3981q;
            if (appCompatCheckBox4 == null) {
                l.v("checkBoxPrompt");
            }
            b10 += appCompatCheckBox4.getMeasuredHeight() + (this.f3977m * 2);
        }
        setMeasuredDimension(size, b10);
    }

    public final void setActionButtons(DialogActionButton[] dialogActionButtonArr) {
        l.g(dialogActionButtonArr, "<set-?>");
        this.f3980p = dialogActionButtonArr;
    }

    public final void setCheckBoxPrompt(AppCompatCheckBox appCompatCheckBox) {
        l.g(appCompatCheckBox, "<set-?>");
        this.f3981q = appCompatCheckBox;
    }

    public final void setStackButtons$com_afollestad_material_dialogs_core(boolean z10) {
        this.f3979o = z10;
    }
}
