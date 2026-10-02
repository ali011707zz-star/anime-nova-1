package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;

/* compiled from: AppCompatEmojiEditTextHelper.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f1391a;

    /* renamed from: b, reason: collision with root package name */
    public final a1.a f1392b;

    public k(EditText editText) {
        this.f1391a = editText;
        this.f1392b = new a1.a(editText, false);
    }

    public KeyListener a(KeyListener keyListener) {
        return this.f1392b.a(keyListener);
    }

    public void b() {
        boolean isFocusable = this.f1391a.isFocusable();
        int inputType = this.f1391a.getInputType();
        EditText editText = this.f1391a;
        editText.setKeyListener(editText.getKeyListener());
        this.f1391a.setRawInputType(inputType);
        this.f1391a.setFocusable(isFocusable);
    }

    public boolean c() {
        return this.f1392b.b();
    }

    public void d(AttributeSet attributeSet, int i10) {
        TypedArray obtainStyledAttributes = this.f1391a.getContext().obtainStyledAttributes(attributeSet, d.j.f5357g0, i10, 0);
        try {
            int i11 = d.j.f5427u0;
            boolean z10 = obtainStyledAttributes.hasValue(i11) ? obtainStyledAttributes.getBoolean(i11, true) : true;
            obtainStyledAttributes.recycle();
            f(z10);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public InputConnection e(InputConnection inputConnection, EditorInfo editorInfo) {
        return this.f1392b.c(inputConnection, editorInfo);
    }

    public void f(boolean z10) {
        this.f1392b.d(z10);
    }
}
