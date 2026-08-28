package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AlertController;
import com.google.android.material.progressindicator.BaseProgressIndicator;

/* compiled from: AlertDialog.java */
/* loaded from: classes.dex */
public class d extends e.b {

    /* renamed from: f, reason: collision with root package name */
    public final AlertController f813f;

    /* compiled from: AlertDialog.java */
    /* loaded from: classes.dex */
    public static class a {
        private final AlertController.f P;
        private final int mTheme;

        public a(Context context) {
            this(context, d.c(context, 0));
        }

        public d create() {
            d dVar = new d(this.P.f753a, this.mTheme);
            this.P.a(dVar.f813f);
            dVar.setCancelable(this.P.f770r);
            if (this.P.f770r) {
                dVar.setCanceledOnTouchOutside(true);
            }
            dVar.setOnCancelListener(this.P.f771s);
            dVar.setOnDismissListener(this.P.f772t);
            DialogInterface.OnKeyListener onKeyListener = this.P.f773u;
            if (onKeyListener != null) {
                dVar.setOnKeyListener(onKeyListener);
            }
            return dVar;
        }

        public Context getContext() {
            return this.P.f753a;
        }

        public a setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f775w = listAdapter;
            fVar.f776x = onClickListener;
            return this;
        }

        public a setCancelable(boolean z10) {
            this.P.f770r = z10;
            return this;
        }

        public a setCursor(Cursor cursor, DialogInterface.OnClickListener onClickListener, String str) {
            AlertController.f fVar = this.P;
            fVar.K = cursor;
            fVar.L = str;
            fVar.f776x = onClickListener;
            return this;
        }

        public a setCustomTitle(View view) {
            this.P.f759g = view;
            return this;
        }

        public a setIcon(int i10) {
            this.P.f755c = i10;
            return this;
        }

        public a setIconAttribute(int i10) {
            TypedValue typedValue = new TypedValue();
            this.P.f753a.getTheme().resolveAttribute(i10, typedValue, true);
            this.P.f755c = typedValue.resourceId;
            return this;
        }

        @Deprecated
        public a setInverseBackgroundForced(boolean z10) {
            this.P.N = z10;
            return this;
        }

        public a setItems(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f774v = fVar.f753a.getResources().getTextArray(i10);
            this.P.f776x = onClickListener;
            return this;
        }

        public a setMessage(int i10) {
            AlertController.f fVar = this.P;
            fVar.f760h = fVar.f753a.getText(i10);
            return this;
        }

        public a setMultiChoiceItems(int i10, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.f fVar = this.P;
            fVar.f774v = fVar.f753a.getResources().getTextArray(i10);
            AlertController.f fVar2 = this.P;
            fVar2.J = onMultiChoiceClickListener;
            fVar2.F = zArr;
            fVar2.G = true;
            return this;
        }

        public a setNegativeButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f764l = fVar.f753a.getText(i10);
            this.P.f766n = onClickListener;
            return this;
        }

        public a setNegativeButtonIcon(Drawable drawable) {
            this.P.f765m = drawable;
            return this;
        }

        public a setNeutralButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f767o = fVar.f753a.getText(i10);
            this.P.f769q = onClickListener;
            return this;
        }

        public a setNeutralButtonIcon(Drawable drawable) {
            this.P.f768p = drawable;
            return this;
        }

        public a setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.P.f771s = onCancelListener;
            return this;
        }

        public a setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.P.f772t = onDismissListener;
            return this;
        }

        public a setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.P.O = onItemSelectedListener;
            return this;
        }

        public a setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
            this.P.f773u = onKeyListener;
            return this;
        }

        public a setPositiveButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f761i = fVar.f753a.getText(i10);
            this.P.f763k = onClickListener;
            return this;
        }

        public a setPositiveButtonIcon(Drawable drawable) {
            this.P.f762j = drawable;
            return this;
        }

        public a setRecycleOnMeasureEnabled(boolean z10) {
            this.P.Q = z10;
            return this;
        }

        public a setSingleChoiceItems(int i10, int i11, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f774v = fVar.f753a.getResources().getTextArray(i10);
            AlertController.f fVar2 = this.P;
            fVar2.f776x = onClickListener;
            fVar2.I = i11;
            fVar2.H = true;
            return this;
        }

        public a setTitle(int i10) {
            AlertController.f fVar = this.P;
            fVar.f758f = fVar.f753a.getText(i10);
            return this;
        }

        public a setView(int i10) {
            AlertController.f fVar = this.P;
            fVar.f778z = null;
            fVar.f777y = i10;
            fVar.E = false;
            return this;
        }

        public d show() {
            d create = create();
            create.show();
            return create;
        }

        public a(Context context, int i10) {
            this.P = new AlertController.f(new ContextThemeWrapper(context, d.c(context, i10)));
            this.mTheme = i10;
        }

        public a setIcon(Drawable drawable) {
            this.P.f756d = drawable;
            return this;
        }

        public a setMessage(CharSequence charSequence) {
            this.P.f760h = charSequence;
            return this;
        }

        public a setTitle(CharSequence charSequence) {
            this.P.f758f = charSequence;
            return this;
        }

        public a setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f774v = charSequenceArr;
            fVar.f776x = onClickListener;
            return this;
        }

        public a setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f764l = charSequence;
            fVar.f766n = onClickListener;
            return this;
        }

        public a setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f767o = charSequence;
            fVar.f769q = onClickListener;
            return this;
        }

        public a setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f761i = charSequence;
            fVar.f763k = onClickListener;
            return this;
        }

        public a setView(View view) {
            AlertController.f fVar = this.P;
            fVar.f778z = view;
            fVar.f777y = 0;
            fVar.E = false;
            return this;
        }

        public a setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.f fVar = this.P;
            fVar.f774v = charSequenceArr;
            fVar.J = onMultiChoiceClickListener;
            fVar.F = zArr;
            fVar.G = true;
            return this;
        }

        public a setSingleChoiceItems(Cursor cursor, int i10, String str, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.K = cursor;
            fVar.f776x = onClickListener;
            fVar.I = i10;
            fVar.L = str;
            fVar.H = true;
            return this;
        }

        @Deprecated
        public a setView(View view, int i10, int i11, int i12, int i13) {
            AlertController.f fVar = this.P;
            fVar.f778z = view;
            fVar.f777y = 0;
            fVar.E = true;
            fVar.A = i10;
            fVar.B = i11;
            fVar.C = i12;
            fVar.D = i13;
            return this;
        }

        public a setMultiChoiceItems(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.f fVar = this.P;
            fVar.K = cursor;
            fVar.J = onMultiChoiceClickListener;
            fVar.M = str;
            fVar.L = str2;
            fVar.G = true;
            return this;
        }

        public a setSingleChoiceItems(CharSequence[] charSequenceArr, int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f774v = charSequenceArr;
            fVar.f776x = onClickListener;
            fVar.I = i10;
            fVar.H = true;
            return this;
        }

        public a setSingleChoiceItems(ListAdapter listAdapter, int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.f775w = listAdapter;
            fVar.f776x = onClickListener;
            fVar.I = i10;
            fVar.H = true;
            return this;
        }
    }

    public d(Context context, int i10) {
        super(context, c(context, i10));
        this.f813f = new AlertController(getContext(), this, getWindow());
    }

    public static int c(Context context, int i10) {
        if (((i10 >>> 24) & BaseProgressIndicator.MAX_ALPHA) >= 1) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(d.a.f5196o, typedValue, true);
        return typedValue.resourceId;
    }

    public Button a(int i10) {
        return this.f813f.c(i10);
    }

    public ListView b() {
        return this.f813f.e();
    }

    @Override // e.b, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f813f.f();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (this.f813f.h(i10, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (this.f813f.i(i10, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @Override // e.b, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f813f.r(charSequence);
    }
}
