package r0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* compiled from: AccessibilityClickableSpanCompat.java */
/* loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* renamed from: f, reason: collision with root package name */
    public final int f12752f;

    /* renamed from: g, reason: collision with root package name */
    public final c f12753g;

    /* renamed from: h, reason: collision with root package name */
    public final int f12754h;

    public a(int i10, c cVar, int i11) {
        this.f12752f = i10;
        this.f12753g = cVar;
        this.f12754h = i11;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f12752f);
        this.f12753g.R(this.f12754h, bundle);
    }
}
