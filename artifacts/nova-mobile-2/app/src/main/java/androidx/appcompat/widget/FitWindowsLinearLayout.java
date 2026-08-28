package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.appcompat.widget.f0;

/* loaded from: classes.dex */
public class FitWindowsLinearLayout extends LinearLayout implements f0 {

    /* renamed from: f, reason: collision with root package name */
    public f0.a f1177f;

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        f0.a aVar = this.f1177f;
        if (aVar != null) {
            aVar.a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.f0
    public void setOnFitSystemWindowsListener(f0.a aVar) {
        this.f1177f = aVar;
    }
}
