package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* compiled from: AppCompatToggleButton.java */
/* loaded from: classes.dex */
public class a0 extends ToggleButton implements q0.z {

    /* renamed from: f, reason: collision with root package name */
    public final e f1257f;

    /* renamed from: g, reason: collision with root package name */
    public final y f1258g;

    /* renamed from: h, reason: collision with root package name */
    public l f1259h;

    public a0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyleToggle);
    }

    private l getEmojiTextViewHelper() {
        if (this.f1259h == null) {
            this.f1259h = new l(this);
        }
        return this.f1259h;
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1257f;
        if (eVar != null) {
            eVar.b();
        }
        y yVar = this.f1258g;
        if (yVar != null) {
            yVar.b();
        }
    }

    @Override // q0.z
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1257f;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // q0.z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1257f;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1257f;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1257f;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // q0.z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1257f;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // q0.z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1257f;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    public a0(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        q0.a(this, getContext());
        e eVar = new e(this);
        this.f1257f = eVar;
        eVar.e(attributeSet, i10);
        y yVar = new y(this);
        this.f1258g = yVar;
        yVar.m(attributeSet, i10);
        getEmojiTextViewHelper().c(attributeSet, i10);
    }
}
