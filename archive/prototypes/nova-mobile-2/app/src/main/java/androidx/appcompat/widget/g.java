package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;

/* compiled from: AppCompatCheckedTextView.java */
/* loaded from: classes.dex */
public class g extends CheckedTextView implements u0.l, q0.z {

    /* renamed from: f, reason: collision with root package name */
    public final h f1323f;

    /* renamed from: g, reason: collision with root package name */
    public final e f1324g;

    /* renamed from: h, reason: collision with root package name */
    public final y f1325h;

    /* renamed from: i, reason: collision with root package name */
    public l f1326i;

    public g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.a.f5200s);
    }

    private l getEmojiTextViewHelper() {
        if (this.f1326i == null) {
            this.f1326i = new l(this);
        }
        return this.f1326i;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        y yVar = this.f1325h;
        if (yVar != null) {
            yVar.b();
        }
        e eVar = this.f1324g;
        if (eVar != null) {
            eVar.b();
        }
        h hVar = this.f1323f;
        if (hVar != null) {
            hVar.a();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return u0.j.s(super.getCustomSelectionActionModeCallback());
    }

    @Override // q0.z
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1324g;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // q0.z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1324g;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        h hVar = this.f1323f;
        if (hVar != null) {
            return hVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        h hVar = this.f1323f;
        if (hVar != null) {
            return hVar.c();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return m.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1324g;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1324g;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        h hVar = this.f1323f;
        if (hVar != null) {
            hVar.e();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(u0.j.t(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
    }

    @Override // q0.z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1324g;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // q0.z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1324g;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    @Override // u0.l
    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        h hVar = this.f1323f;
        if (hVar != null) {
            hVar.f(colorStateList);
        }
    }

    @Override // u0.l
    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        h hVar = this.f1323f;
        if (hVar != null) {
            hVar.g(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        y yVar = this.f1325h;
        if (yVar != null) {
            yVar.q(context, i10);
        }
    }

    public g(Context context, AttributeSet attributeSet, int i10) {
        super(s0.b(context), attributeSet, i10);
        q0.a(this, getContext());
        y yVar = new y(this);
        this.f1325h = yVar;
        yVar.m(attributeSet, i10);
        yVar.b();
        e eVar = new e(this);
        this.f1324g = eVar;
        eVar.e(attributeSet, i10);
        h hVar = new h(this);
        this.f1323f = hVar;
        hVar.d(attributeSet, i10);
        getEmojiTextViewHelper().c(attributeSet, i10);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i10) {
        setCheckMarkDrawable(f.a.b(getContext(), i10));
    }
}
