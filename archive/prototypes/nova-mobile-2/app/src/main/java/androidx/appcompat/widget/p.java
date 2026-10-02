package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;

/* compiled from: AppCompatMultiAutoCompleteTextView.java */
/* loaded from: classes.dex */
public class p extends MultiAutoCompleteTextView implements q0.z {

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f1447i = {R.attr.popupBackground};

    /* renamed from: f, reason: collision with root package name */
    public final e f1448f;

    /* renamed from: g, reason: collision with root package name */
    public final y f1449g;

    /* renamed from: h, reason: collision with root package name */
    public final k f1450h;

    public p(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.a.f5197p);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1448f;
        if (eVar != null) {
            eVar.b();
        }
        y yVar = this.f1449g;
        if (yVar != null) {
            yVar.b();
        }
    }

    @Override // q0.z
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1448f;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // q0.z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1448f;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return this.f1450h.e(m.a(super.onCreateInputConnection(editorInfo), editorInfo, this), editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1448f;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1448f;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i10) {
        setDropDownBackgroundDrawable(f.a.b(getContext(), i10));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        this.f1450h.f(z10);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f1450h.a(keyListener));
    }

    @Override // q0.z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1448f;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // q0.z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1448f;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        y yVar = this.f1449g;
        if (yVar != null) {
            yVar.q(context, i10);
        }
    }

    public p(Context context, AttributeSet attributeSet, int i10) {
        super(s0.b(context), attributeSet, i10);
        q0.a(this, getContext());
        v0 v10 = v0.v(getContext(), attributeSet, f1447i, i10, 0);
        if (v10.s(0)) {
            setDropDownBackgroundDrawable(v10.g(0));
        }
        v10.w();
        e eVar = new e(this);
        this.f1448f = eVar;
        eVar.e(attributeSet, i10);
        y yVar = new y(this);
        this.f1449g = yVar;
        yVar.m(attributeSet, i10);
        yVar.b();
        k kVar = new k(this);
        this.f1450h = kVar;
        kVar.d(attributeSet, i10);
        kVar.b();
    }
}
