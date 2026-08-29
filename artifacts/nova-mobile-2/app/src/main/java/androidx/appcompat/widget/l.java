package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import a1.f;

/* compiled from: AppCompatEmojiTextHelper.java */
/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f1401a;

    /* renamed from: b, reason: collision with root package name */
    public final f f1402b;

    public l(TextView textView) {
        this.f1401a = textView;
        this.f1402b = new f(textView, false);
    }

    public InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f1402b.a(inputFilterArr);
    }

    public boolean b() {
        return this.f1402b.b();
    }

    public void c(AttributeSet attributeSet, int i10) {
        TypedArray obtainStyledAttributes = this.f1401a.getContext().obtainStyledAttributes(attributeSet, d.j.f5357g0, i10, 0);
        try {
            int i11 = d.j.f5427u0;
            boolean z10 = obtainStyledAttributes.hasValue(i11) ? obtainStyledAttributes.getBoolean(i11, true) : true;
            obtainStyledAttributes.recycle();
            e(z10);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void d(boolean z10) {
        this.f1402b.c(z10);
    }

    public void e(boolean z10) {
        this.f1402b.d(z10);
    }

    public TransformationMethod f(TransformationMethod transformationMethod) {
        return this.f1402b.e(transformationMethod);
    }
}
