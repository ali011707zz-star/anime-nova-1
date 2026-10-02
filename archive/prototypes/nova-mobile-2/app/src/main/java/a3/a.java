package a3;

import android.content.Context;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewGroup;
import d3.e;
import jc.l;
import s2.c;
import s2.f;
import s2.h;

/* compiled from: BaseSubLayout.kt */
/* loaded from: classes.dex */
public abstract class a extends ViewGroup {

    /* renamed from: f, reason: collision with root package name */
    public final Paint f364f;

    /* renamed from: g, reason: collision with root package name */
    public final int f365g;

    /* renamed from: h, reason: collision with root package name */
    public c f366h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f367i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.g(context, "context");
        Paint paint = new Paint();
        this.f364f = paint;
        e eVar = e.f5611a;
        int i10 = h.f13691n;
        this.f365g = eVar.c(this, i10);
        setWillNotDraw(false);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(context.getResources().getDimension(i10));
        paint.setAntiAlias(true);
    }

    private final int getDividerColor() {
        e eVar = e.f5611a;
        c cVar = this.f366h;
        if (cVar == null) {
            l.v("dialog");
        }
        Context context = cVar.getContext();
        l.b(context, "dialog.context");
        return e.l(eVar, context, null, Integer.valueOf(f.f13670n), null, 10, null);
    }

    public final Paint a() {
        this.f364f.setColor(getDividerColor());
        return this.f364f;
    }

    public final c getDialog() {
        c cVar = this.f366h;
        if (cVar == null) {
            l.v("dialog");
        }
        return cVar;
    }

    public final int getDividerHeight() {
        return this.f365g;
    }

    public final boolean getDrawDivider() {
        return this.f367i;
    }

    public final void setDialog(c cVar) {
        l.g(cVar, "<set-?>");
        this.f366h = cVar;
    }

    public final void setDrawDivider(boolean z10) {
        this.f367i = z10;
        invalidate();
    }
}
