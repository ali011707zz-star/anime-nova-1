package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;

/* compiled from: AppCompatTextClassifierHelper.java */
/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public TextView f1526a;

    /* renamed from: b, reason: collision with root package name */
    public TextClassifier f1527b;

    public x(TextView textView) {
        this.f1526a = (TextView) p0.i.g(textView);
    }

    public TextClassifier a() {
        TextClassifier textClassifier = this.f1527b;
        if (textClassifier != null) {
            return textClassifier;
        }
        TextClassificationManager textClassificationManager = (TextClassificationManager) this.f1526a.getContext().getSystemService(TextClassificationManager.class);
        if (textClassificationManager != null) {
            return textClassificationManager.getTextClassifier();
        }
        return TextClassifier.NO_OP;
    }

    public void b(TextClassifier textClassifier) {
        this.f1527b = textClassifier;
    }
}
