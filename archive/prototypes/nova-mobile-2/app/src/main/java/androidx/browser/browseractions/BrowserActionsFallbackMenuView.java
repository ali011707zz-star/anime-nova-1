package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import o.a;
import org.apache.http.impl.auth.NTLMEngineImpl;

@Deprecated
/* loaded from: classes.dex */
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* renamed from: f, reason: collision with root package name */
    public final int f1598f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1599g;

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1598f = getResources().getDimensionPixelOffset(a.f11416b);
        this.f1599g = getResources().getDimensionPixelOffset(a.f11415a);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f1598f * 2), this.f1599g), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), i11);
    }
}
