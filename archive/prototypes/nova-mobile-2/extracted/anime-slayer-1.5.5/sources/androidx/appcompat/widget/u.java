package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;

/* compiled from: AppCompatSeekBar.java */
/* loaded from: classes.dex */
public class u extends SeekBar {

    /* renamed from: f, reason: collision with root package name */
    public final v f1490f;

    public u(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.a.N);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.f1490f.h();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f1490f.i();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f1490f.g(canvas);
    }

    public u(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        q0.a(this, getContext());
        v vVar = new v(this);
        this.f1490f = vVar;
        vVar.c(attributeSet, i10);
    }
}
