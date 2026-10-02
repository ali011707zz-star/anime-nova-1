package a1;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;

/* compiled from: EmojiTransformationMethod.java */
/* loaded from: classes.dex */
public class h implements TransformationMethod {

    /* renamed from: f, reason: collision with root package name */
    public final TransformationMethod f363f;

    public h(TransformationMethod transformationMethod) {
        this.f363f = transformationMethod;
    }

    public TransformationMethod a() {
        return this.f363f;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f363f;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        return (charSequence == null || androidx.emoji2.text.d.b().d() != 1) ? charSequence : androidx.emoji2.text.d.b().o(charSequence);
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z10, int i10, Rect rect) {
        TransformationMethod transformationMethod = this.f363f;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z10, i10, rect);
        }
    }
}
